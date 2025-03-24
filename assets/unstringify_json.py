
# Imports
import os
import re
import glob
from pathlib import Path
import stouputils as stp

def process_file(file_path):
    """Process a single file to unstringify JSON strings.
    
    Args:
        file_path (str): Path to the file to process.
        
    Returns:
        bool: True if the file was modified, False otherwise.
    """    
    # Read the file content
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Original content for comparison
    original_content = content
    
    # Function to find and replace stringified JSON
    def replace_stringified_json(match):
        prefix = match.group(1)
        json_content = match.group(2) or match.group(3)
        if json_content:
            return f"{prefix}{json_content}"
        return match.group(0)
    
    # Pattern for item_name='{"text":"...",...}' or similar structures
    # Handles nested quotes and complex JSON content
    pattern_item_name = r'(item_name=)\'(\{(?:[^\'{}]|\"(?:\\.|[^\"])*\"|\{(?:[^\'{}]|\"(?:\\.|[^\"])*\")*\})*\})\'|(item_name=)\'(\{(?:[^\'{}]|\"(?:\\.|[^\"])*\"|\{(?:[^\'{}]|\"(?:\\.|[^\"])*\")*\})*\})\''
    
    # Pattern for lore=['{"text":"...",...}', ...] or similar structures
    pattern_lore = r'(lore=)\'(\[(?:[^\'\[\]]|\"(?:\\.|[^\"])*\"|\[(?:[^\'\[\]]|\"(?:\\.|[^\"])*\")*\])*\])\'|(lore=)\'(\[(?:[^\'\[\]]|\"(?:\\.|[^\"])*\"|\[(?:[^\'\[\]]|\"(?:\\.|[^\"])*\")*\])*\])\''
    
    # Apply replacements
    content = re.sub(pattern_item_name, replace_stringified_json, content)
    content = re.sub(pattern_lore, replace_stringified_json, content)
    
    # If content has changed, write it back to the file
    if content != original_content:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        stp.info(f"✓ Updated '{file_path}'\n")
        return True
    
    return False

def process_file_line_by_line(file_path):
    """Process a file line by line to handle complex cases.
    
    This alternative approach processes each line separately, which can be more 
    reliable for complex files where regex might struggle with the entire content.
    
    Args:
        file_path (str): Path to the file to process.
        
    Returns:
        bool: True if the file was modified, False otherwise.
    """
    try:
        # Read all lines from the file
        with open(file_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        
        modified = False
        for i, line in enumerate(lines):
            # Process item_name
            if "item_name='" in line:
                # Find the starting position of item_name='
                start_idx = line.find("item_name='")
                if start_idx != -1:
                    # Find the closing quote position
                    # We need to handle the case where the JSON itself contains quotes
                    start_content = start_idx + 11  # length of "item_name='"
                    nest_level = 0
                    end_idx = -1
                    
                    for j in range(start_content, len(line)):
                        if line[j] == '{':
                            nest_level += 1
                        elif line[j] == '}':
                            nest_level -= 1
                            # If we've closed all braces and the next char is a quote, we've found our end
                            if nest_level == 0 and j+1 < len(line) and line[j+1] == "'":
                                end_idx = j+1
                                break
                    
                    if end_idx != -1:
                        # Replace the stringified JSON
                        original = line[start_idx:end_idx+1]
                        replacement = original.replace("item_name='", "item_name=").replace("'", "", 1)
                        lines[i] = line.replace(original, replacement)
                        modified = True
            
            # Process custom_name
            if "custom_name='" in line:
                # Find the starting position of custom_name='
                start_idx = line.find("custom_name='")
                if start_idx != -1:
                    # Find the closing quote position
                    # We need to handle the case where the JSON itself contains quotes
                    start_content = start_idx + 13  # length of "custom_name='"
                    nest_level = 0
                    end_idx = -1
                    
                    for j in range(start_content, len(line)):
                        if line[j] == '{':
                            nest_level += 1
                        elif line[j] == '}':
                            nest_level -= 1
                            # If we've closed all braces and the next char is a quote, we've found our end
                            if nest_level == 0 and j+1 < len(line) and line[j+1] == "'":
                                end_idx = j+1
                                break
                    
                    if end_idx != -1:
                        # Replace the stringified JSON
                        original = line[start_idx:end_idx+1]
                        replacement = original.replace("custom_name='", "custom_name=").replace("'", "", 1)
                        lines[i] = line.replace(original, replacement)
                        modified = True
            
            # Process lore
            if "lore=['" in line:
                # Find the starting position of lore=['
                start_idx = line.find("lore=['")
                if start_idx != -1:
                    # Find the closing quote position
                    start_content = start_idx + 7  # length of "lore=['"
                    nest_level = 0
                    end_idx = -1
                    
                    for j in range(start_content, len(line)):
                        if line[j] == '[':
                            nest_level += 1
                        elif line[j] == ']':
                            nest_level -= 1
                            # If we've closed all brackets and the next char is a quote, we've found our end
                            if nest_level == -1 and j-1 >= 0 and line[j-1] == "'":
                                end_idx = j
                                break
                    
                    if end_idx != -1:
                        # Replace the stringified JSON
                        original = line[start_idx:end_idx+1]
                        replacement = original.replace("lore=['", "lore=[").replace("']", "]")
                        lines[i] = line.replace(original, replacement)
                        modified = True
            
            # Process lore with multiple JSON elements
            if "lore=['" in line and "','" in line:
                start_idx = line.find("lore=['")
                if start_idx != -1:
                    # Find the closing bracket position
                    start_content = start_idx + 7  # length of "lore=['"
                    nest_level = 1  # We start inside the outer brackets
                    end_idx = -1
                    
                    for j in range(start_content, len(line)):
                        if line[j] == '[':
                            nest_level += 1
                        elif line[j] == ']':
                            nest_level -= 1
                            if nest_level == 0:  # We've found the closing bracket of the lore array
                                end_idx = j
                                break
                    
                    if end_idx != -1:
                        # Replace the stringified JSON list
                        original = line[start_idx:end_idx+1]
                        # Remove the outer quotes but keep the inner structure
                        replacement = original.replace("lore=['", "lore=[")
                        replacement = replacement.replace("']", "]")
                        # Remove quotes around commas between list items
                        replacement = replacement.replace("','", ",")
                        lines[i] = line.replace(original, replacement)
                        modified = True
        
        # If changes were made, write the file back
        if modified:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.writelines(lines)
            stp.info(f"✓ Updated '{file_path}'\n")
            return True
        
        return False
    except Exception as e:
        stp.error(f"Error processing '{file_path}': {e}")
        return False

def find_and_process_files(directory, file_pattern="*.mcfunction"):
    """Find files matching the pattern and process them.
    
    Args:
        directory (str): Directory to search for files.
        file_pattern (str): Glob pattern to match files.
        
    Returns:
        tuple: (Total files processed, Number of files modified)
    """
    modified_count = 0
    total_count = 0
    
    # Get absolute path for the directory
    directory = stp.clean_path(os.path.abspath(directory))
    stp.info(f"Searching for files in '{directory}'")
    
    # Find all matching files
    pattern = os.path.join(directory, "**", file_pattern)
    matching_files = glob.glob(pattern, recursive=True)
    
    # Process each file
    returns: list[bool] = stp.multithreading(process_file_line_by_line, matching_files, desc="Unstringifying JSON", verbose=1)
    total_count = len(returns)
    modified_count = sum(returns)
    
    return total_count, modified_count

def main():
    """Main function to run the script."""
    # Get the current directory
    current_dir = stp.get_root_path(__file__)
    
    # Process files in the datapack directory
    find_and_process_files(f"{current_dir}/../merge")
    
    stp.info("JSON unstringification complete!")

if __name__ == "__main__":
    main()

