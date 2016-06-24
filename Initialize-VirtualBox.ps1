$machinefolder = "C:\Apps\VirtualBox\VMs"

$vbox = New-Object -ComObject "VirtualBox.VirtualBox"

function Set-MachineFolder($folder = $machinefolder) {
	New-Item -Force -ItemType Directory -Path $folder
	$vbox.SystemProperties.DefaultMachineFolder = $folder
}

function Set-Extradata {
	# Turn off "Check for Updates"
	$vbox.SetExtraData("GUI/UpdateDate", "never")
	# Host Key = Left Windows key
	$vbox.SetExtraData("GUI/Input/HostKeyCombination", [string]91)
}

Set-MachineFolder
Set-Extradata

$vbox.Version
$vbox.SystemProperties.DefaultMachineFolder
$vbox.GetExtraData("GUI/UpdateDate")
$vbox.GetExtraData("GUI/Input/HostKeyCombination")
