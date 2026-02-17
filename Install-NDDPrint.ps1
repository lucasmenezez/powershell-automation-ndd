# Script: Automated NDD Print Agent Deployment
# Description: Silent installation and configuration of the agent via Intune/SCCM
# Author: Lucas Menezes
# LinkedIn: linkedin.com/in/lucasmenezez
# GitHub: github.com/lucasmenezez

# 0. Initial Configurations and Logging
$LogPath = "C:\Windows\Temp\NDD_Install_Log.txt"
$MSIName = "nddPrintAgentSetup-x64_5.24.18.msi"
$ConfigName = "nddprint.ini"
$DestPath = "C:\Program Files\NDDPrint\Agent"
$CurrentDir = $PSScriptRoot # Ensures the script locates files in the same folder

Start-Transcript -Path $LogPath -Append

Write-Output "--- Starting Installation: $(Get-Date) ---"

# 1. MSI Installation Execution
Write-Output "Step 1: Installing $MSIName..."
$MSIArgs = "/i `"$CurrentDir\$MSIName`" /qn /norestart /L*V `"C:\Windows\Temp\msi_ndd.log`""
$Process = Start-Process "msiexec.exe" -ArgumentList $MSIArgs -Wait -PassThru

if ($Process.ExitCode -ne 0) {
    Write-Output "Installation error. Exit Code: $($Process.ExitCode)"
}

# 2. Directory Verification and Creation
if (!(Test-Path $DestPath)) { 
    Write-Output "Step 2: Creating destination directory..."
    New-Item -ItemType Directory -Path $DestPath -Force | Out-Null
}

# 3. Configuration File (.ini) Deployment
Write-Output "Step 3: Applying network configurations (.ini)..."
if (Test-Path "$CurrentDir\$ConfigName") {
    Copy-Item -Path "$CurrentDir\$ConfigName" -Destination "$DestPath\$ConfigName" -Force
    
    if (Test-Path "$DestPath\$ConfigName") {
        Write-Output "Success: Configuration applied correctly."
    } else {
        Write-Output "Error: Failed to copy the configuration file."
    }
} else {
    Write-Output "Error: File $ConfigName not found in the installation package."
}

Write-Output "--- Process Finished: $(Get-Date) ---"
Stop-Transcript
