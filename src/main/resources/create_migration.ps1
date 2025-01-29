# Generate a unique timestamp with milliseconds
$timestamp = Get-Date -Format "yyyyMMddHHmmssfff"

# Prompt user for migration description
$description = Read-Host "Enter migration description"

# Format the description (remove spaces and special characters)
$formatted_description = $description -replace " ", "_" -replace "[^a-zA-Z0-9_]", ""

# Define migration file name
$filename = "V${timestamp}__${formatted_description}.sql"

# Create the migration file in db/migration
New-Item -ItemType File -Path ".\db\migration\$filename" -Force

# Print success message
Write-Host "Created migration: $filename"
