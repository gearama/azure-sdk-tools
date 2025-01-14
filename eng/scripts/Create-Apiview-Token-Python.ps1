[CmdletBinding()]
param (
  [Parameter(Mandatory = $true)]
  [string]$SourcePath,
  [Parameter(Mandatory = $true)]
  [string]$OutPath
)

Write-Host "Generating API review token file: $($SourcePath)"
python -m apistub --pkg-path $SourcePath --emit-cross-language-definition-id --out-path $OutPath