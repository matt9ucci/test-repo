# Execute this script after installing VBox
$machinefolder = "C:\Apps\VirtualBox\VMs"
New-Item -ItemType Directory -Path $machinefolder
VBoxManage setproperty machinefolder $machinefolder
VBoxManage setextradata global GUI/UpdateDate "never" # Turn off "Check for Updates"
VBoxManage setextradata global GUI/Input/HostKeyCombination 91 # Left Windows

# VBox manual
$uri = "http://download.virtualbox.org/virtualbox/5.0.14/UserManual.pdf"
$outfile = (Get-Item $machinefolder).Parent.FullName + "\" + $(Split-Path $uri -Leaf)
Invoke-WebRequest -Uri $uri -OutFile $outfile
