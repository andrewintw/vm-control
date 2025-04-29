# vm-control.ps1
param(
    [string]$action
)

$vmName = "UbuntuServer_24.04"  # 預設虛擬機名稱
$VBoxManagePath = "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe"  # VBoxManage.exe 路徑

switch ($action) {
    "start" {
        Write-Output "Starting VM: $vmName..."
        & $VBoxManagePath startvm $vmName --type headless
        break
    }
    "stop" {
        Write-Output "Stopping VM: $vmName..."
        & $VBoxManagePath controlvm $vmName acpipowerbutton
        break
    }
    "poweroff" {
        Write-Output "Powering off VM: $vmName..."
        & $VBoxManagePath controlvm $vmName poweroff
        break
    }
    "status" {
        Write-Output "Checking status of VM: $vmName..."
        & $VBoxManagePath list runningvms | Select-String $vmName
        break
    }
    "list" {
        Write-Output "Listing all VMs..."
        & $VBoxManagePath list vms
        break
    }
    default {
        Write-Output "Usage: start | stop | poweroff | status | list"
    }
}