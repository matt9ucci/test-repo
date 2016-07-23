enum SettingsVersion {
	Null    =     0
	v1_0    =     1
	v1_1    =     2
	v1_2    =     3
	v1_3pre =     4
	v1_3    =     5
	v1_4    =     6
	v1_5    =     7
	v1_6    =     8
	v1_7    =     9
	v1_8    =    10
	v1_9    =    11
	v1_10   =    12
	v1_11   =    13
	v1_12   =    14
	v1_13   =    15
	v1_14   =    16
	v1_15   =    17
	v1_16   =    18
	Future  = 99999
}

enum AccessMode {
	ReadOnly  = 1
	ReadWrite = 2
}

enum MachineState {
	Null                   =  0
	PoweredOff             =  1
	Saved                  =  2
	Teleported             =  3
	Aborted                =  4
	Running                =  5
	Paused                 =  6
	Stuck                  =  7
	Teleporting            =  8
	LiveSnapshotting       =  9
	Starting               = 10
	Stopping               = 11
	Saving                 = 12
	Restoring              = 13
	TeleportingPausedVM    = 14
	TeleportingIn          = 15
	FaultTolerantSyncing   = 16
	DeletingSnapshotOnline = 17
	DeletingSnapshotPaused = 18
	OnlineSnapshotting     = 19
	RestoringSnapshot      = 20
	DeletingSnapshot       = 21
	SettingUp              = 22
	Snapshotting           = 23
	FirstOnline            =  5
	LastOnline             = 19
	FirstTransient         =  8
	LastTransient          = 23
}

enum SessionState {
	Null      = 0
	Unlocked  = 1
	Locked    = 2
	Spawning  = 3
	Unlocking = 4
}

enum CPUPropertyType {
	Null             = 0
	PAE              = 1
	LongMode         = 2
	TripleFaultReset = 3
	APIC             = 4
	X2APIC           = 5
}

enum HWVirtExPropertyType {
	Null                  = 0
	Enabled               = 1
	VPID                  = 2
	NestedPaging          = 3
	UnrestrictedExecution = 4
	LargePages            = 5
	Force                 = 6
}

enum ParavirtProvider {
	None    = 0
	Default = 1
	Legacy  = 2
	Minimal = 3
	HyperV  = 4
	KVM     = 5
}

enum FaultToleranceState {
	Inactive = 1
	Master   = 2
	Standby  = 3
}

enum LockType {
	Null   = 0
	Shared = 1
	Write  = 2
	VM     = 3
}

enum SessionType {
	Null      = 0
	WriteLock = 1
	Remote    = 2
	Shared    = 3
}

enum DeviceType {
	Null         = 0
	Floppy       = 1
	DVD          = 2
	HardDisk     = 3
	Network      = 4
	USB          = 5
	SharedFolder = 6
	Graphics3D   = 7
}

enum DeviceActivity {
	Null    = 0
	Idle    = 1
	Reading = 2
	Writing = 3
}

enum ClipboardMode {
	Disabled      = 0
	HostToGuest   = 1
	GuestToHost   = 2
	Bidirectional = 3
}

enum DnDMode {
	Disabled      = 0
	HostToGuest   = 1
	GuestToHost   = 2
	Bidirectional = 3
}

enum Scope {
	Global  = 0
	Machine = 1
	Session = 2
}

enum BIOSBootMenuMode {
	Disabled       = 0
	MenuOnly       = 1
	MessageAndMenu = 2
}

enum APICMode {
	Disabled = 0
	APIC     = 1
	X2APIC   = 2
}

enum ProcessorFeature {
	HWVirtEx     = 0
	PAE          = 1
	LongMode     = 2
	NestedPaging = 3
}

enum FirmwareType {
	BIOS    = 1
	EFI     = 2
	EFI32   = 3
	EFI64   = 4
	EFIDUAL = 5
}

enum PointingHIDType {
	None          = 1
	PS2Mouse      = 2
	USBMouse      = 3
	USBTablet     = 4
	ComboMouse    = 5
	USBMultiTouch = 6
}

enum KeyboardHIDType {
	None          = 1
	PS2Keyboard   = 2
	USBKeyboard   = 3
	ComboKeyboard = 4
}

enum BitmapFormat {
	Opaque =          0
	BGR    = 0x20524742
	BGR0   = 0x30524742
	BGRA   = 0x41524742
	RGBA   = 0x41424752
	PNG    = 0x20474E50
	JPEG   = 0x4745504A
}

enum DhcpOpt {
	SubnetMask                         =   1
	TimeOffset                         =   2
	Router                             =   3
	TimeServer                         =   4
	NameServer                         =   5
	DomainNameServer                   =   6
	LogServer                          =   7
	Cookie                             =   8
	LPRServer                          =   9
	ImpressServer                      =  10
	ResourseLocationServer             =  11
	HostName                           =  12
	BootFileSize                       =  13
	MeritDumpFile                      =  14
	DomainName                         =  15
	SwapServer                         =  16
	RootPath                           =  17
	ExtensionPath                      =  18
	IPForwardingEnableDisable          =  19
	NonLocalSourceRoutingEnableDisable =  20
	PolicyFilter                       =  21
	MaximumDatagramReassemblySize      =  22
	DefaultIPTime2Live                 =  23
	PathMTUAgingTimeout                =  24
	IPLayerParametersPerInterface      =  25
	InterfaceMTU                       =  26
	AllSubnetsAreLocal                 =  27
	BroadcastAddress                   =  28
	PerformMaskDiscovery               =  29
	MaskSupplier                       =  30
	PerformRouteDiscovery              =  31
	RouterSolicitationAddress          =  32
	StaticRoute                        =  33
	TrailerEncapsulation               =  34
	ARPCacheTimeout                    =  35
	EthernetEncapsulation              =  36
	TCPDefaultTTL                      =  37
	TCPKeepAliveInterval               =  38
	TCPKeepAliveGarbage                =  39
	NetworkInformationServiceDomain    =  40
	NetworkInformationServiceServers   =  41
	NetworkTimeProtocolServers         =  42
	VendorSpecificInformation          =  43
	Option_44                          =  44
	Option_45                          =  45
	Option_46                          =  46
	Option_47                          =  47
	Option_48                          =  48
	Option_49                          =  49
	IPAddressLeaseTime                 =  51
	Option_64                          =  64
	Option_65                          =  65
	TFTPServerName                     =  66
	BootfileName                       =  67
	Option_68                          =  68
	Option_69                          =  69
	Option_70                          =  70
	Option_71                          =  71
	Option_72                          =  72
	Option_73                          =  73
	Option_74                          =  74
	Option_75                          =  75
	Option_119                         = 119
}

enum DhcpOptEncoding {
	Legacy = 0
	Hex    = 1
}

enum VFSType {
	File   = 1
	Cloud  = 2
	S3     = 3
	WebDav = 4
}

enum ImportOptions {
	KeepAllMACs = 1
	KeepNATMACs = 2
	ImportToVDI = 3
}

enum ExportOptions {
	CreateManifest     = 1
	ExportDVDImages    = 2
	StripAllMACs       = 3
	StripAllNonNATMACs = 4
}

enum CertificateVersion {
	V1      =  1
	V2      =  2
	V3      =  3
	Unknown = 99
}

enum VirtualSystemDescriptionType {
	Ignore                 =  1
	OS                     =  2
	Name                   =  3
	Product                =  4
	Vendor                 =  5
	Version                =  6
	ProductUrl             =  7
	VendorUrl              =  8
	Description            =  9
	License                = 10
	Miscellaneous          = 11
	CPU                    = 12
	Memory                 = 13
	HardDiskControllerIDE  = 14
	HardDiskControllerSATA = 15
	HardDiskControllerSCSI = 16
	HardDiskControllerSAS  = 17
	HardDiskImage          = 18
	Floppy                 = 19
	CDROM                  = 20
	NetworkAdapter         = 21
	USBController          = 22
	SoundCard              = 23
	SettingsFile           = 24
}

enum VirtualSystemDescriptionValueType {
	Reference   = 1
	Original    = 2
	Auto        = 3
	ExtraConfig = 4
}

enum GraphicsControllerType {
	Null    = 0
	VBoxVGA = 1
	VMSVGA  = 2
}

enum CleanupMode {
	UnregisterOnly               = 1
	DetachAllReturnNone          = 2
	DetachAllReturnHardDisksOnly = 3
	Full                         = 4
}

enum CloneMode {
	MachineState          = 1
	MachineAndChildStates = 2
	AllStates             = 3
}

enum CloneOptions {
	Link          = 1
	KeepAllMACs   = 2
	KeepNATMACs   = 3
	KeepDiskNames = 4
}

enum AutostopType {
	Disabled     = 1
	SaveState    = 2
	PowerOff     = 3
	AcpiShutdown = 4
}

enum HostNetworkInterfaceMediumType {
	Unknown  = 0
	Ethernet = 1
	PPP      = 2
	SLIP     = 3
}

enum HostNetworkInterfaceStatus {
	Unknown = 0
	Up      = 1
	Down    = 2
}

enum HostNetworkInterfaceType {
	Bridged  = 1
	HostOnly = 2
}

enum AdditionsFacilityType {
	None            =          0
	VBoxGuestDriver =         20
	AutoLogon       =         90
	VBoxService     =        100
	VBoxTrayClient  =        101
	Seamless        =       1000
	Graphics        =       1100
	All             = 2147483646
}

enum AdditionsFacilityClass {
	None       =          0
	Driver     =         10
	Service    =         30
	Program    =         50
	Feature    =        100
	ThirdParty =        999
	All        = 2147483646
}

enum AdditionsFacilityStatus {
	Inactive    =   0
	Paused      =   1
	PreInit     =  20
	Init        =  30
	Active      =  50
	Terminating = 100
	Terminated  = 101
	Failed      = 800
	Unknown     = 999
}

enum AdditionsRunLevelType {
	None     = 0
	System   = 1
	Userland = 2
	Desktop  = 3
}

enum AdditionsUpdateFlag {
	None                   = 0
	WaitForUpdateStartOnly = 1
}

enum GuestSessionStatus {
	Undefined          =   0
	Starting           =  10
	Started            = 100
	Terminating        = 480
	Terminated         = 500
	TimedOutKilled     = 512
	TimedOutAbnormally = 513
	Down               = 600
	Error              = 800
}

enum GuestSessionWaitForFlag {
	None      = 0
	Start     = 1
	Terminate = 2
	Status    = 4
}

enum GuestSessionWaitResult {
	None                 = 0
	Start                = 1
	Terminate            = 2
	Status               = 3
	Error                = 4
	Timeout              = 5
	WaitFlagNotSupported = 6
}

enum GuestUserState {
	Unknown            =  0
	LoggedIn           =  1
	LoggedOut          =  2
	Locked             =  3
	Unlocked           =  4
	Disabled           =  5
	Idle               =  6
	InUse              =  7
	Created            =  8
	Deleted            =  9
	SessionChanged     = 10
	CredentialsChanged = 11
	RoleChanged        = 12
	GroupAdded         = 13
	GroupRemoved       = 14
	Elevated           = 15
}

enum FileSeekOrigin {
	Begin   = 0
	Current = 1
	End     = 2
}

enum ProcessInputFlag {
	None      = 0
	EndOfFile = 1
}

enum ProcessOutputFlag {
	None   = 0
	StdErr = 1
}

enum ProcessWaitForFlag {
	None      =  0
	Start     =  1
	Terminate =  2
	StdIn     =  4
	StdOut    =  8
	StdErr    = 16
}

enum ProcessWaitResult {
	None                 = 0
	Start                = 1
	Terminate            = 2
	Status               = 3
	Error                = 4
	Timeout              = 5
	StdIn                = 6
	StdOut               = 7
	StdErr               = 8
	WaitFlagNotSupported = 9
}

enum FileCopyFlag {
	None        = 0
	NoReplace   = 1
	FollowLinks = 2
	Update      = 4
}

enum FsObjMoveFlags {
	None                = 0
	Replace             = 1
	FollowLinks         = 2
	AllowDirectoryMoves = 4
}

enum DirectoryCreateFlag {
	None    = 0
	Parents = 1
}

enum DirectoryCopyFlags {
	None             = 0
	CopyIntoExisting = 1
}

enum DirectoryRemoveRecFlag {
	None          = 0
	ContentAndDir = 1
	ContentOnly   = 2
}

enum FsObjRenameFlag {
	NoReplace = 0
	Replace   = 1
}

enum ProcessCreateFlag {
	None                    =   0
	WaitForProcessStartOnly =   1
	IgnoreOrphanedProcesses =   2
	Hidden                  =   4
	Profile                 =   8
	WaitForStdOut           =  16
	WaitForStdErr           =  32
	ExpandArguments         =  64
	UnquotedArguments       = 128
}

enum ProcessPriority {
	Invalid = 0
	Default = 1
}

enum SymlinkType {
	Unknown   = 0
	Directory = 1
	File      = 2
}

enum SymlinkReadFlag {
	None       = 0
	NoSymlinks = 1
}

enum ProcessStatus {
	Undefined            =   0
	Starting             =  10
	Started              = 100
	Paused               = 110
	Terminating          = 480
	TerminatedNormally   = 500
	TerminatedSignal     = 510
	TerminatedAbnormally = 511
	TimedOutKilled       = 512
	TimedOutAbnormally   = 513
	Down                 = 600
	Error                = 800
}

enum ProcessInputStatus {
	Undefined =   0
	Broken    =   1
	Available =  10
	Written   =  50
	Overflow  = 100
}

enum PathStyle {
	DOS     = 1
	UNIX    = 2
	Unknown = 8
}

enum FileAccessMode {
	ReadOnly   = 1
	WriteOnly  = 2
	ReadWrite  = 3
	AppendOnly = 4
	AppendRead = 5
}

enum FileOpenAction {
	OpenExisting          =  1
	OpenOrCreate          =  2
	CreateNew             =  3
	CreateOrReplace       =  4
	OpenExistingTruncated =  5
	AppendOrCreate        = 99
}

enum FileSharingMode {
	Read        = 1
	Write       = 2
	ReadWrite   = 3
	Delete      = 4
	ReadDelete  = 5
	WriteDelete = 6
	All         = 7
}

enum FileOpenExFlags {
	None = 0
}

enum FileStatus {
	Undefined =   0
	Opening   =  10
	Open      = 100
	Closing   = 150
	Closed    = 200
	Down      = 600
	Error     = 800
}

enum FsObjType {
	Unknown   = 1
	Fifo      = 2
	DevChar   = 3
	Directory = 4
	DevBlock  = 5
	File      = 6
	Symlink   = 7
	Socket    = 8
	WhiteOut  = 9
}

enum DnDAction {
	Ignore = 0
	Copy   = 1
	Move   = 2
	Link   = 3
}

enum DirectoryOpenFlag {
	None       = 0
	NoSymlinks = 1
}

enum MediumState {
	NotCreated   = 0
	Created      = 1
	LockedRead   = 2
	LockedWrite  = 3
	Inaccessible = 4
	Creating     = 5
	Deleting     = 6
}

enum MediumType {
	Normal       = 0
	Immutable    = 1
	Writethrough = 2
	Shareable    = 3
	Readonly     = 4
	MultiAttach  = 5
}

enum MediumVariant {
	Standard            =          0
	VmdkSplit2G         =       0x01
	VmdkRawDisk         =       0x02
	VmdkStreamOptimized =       0x04
	VmdkESX             =       0x08
	VdiZeroExpand       =      0x100
	Fixed               =    0x10000
	Diff                =    0x20000
	NoCreateDir         = 0x40000000
}

enum DataType {
	Int32  = 0
	Int8   = 1
	String = 2
}

enum DataFlags {
	None      = 0x00
	Mandatory = 0x01
	Expert    = 0x02
	Array     = 0x04
	FlagMask  = 0x07
}

enum MediumFormatCapabilities {
	Uuid           =  0x01
	CreateFixed    =  0x02
	CreateDynamic  =  0x04
	CreateSplit2G  =  0x08
	Differencing   =  0x10
	Asynchronous   =  0x20
	File           =  0x40
	Properties     =  0x80
	TcpNetworking  = 0x100
	VFS            = 0x200
	Discard        = 0x400
	Preferred      = 0x800
	CapabilityMask = 0xFFF
}

enum KeyboardLED {
	NumLock    = 0x01
	CapsLock   = 0x02
	ScrollLock = 0x04
}

enum MouseButtonState {
	LeftButton     = 0x01
	RightButton    = 0x02
	MiddleButton   = 0x04
	WheelUp        = 0x08
	WheelDown      = 0x10
	XButton1       = 0x20
	XButton2       = 0x40
	MouseStateMask = 0x7F
}

enum TouchContactState {
	None             = 0x00
	InContact        = 0x01
	InRange          = 0x02
	ContactStateMask = 0x03
}

enum FramebufferCapabilities {
	UpdateImage   = 0x01
	VHWA          = 0x02
	VisibleRegion = 0x04
}

enum GuestMonitorStatus {
	Disabled = 0
	Enabled  = 1
	Blank    = 2
}

enum ScreenLayoutMode {
	Apply = 0
	Reset = 1
}

enum NetworkAttachmentType {
	Null       = 0
	NAT        = 1
	Bridged    = 2
	Internal   = 3
	HostOnly   = 4
	Generic    = 5
	NATNetwork = 6
}

enum NetworkAdapterType {
	Null      = 0
	Am79C970A = 1
	Am79C973  = 2
	I82540EM  = 3
	I82543GC  = 4
	I82545EM  = 5
	Virtio    = 6
}

enum NetworkAdapterPromiscModePolicy {
	Deny         = 1
	AllowNetwork = 2
	AllowAll     = 3
}

enum PortMode {
	Disconnected = 0
	HostPipe     = 1
	HostDevice   = 2
	RawFile      = 3
	TCP          = 4
}

enum USBControllerType {
	Null = 0
	OHCI = 1
	EHCI = 2
	XHCI = 3
	Last = 4
}

enum USBConnectionSpeed {
	Null      = 0
	Low       = 1
	Full      = 2
	High      = 3
	Super     = 4
	SuperPlus = 5
}

enum USBDeviceState {
	NotSupported = 0
	Unavailable  = 1
	Busy         = 2
	Available    = 3
	Held         = 4
	Captured     = 5
}

enum USBDeviceFilterAction {
	Null   = 0
	Ignore = 1
	Hold   = 2
}

enum AudioDriverType {
	Null        = 0
	WinMM       = 1
	OSS         = 2
	ALSA        = 3
	DirectSound = 4
	CoreAudio   = 5
	MMPM        = 6
	Pulse       = 7
	SolAudio    = 8
}

enum AudioControllerType {
	AC97 = 0
	SB16 = 1
	HDA  = 2
}

enum AudioCodecType {
	Null     = 0
	SB16     = 1
	STAC9700 = 2
	AD1980   = 3
	STAC9221 = 4
}

enum AuthType {
	Null     = 0
	External = 1
	Guest    = 2
}

enum Reason {
	Unspecified    = 0
	HostSuspend    = 1
	HostResume     = 2
	HostBatteryLow = 3
	Snapshot       = 4
}

enum StorageBus {
	Null   = 0
	IDE    = 1
	SATA   = 2
	SCSI   = 3
	Floppy = 4
	SAS    = 5
	USB    = 6
	PCIe   = 7
}

enum StorageControllerType {
	Null        =  0
	LsiLogic    =  1
	BusLogic    =  2
	IntelAhci   =  3
	PIIX3       =  4
	PIIX4       =  5
	ICH6        =  6
	I82078      =  7
	LsiLogicSas =  8
	USB         =  9
	NVMe        = 10
}

enum ChipsetType {
	Null  = 0
	PIIX3 = 1
	ICH9  = 2
}

enum NATAliasMode {
	AliasLog          =  0x1
	AliasProxyOnly    = 0x02
	AliasUseSamePorts = 0x04
}

enum NATProtocol {
	UDP = 0
	TCP = 1
}

enum BandwidthGroupType {
	Null    = 0
	Disk    = 1
	Network = 2
}

enum VBoxEventType {
	Invalid                                 =  0
	Any                                     =  1
	Vetoable                                =  2
	MachineEvent                            =  3
	SnapshotEvent                           =  4
	InputEvent                              =  5
	LastWildcard                            = 31
	OnMachineStateChanged                   = 32
	OnMachineDataChanged                    = 33
	OnExtraDataChanged                      = 34
	OnExtraDataCanChange                    = 35
	OnMediumRegistered                      = 36
	OnMachineRegistered                     = 37
	OnSessionStateChanged                   = 38
	OnSnapshotTaken                         = 39
	OnSnapshotDeleted                       = 40
	OnSnapshotChanged                       = 41
	OnGuestPropertyChanged                  = 42
	OnMousePointerShapeChanged              = 43
	OnMouseCapabilityChanged                = 44
	OnKeyboardLedsChanged                   = 45
	OnStateChanged                          = 46
	OnAdditionsStateChanged                 = 47
	OnNetworkAdapterChanged                 = 48
	OnSerialPortChanged                     = 49
	OnParallelPortChanged                   = 50
	OnStorageControllerChanged              = 51
	OnMediumChanged                         = 52
	OnVRDEServerChanged                     = 53
	OnUSBControllerChanged                  = 54
	OnUSBDeviceStateChanged                 = 55
	OnSharedFolderChanged                   = 56
	OnRuntimeError                          = 57
	OnCanShowWindow                         = 58
	OnShowWindow                            = 59
	OnCPUChanged                            = 60
	OnVRDEServerInfoChanged                 = 61
	OnEventSourceChanged                    = 62
	OnCPUExecutionCapChanged                = 63
	OnGuestKeyboard                         = 64
	OnGuestMouse                            = 65
	OnNATRedirect                           = 66
	OnHostPCIDevicePlug                     = 67
	OnVBoxSVCAvailabilityChanged            = 68
	OnBandwidthGroupChanged                 = 69
	OnGuestMonitorChanged                   = 70
	OnStorageDeviceChanged                  = 71
	OnClipboardModeChanged                  = 72
	OnDnDModeChanged                        = 73
	OnNATNetworkChanged                     = 74
	OnNATNetworkStartStop                   = 75
	OnNATNetworkAlter                       = 76
	OnNATNetworkCreationDeletion            = 77
	OnNATNetworkSetting                     = 78
	OnNATNetworkPortForward                 = 79
	OnGuestSessionStateChanged              = 80
	OnGuestSessionRegistered                = 81
	OnGuestProcessRegistered                = 82
	OnGuestProcessStateChanged              = 83
	OnGuestProcessInputNotify               = 84
	OnGuestProcessOutput                    = 85
	OnGuestFileRegistered                   = 86
	OnGuestFileStateChanged                 = 87
	OnGuestFileOffsetChanged                = 88
	OnGuestFileRead                         = 89
	OnGuestFileWrite                        = 90
	OnVideoCaptureChanged                   = 91
	OnGuestUserStateChanged                 = 92
	OnGuestMultiTouch                       = 93
	OnHostNameResolutionConfigurationChange = 94
	OnSnapshotRestored                      = 95
	OnMediumConfigChanged                   = 96
	Last                                    = 97
}

enum GuestMouseEventMode {
	Relative = 0
	Absolute = 1
}

enum GuestMonitorChangedEventType {
	Enabled   = 0
	Disabled  = 1
	NewOrigin = 2
}

<#
function Out-VBoxSDKEnum {
	$outPath = "VBoxSDKEnum.txt"
	if(Test-Path $outPath) { Remove-Item $outPath }

	[xml]$xidl = Invoke-WebRequest 'https://www.virtualbox.org/svn/vbox/trunk/src/VBox/Main/idl/VirtualBox.xidl'
	foreach ($e in $xidl.GetElementsByTagName('enum')) {
		"enum $($e.name) {" | Out-File $outPath -Append

		$consts = $e.GetElementsByTagName('const')
		$namePad = ($consts.name | Measure-Object Length -Maximum).Maximum
		$valuePad = ($consts.value | Measure-Object Length -Maximum).Maximum
		foreach ($c in $consts) {
			$line = "`t{0} = {1}" -f $c.name.PadRight($namePad), $c.value.PadLeft($valuePad)
			$line | Out-File $outPath -Append
		}

		'}' | Out-File $outPath -Append
		'' | Out-File $outPath -Append
	}
}
#>
