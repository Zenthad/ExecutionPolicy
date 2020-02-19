$currentExecutionPolicy = Get-ExecutionPolicy
$ExecutionPolicyOptions = New-Object -TypeName System.String "Unrestricted, RemoteSigned, AllSigned, Restricted, Default, Bypass, Undefined"

Write-Host -ForegroundColor Magenta "This tool is designed to simplify setting the PowerShell script execution policy on the machine it is executed on."
Write-Host -ForegroundColor Red "This tool must be run as ADMINISTRATOR."

Pause

Write-Host -ForegroundColor Yellow "This machine's current PowerShell script execution policy is set to $currentExecutionPolicy"

Pause

Write-Host -ForegroundColor Magenta "these are your PowerShell script execution policies to choose from:"

Write-Host $ExecutionPolicyOptions

Pause

$policyToSet = Read-Host -Prompt 'Enter the PowerShell script execution policy you would like to set on this machine'

Set-ExecutionPolicy -Force $policyToSet -Confirm

Write-Host -ForegroundColor Yellow "This machine's current PowerShell script execution policy is set to $currentExecutionPolicy"

Pause
