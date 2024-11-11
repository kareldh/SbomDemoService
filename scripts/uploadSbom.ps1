param (
    [string]$filePath,
    [string]$uploadUrl,
    [string]$apiKey,
    [string]$projectUuid,
    [string]$projectName,
    [string]$projectVersion
)

# Read the contents of the file with default Windows-1252 encoding
$fileContents = Get-Content -Path "$filePath" -Encoding Default -Raw
# Convert to UTF-8 and encode in Base64
$utf8Encoded = [System.Text.Encoding]::UTF8.GetBytes($fileContents)
$base64Contents = [System.Convert]::ToBase64String($utf8Encoded)

$headers = @{
    "Content-Type" = "application/json"
    "X-API-Key" = "$apiKey"
}

if (-not ([string]::IsNullOrEmpty($projectUuid)))
{
    $body = @{
        project = "$projectUuid"
        bom = "$base64Contents"
    } | ConvertTo-Json

    # Send the PUT request to upload the SBOM file
    Invoke-WebRequest -Uri "$uploadUrl" -Method Put -Body $body -Headers $headers
}
elseif (-not ([string]::IsNullOrEmpty($projectName)) -and -not ([string]::IsNullOrEmpty($projectVersion)))
{
    $body = @{
        projectName = "$projectName"
        projectVersion = "$projectVersion"
        autoCreate = "true"
        bom = "$base64Contents"
    } | ConvertTo-Json

    # Send the PUT request to upload the SBOM file
    Invoke-WebRequest -Uri "$uploadUrl" -Method Put -Body $body -Headers $headers
}
else
{
    throw "Either provide a projectUuid or provide both projectName and projectVersion. [projectUuid: $projectUuid, projectName: $projectName, projectVersion: $projectVersion]"
}