
# Imports
from python_datapack.continuous_delivery import load_credentials, upload_to_github

# Get credentials
credentials: dict[str, str] = load_credentials("~/python_datapack/credentials.yml")

## Uploads
# Upload to GitHub
from continuous_delivery.github_config import github_config
changelog: str = upload_to_github(credentials, github_config)

