$machinefolder = "C:\Apps\VirtualBox\VMs"

function Set-MachineFolder($folder) {
	ni -Force -ItemType Directory -Path $folder
	VBoxManage setproperty machinefolder $folder
}

function Set-Extradata {
	# Turn off "Check for Updates"
	VBoxManage setextradata global GUI/UpdateDate "never"
	# Host Key = Left Windows
	VBoxManage setextradata global GUI/Input/HostKeyCombination 91
}

Set-MachineFolder $machinefolder
Set-Extradata

$vbox = New-Object -ComObject "VirtualBox.VirtualBox"
$vbox.Version
$vbox.SystemProperties.DefaultMachineFolder
$vbox.GetExtraData("GUI/UpdateDate")
$vbox.GetExtraData("GUI/Input/HostKeyCombination")
