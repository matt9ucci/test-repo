﻿function New-VBox {
	New-Object -ComObject "VirtualBox.VirtualBox"
}

function New-Session {
	New-Object -ComObject "VirtualBox.Session"
}

function Get-VM($VmName) {
	$vbox = New-VBox
	$vbox.FindMachine($VmName)
}

function Get-VMState($VmName) {
	(Get-VM $VmName).State
}

function Start-VM($VmName, $Type) {
	(Get-VM $VmName).LaunchVMProcess((New-Session), $Type, $null)
}

function Restore-Snapshot($VmName, $SnapshotName) {
	$session = New-Session

	(Get-VM $VmName).LockMachine($session, 2)

	$machine = $session.Machine
	$snapshot = $machine.FindSnapshot($SnapshotName)
	$progress = $machine.RestoreSnapshot($snapshot)
	$progress.WaitForCompletion(30000)

	$session.UnlockMachine()
}

Export-ModuleMember -Function "*"
