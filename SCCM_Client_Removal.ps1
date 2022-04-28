###############################################################################################################
#
# ABOUT THIS PROGRAM
#
#   SCCM_Client_Removal.ps1
#   https://github.com/Headbolt/SCCM_Client_Removal
#
#   This script was designed to Check for the existence of the SCCM Client
#	and then exit with an appropriate Exit code.
#
#	Intended use is in Microsoft Endpoint Manager, as the "Check" half of a Proactive Remediation Script
#
###############################################################################################################
#
# HISTORY
#
#   Version: 1.0 - 28/04/2022
#
#   - 28/04/2022 - V1.0 - Created by Headbolt
#
###############################################################################################################
#
Write-Host
Write-Host '###############################################################################################################'
Write-Host
$Path="c:\windows\ccmsetup\ccmsetup.exe"
$PathTest=(Test-Path $Path)
#
Write-Host 'Checking For File' $Path	
Write-Host
Write-Host '###############################################################################################################'
Write-Host
#
If ($PathTest -eq $True)
{
	Write-Host 'File' $Path 'Exists'
	Write-Host
	Write-Host '###############################################################################################################'
	Write-Host
	Write-Host 'Uninstalling'
	Write-Host
	Write-Host 'Running Command' $Path '/uninstall'
	Write-Host
	& $Path "/uninstall"
	Write-Host 'Uninstall Completed'
	Write-Host
	Write-Host '###############################################################################################################'
	Exit 0
}
Else
{
	Write-Host 'File' $Path 'Does Not Exist'
	Write-Host
	Write-Host 'Nothing To Do'
	Write-Host
	Write-Host '###############################################################################################################'
	Exit 0
}
