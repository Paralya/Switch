""" Reusable one-shot generator: migrate a raw merge function folder to a src/<folder> package.
    Emits src/<folder>/main.py (verbatim functions, translation refs relocated like modes) and
    src/<folder>/translations.py for any switch:translations/<folder>_* files.
    Usage: python _gen_folder.py <folder>
    Verbatim is byte-exact (reads originals); raw strings are used when content has backslashes. """
import glob
import os
import re
import sys

NL = chr(10)
BS = chr(92)
FUNC = "merge/datapack/data/switch/function"
TRANS = f"{FUNC}/translations"


def norm(p):
	return p.replace(BS, "/")


def read(path):
	return open(path, encoding="utf-8").read().replace(chr(13) + chr(10), NL)


def lit(content, indent="\t"):
	""" Return a python string literal (raw triple-quoted if it has backslashes). """
	body = content.strip(NL)
	if '"""' in body:
		raise SystemExit("content contains triple-quote: " + body[:60])
	prefix = "r" if BS in body else ""
	return prefix + '"""' + NL + body + NL + '"""'


def main():
	folder = sys.argv[1]
	pkg = f"src/{folder}"
	os.makedirs(pkg, exist_ok=True)

	# ---- translations owned by this folder: switch:translations/<folder>_* ----
	tr_files = []
	for p in sorted(glob.glob(f"{TRANS}/{folder}_*.mcfunction")):
		name = norm(p).split("/")[-1].replace(".mcfunction", "")
		suffix = name[len(folder) + 1:]
		tr_files.append((suffix, read(p)))

	has_tr = bool(tr_files)
	if has_tr:
		out = ["", "# Imports", "from stewbeet import write_function", "", "",
			   "def write_translations() -> None:",
			   f'\t""" Write the {folder} translation functions at switch:{folder}/translations/* """',
			   f'\tpath: str = "switch:{folder}/translations"', ""]
		for suffix, content in tr_files:
			out.append(f"\t# /{suffix}")
			out.append(f'\twrite_function(f"{{path}}/{suffix}", {lit(content)})')
			out.append("")
		open(f"{pkg}/translations.py", "w", encoding="utf-8").write(NL.join(out).rstrip(NL) + NL)

	# ---- functions ----
	funcs = []
	for p in sorted(glob.glob(f"{FUNC}/{folder}/**/*.mcfunction", recursive=True)):
		rel = norm(p).split(f"/{folder}/", 1)[1].replace(".mcfunction", "")
		content = read(p)
		# relocate this folder's own translation refs (modes-style)
		content = content.replace(f"switch:translations/{folder}_", f"switch:{folder}/translations/")
		funcs.append((rel, content))

	out = ["", "# Imports", "import stouputils as stp", "from stewbeet import write_function", ""]
	if has_tr:
		out.append("from .translations import write_translations")
		out.append("")
	out += ["", f'@stp.measure_time(message="Generated {folder} files")', "def main() -> None:",
			f'\tpath: str = "switch:{folder}"']
	if has_tr:
		out.append("\twrite_translations()")
	out.append("")
	for rel, content in funcs:
		out.append(f"\t# /{rel}")
		out.append(f'\twrite_function(f"{{path}}/{rel}", {lit(content)})')
		out.append("")
	open(f"{pkg}/main.py", "w", encoding="utf-8").write(NL.join(out).rstrip(NL) + NL)

	print(f"{folder}: {len(funcs)} functions, {len(tr_files)} translations -> {pkg}/")
	for suffix, _ in tr_files:
		print("   translation:", suffix)


if __name__ == "__main__":
	main()
