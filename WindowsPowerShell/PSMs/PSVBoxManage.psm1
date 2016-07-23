. $PSScriptRoot\VirtualBoxSDKEnums.ps1
$vbox = New-Object -ComObject "VirtualBox.VirtualBox"

function New-Session {
	New-Object -ComObject "VirtualBox.Session"
}

function Get-Vm($VmName) {
	$vbox.FindMachine($VmName)
}

function Get-GuestOsTypes($Id) {
	$vbox.guestOSTypes() | Where { $_.Id -match $Id }
}

function Get-VmState($VmName) {
	(Get-VM $VmName).State
}

function Start-Vm($VmName, $Type) {
	(Get-VM $VmName).LaunchVMProcess((New-Session), $Type, $null)
}

function Restore-Snapshot($VmName, $SnapshotName) {
	$session = New-Session

	(Get-VM $VmName).LockMachine($session, [LockType]::Write)

	$machine = $session.Machine
	$snapshot = $machine.FindSnapshot($SnapshotName)
	$progress = $machine.RestoreSnapshot($snapshot)
	$progress.WaitForCompletion(20000)

	$session.UnlockMachine()
}

function Set-VmFolder($Folder = "C:\Apps\VirtualBox\VMs") {
	New-Item $folder -Force -ItemType Directory
	$vbox.SystemProperties.DefaultMachineFolder = $folder
}

function Initialize-Extradata {
	# Turn off "Check for Updates"
	$vbox.SetExtraData("GUI/UpdateDate", "never")
	# Host Key = Left Windows key
	$vbox.SetExtraData("GUI/Input/HostKeyCombination", [string]91)

}

function New-Vm($VmName, $OsType) {
	$vm = $vbox.CreateMachine($null, $VmName, [String[]]'', $OsType, $null)
	$vm.SaveSettings()
	$vbox.registerMachine($vm)
	return $vm
}

function Initialize-Vm($VmName) {
	VBoxManage modifyvm $VmName --clipboard bidirectional
	VBoxManage modifyvm $VmName --draganddrop bidirectional
	VBoxManage sharedfolder add $VmName --name "Shared" --hostpath "$HOME\Downloads"
}

Export-ModuleMember -Function *
