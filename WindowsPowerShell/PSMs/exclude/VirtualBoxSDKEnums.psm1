sv SettingsVersion_Null                0 -Option Constant
sv SettingsVersion_v1_0                1 -Option Constant
sv SettingsVersion_v1_1                2 -Option Constant
sv SettingsVersion_v1_2                3 -Option Constant
sv SettingsVersion_v1_3pre             4 -Option Constant
sv SettingsVersion_v1_3                5 -Option Constant
sv SettingsVersion_v1_4                6 -Option Constant
sv SettingsVersion_v1_5                7 -Option Constant
sv SettingsVersion_v1_6                8 -Option Constant
sv SettingsVersion_v1_7                9 -Option Constant
sv SettingsVersion_v1_8               10 -Option Constant
sv SettingsVersion_v1_9               11 -Option Constant
sv SettingsVersion_v1_10              12 -Option Constant
sv SettingsVersion_v1_11              13 -Option Constant
sv SettingsVersion_v1_12              14 -Option Constant
sv SettingsVersion_v1_13              15 -Option Constant
sv SettingsVersion_v1_14              16 -Option Constant
sv SettingsVersion_v1_15              17 -Option Constant
sv SettingsVersion_Future          99999 -Option Constant

sv AccessMode_ReadOnly           1 -Option Constant
sv AccessMode_ReadWrite          2 -Option Constant

sv MachineState_Null                             0 -Option Constant
sv MachineState_PoweredOff                       1 -Option Constant
sv MachineState_Saved                            2 -Option Constant
sv MachineState_Teleported                       3 -Option Constant
sv MachineState_Aborted                          4 -Option Constant
sv MachineState_Running                          5 -Option Constant
sv MachineState_Paused                           6 -Option Constant
sv MachineState_Stuck                            7 -Option Constant
sv MachineState_Teleporting                      8 -Option Constant
sv MachineState_LiveSnapshotting                 9 -Option Constant
sv MachineState_Starting                        10 -Option Constant
sv MachineState_Stopping                        11 -Option Constant
sv MachineState_Saving                          12 -Option Constant
sv MachineState_Restoring                       13 -Option Constant
sv MachineState_TeleportingPausedVM             14 -Option Constant
sv MachineState_TeleportingIn                   15 -Option Constant
sv MachineState_FaultTolerantSyncing            16 -Option Constant
sv MachineState_DeletingSnapshotOnline          17 -Option Constant
sv MachineState_DeletingSnapshotPaused          18 -Option Constant
sv MachineState_OnlineSnapshotting              19 -Option Constant
sv MachineState_RestoringSnapshot               20 -Option Constant
sv MachineState_DeletingSnapshot                21 -Option Constant
sv MachineState_SettingUp                       22 -Option Constant
sv MachineState_Snapshotting                    23 -Option Constant
sv MachineState_FirstOnline                      5 -Option Constant
sv MachineState_LastOnline                      19 -Option Constant
sv MachineState_FirstTransient                   8 -Option Constant
sv MachineState_LastTransient                   23 -Option Constant

sv SessionState_Null               0 -Option Constant
sv SessionState_Unlocked           1 -Option Constant
sv SessionState_Locked             2 -Option Constant
sv SessionState_Spawning           3 -Option Constant
sv SessionState_Unlocking          4 -Option Constant

sv CPUPropertyType_Null                      0 -Option Constant
sv CPUPropertyType_PAE                       1 -Option Constant
sv CPUPropertyType_LongMode                  2 -Option Constant
sv CPUPropertyType_TripleFaultReset          3 -Option Constant

sv HWVirtExPropertyType_Null                           0 -Option Constant
sv HWVirtExPropertyType_Enabled                        1 -Option Constant
sv HWVirtExPropertyType_VPID                           2 -Option Constant
sv HWVirtExPropertyType_NestedPaging                   3 -Option Constant
sv HWVirtExPropertyType_UnrestrictedExecution          4 -Option Constant
sv HWVirtExPropertyType_LargePages                     5 -Option Constant
sv HWVirtExPropertyType_Force                          6 -Option Constant

sv ParavirtProvider_None             0 -Option Constant
sv ParavirtProvider_Default          1 -Option Constant
sv ParavirtProvider_Legacy           2 -Option Constant
sv ParavirtProvider_Minimal          3 -Option Constant
sv ParavirtProvider_HyperV           4 -Option Constant
sv ParavirtProvider_KVM              5 -Option Constant

sv FaultToleranceState_Inactive          1 -Option Constant
sv FaultToleranceState_Master            2 -Option Constant
sv FaultToleranceState_Standby           3 -Option Constant

sv LockType_Null            0 -Option Constant
sv LockType_Shared          1 -Option Constant
sv LockType_Write           2 -Option Constant
sv LockType_VM              3 -Option Constant

sv SessionType_Null               0 -Option Constant
sv SessionType_WriteLock          1 -Option Constant
sv SessionType_Remote             2 -Option Constant
sv SessionType_Shared             3 -Option Constant

sv DeviceType_Null                  0 -Option Constant
sv DeviceType_Floppy                1 -Option Constant
sv DeviceType_DVD                   2 -Option Constant
sv DeviceType_HardDisk              3 -Option Constant
sv DeviceType_Network               4 -Option Constant
sv DeviceType_USB                   5 -Option Constant
sv DeviceType_SharedFolder          6 -Option Constant
sv DeviceType_Graphics3D            7 -Option Constant

sv DeviceActivity_Null             0 -Option Constant
sv DeviceActivity_Idle             1 -Option Constant
sv DeviceActivity_Reading          2 -Option Constant
sv DeviceActivity_Writing          3 -Option Constant

sv ClipboardMode_Disabled               0 -Option Constant
sv ClipboardMode_HostToGuest            1 -Option Constant
sv ClipboardMode_GuestToHost            2 -Option Constant
sv ClipboardMode_Bidirectional          3 -Option Constant

sv DnDMode_Disabled               0 -Option Constant
sv DnDMode_HostToGuest            1 -Option Constant
sv DnDMode_GuestToHost            2 -Option Constant
sv DnDMode_Bidirectional          3 -Option Constant

sv Scope_Global           0 -Option Constant
sv Scope_Machine          1 -Option Constant
sv Scope_Session          2 -Option Constant

sv BIOSBootMenuMode_Disabled                0 -Option Constant
sv BIOSBootMenuMode_MenuOnly                1 -Option Constant
sv BIOSBootMenuMode_MessageAndMenu          2 -Option Constant

sv ProcessorFeature_HWVirtEx              0 -Option Constant
sv ProcessorFeature_PAE                   1 -Option Constant
sv ProcessorFeature_LongMode              2 -Option Constant
sv ProcessorFeature_NestedPaging          3 -Option Constant

sv FirmwareType_BIOS             1 -Option Constant
sv FirmwareType_EFI              2 -Option Constant
sv FirmwareType_EFI32            3 -Option Constant
sv FirmwareType_EFI64            4 -Option Constant
sv FirmwareType_EFIDUAL          5 -Option Constant

sv PointingHIDType_None                   1 -Option Constant
sv PointingHIDType_PS2Mouse               2 -Option Constant
sv PointingHIDType_USBMouse               3 -Option Constant
sv PointingHIDType_USBTablet              4 -Option Constant
sv PointingHIDType_ComboMouse             5 -Option Constant
sv PointingHIDType_USBMultiTouch          6 -Option Constant

sv KeyboardHIDType_None                   1 -Option Constant
sv KeyboardHIDType_PS2Keyboard            2 -Option Constant
sv KeyboardHIDType_USBKeyboard            3 -Option Constant
sv KeyboardHIDType_ComboKeyboard          4 -Option Constant

sv BitmapFormat_Opaque                 0 -Option Constant
sv BitmapFormat_BGR           0x20524742 -Option Constant
sv BitmapFormat_BGR0          0x30524742 -Option Constant
sv BitmapFormat_BGRA          0x41524742 -Option Constant
sv BitmapFormat_RGBA          0x41424752 -Option Constant
sv BitmapFormat_PNG           0x20474E50 -Option Constant
sv BitmapFormat_JPEG          0x4745504A -Option Constant

sv DhcpOpt_SubnetMask                                   1 -Option Constant
sv DhcpOpt_TimeOffset                                   2 -Option Constant
sv DhcpOpt_Router                                       3 -Option Constant
sv DhcpOpt_TimeServer                                   4 -Option Constant
sv DhcpOpt_NameServer                                   5 -Option Constant
sv DhcpOpt_DomainNameServer                             6 -Option Constant
sv DhcpOpt_LogServer                                    7 -Option Constant
sv DhcpOpt_Cookie                                       8 -Option Constant
sv DhcpOpt_LPRServer                                    9 -Option Constant
sv DhcpOpt_ImpressServer                               10 -Option Constant
sv DhcpOpt_ResourseLocationServer                      11 -Option Constant
sv DhcpOpt_HostName                                    12 -Option Constant
sv DhcpOpt_BootFileSize                                13 -Option Constant
sv DhcpOpt_MeritDumpFile                               14 -Option Constant
sv DhcpOpt_DomainName                                  15 -Option Constant
sv DhcpOpt_SwapServer                                  16 -Option Constant
sv DhcpOpt_RootPath                                    17 -Option Constant
sv DhcpOpt_ExtensionPath                               18 -Option Constant
sv DhcpOpt_IPForwardingEnableDisable                   19 -Option Constant
sv DhcpOpt_NonLocalSourceRoutingEnableDisable          20 -Option Constant
sv DhcpOpt_PolicyFilter                                21 -Option Constant
sv DhcpOpt_MaximumDatagramReassemblySize               22 -Option Constant
sv DhcpOpt_DefaultIPTime2Live                          23 -Option Constant
sv DhcpOpt_PathMTUAgingTimeout                         24 -Option Constant
sv DhcpOpt_IPLayerParametersPerInterface               25 -Option Constant
sv DhcpOpt_InterfaceMTU                                26 -Option Constant
sv DhcpOpt_AllSubnetsAreLocal                          27 -Option Constant
sv DhcpOpt_BroadcastAddress                            28 -Option Constant
sv DhcpOpt_PerformMaskDiscovery                        29 -Option Constant
sv DhcpOpt_MaskSupplier                                30 -Option Constant
sv DhcpOpt_PerformRouteDiscovery                       31 -Option Constant
sv DhcpOpt_RouterSolicitationAddress                   32 -Option Constant
sv DhcpOpt_StaticRoute                                 33 -Option Constant
sv DhcpOpt_TrailerEncapsulation                        34 -Option Constant
sv DhcpOpt_ARPCacheTimeout                             35 -Option Constant
sv DhcpOpt_EthernetEncapsulation                       36 -Option Constant
sv DhcpOpt_TCPDefaultTTL                               37 -Option Constant
sv DhcpOpt_TCPKeepAliveInterval                        38 -Option Constant
sv DhcpOpt_TCPKeepAliveGarbage                         39 -Option Constant
sv DhcpOpt_NetworkInformationServiceDomain             40 -Option Constant
sv DhcpOpt_NetworkInformationServiceServers            41 -Option Constant
sv DhcpOpt_NetworkTimeProtocolServers                  42 -Option Constant
sv DhcpOpt_VendorSpecificInformation                   43 -Option Constant
sv DhcpOpt_Option_44                                   44 -Option Constant
sv DhcpOpt_Option_45                                   45 -Option Constant
sv DhcpOpt_Option_46                                   46 -Option Constant
sv DhcpOpt_Option_47                                   47 -Option Constant
sv DhcpOpt_Option_48                                   48 -Option Constant
sv DhcpOpt_Option_49                                   49 -Option Constant
sv DhcpOpt_IPAddressLeaseTime                          51 -Option Constant
sv DhcpOpt_Option_64                                   64 -Option Constant
sv DhcpOpt_Option_65                                   65 -Option Constant
sv DhcpOpt_TFTPServerName                              66 -Option Constant
sv DhcpOpt_BootfileName                                67 -Option Constant
sv DhcpOpt_Option_68                                   68 -Option Constant
sv DhcpOpt_Option_69                                   69 -Option Constant
sv DhcpOpt_Option_70                                   70 -Option Constant
sv DhcpOpt_Option_71                                   71 -Option Constant
sv DhcpOpt_Option_72                                   72 -Option Constant
sv DhcpOpt_Option_73                                   73 -Option Constant
sv DhcpOpt_Option_74                                   74 -Option Constant
sv DhcpOpt_Option_75                                   75 -Option Constant
sv DhcpOpt_Option_119                                 119 -Option Constant

sv DhcpOptEncoding_Legacy          0 -Option Constant
sv DhcpOptEncoding_Hex             1 -Option Constant

sv VFSType_File            1 -Option Constant
sv VFSType_Cloud           2 -Option Constant
sv VFSType_S3              3 -Option Constant
sv VFSType_WebDav          4 -Option Constant

sv ImportOptions_KeepAllMACs          1 -Option Constant
sv ImportOptions_KeepNATMACs          2 -Option Constant
sv ImportOptions_ImportToVDI          3 -Option Constant

sv ExportOptions_CreateManifest              1 -Option Constant
sv ExportOptions_ExportDVDImages             2 -Option Constant
sv ExportOptions_StripAllMACs                3 -Option Constant
sv ExportOptions_StripAllNonNATMACs          4 -Option Constant

sv VirtualSystemDescriptionType_Ignore                           1 -Option Constant
sv VirtualSystemDescriptionType_OS                               2 -Option Constant
sv VirtualSystemDescriptionType_Name                             3 -Option Constant
sv VirtualSystemDescriptionType_Product                          4 -Option Constant
sv VirtualSystemDescriptionType_Vendor                           5 -Option Constant
sv VirtualSystemDescriptionType_Version                          6 -Option Constant
sv VirtualSystemDescriptionType_ProductUrl                       7 -Option Constant
sv VirtualSystemDescriptionType_VendorUrl                        8 -Option Constant
sv VirtualSystemDescriptionType_Description                      9 -Option Constant
sv VirtualSystemDescriptionType_License                         10 -Option Constant
sv VirtualSystemDescriptionType_Miscellaneous                   11 -Option Constant
sv VirtualSystemDescriptionType_CPU                             12 -Option Constant
sv VirtualSystemDescriptionType_Memory                          13 -Option Constant
sv VirtualSystemDescriptionType_HardDiskControllerIDE           14 -Option Constant
sv VirtualSystemDescriptionType_HardDiskControllerSATA          15 -Option Constant
sv VirtualSystemDescriptionType_HardDiskControllerSCSI          16 -Option Constant
sv VirtualSystemDescriptionType_HardDiskControllerSAS           17 -Option Constant
sv VirtualSystemDescriptionType_HardDiskImage                   18 -Option Constant
sv VirtualSystemDescriptionType_Floppy                          19 -Option Constant
sv VirtualSystemDescriptionType_CDROM                           20 -Option Constant
sv VirtualSystemDescriptionType_NetworkAdapter                  21 -Option Constant
sv VirtualSystemDescriptionType_USBController                   22 -Option Constant
sv VirtualSystemDescriptionType_SoundCard                       23 -Option Constant
sv VirtualSystemDescriptionType_SettingsFile                    24 -Option Constant

sv VirtualSystemDescriptionValueType_Reference            1 -Option Constant
sv VirtualSystemDescriptionValueType_Original             2 -Option Constant
sv VirtualSystemDescriptionValueType_Auto                 3 -Option Constant
sv VirtualSystemDescriptionValueType_ExtraConfig          4 -Option Constant

sv GraphicsControllerType_Null             0 -Option Constant
sv GraphicsControllerType_VBoxVGA          1 -Option Constant
sv GraphicsControllerType_VMSVGA           2 -Option Constant

sv CleanupMode_UnregisterOnly                        1 -Option Constant
sv CleanupMode_DetachAllReturnNone                   2 -Option Constant
sv CleanupMode_DetachAllReturnHardDisksOnly          3 -Option Constant
sv CleanupMode_Full                                  4 -Option Constant

sv CloneMode_MachineState                   1 -Option Constant
sv CloneMode_MachineAndChildStates          2 -Option Constant
sv CloneMode_AllStates                      3 -Option Constant

sv CloneOptions_Link                   1 -Option Constant
sv CloneOptions_KeepAllMACs            2 -Option Constant
sv CloneOptions_KeepNATMACs            3 -Option Constant
sv CloneOptions_KeepDiskNames          4 -Option Constant

sv AutostopType_Disabled              1 -Option Constant
sv AutostopType_SaveState             2 -Option Constant
sv AutostopType_PowerOff              3 -Option Constant
sv AutostopType_AcpiShutdown          4 -Option Constant

sv HostNetworkInterfaceMediumType_Unknown           0 -Option Constant
sv HostNetworkInterfaceMediumType_Ethernet          1 -Option Constant
sv HostNetworkInterfaceMediumType_PPP               2 -Option Constant
sv HostNetworkInterfaceMediumType_SLIP              3 -Option Constant

sv HostNetworkInterfaceStatus_Unknown          0 -Option Constant
sv HostNetworkInterfaceStatus_Up               1 -Option Constant
sv HostNetworkInterfaceStatus_Down             2 -Option Constant

sv HostNetworkInterfaceType_Bridged           1 -Option Constant
sv HostNetworkInterfaceType_HostOnly          2 -Option Constant

sv AdditionsFacilityType_None                      0 -Option Constant
sv AdditionsFacilityType_VBoxGuestDriver          20 -Option Constant
sv AdditionsFacilityType_AutoLogon                90 -Option Constant
sv AdditionsFacilityType_VBoxService             100 -Option Constant
sv AdditionsFacilityType_VBoxTrayClient          101 -Option Constant
sv AdditionsFacilityType_Seamless               1000 -Option Constant
sv AdditionsFacilityType_Graphics               1100 -Option Constant
sv AdditionsFacilityType_All              2147483646 -Option Constant

sv AdditionsFacilityClass_None                  0 -Option Constant
sv AdditionsFacilityClass_Driver               10 -Option Constant
sv AdditionsFacilityClass_Service              30 -Option Constant
sv AdditionsFacilityClass_Program              50 -Option Constant
sv AdditionsFacilityClass_Feature             100 -Option Constant
sv AdditionsFacilityClass_ThirdParty          999 -Option Constant
sv AdditionsFacilityClass_All          2147483646 -Option Constant

sv AdditionsFacilityStatus_Inactive               0 -Option Constant
sv AdditionsFacilityStatus_Paused                 1 -Option Constant
sv AdditionsFacilityStatus_PreInit               20 -Option Constant
sv AdditionsFacilityStatus_Init                  30 -Option Constant
sv AdditionsFacilityStatus_Active                50 -Option Constant
sv AdditionsFacilityStatus_Terminating          100 -Option Constant
sv AdditionsFacilityStatus_Terminated           101 -Option Constant
sv AdditionsFacilityStatus_Failed               800 -Option Constant
sv AdditionsFacilityStatus_Unknown              999 -Option Constant

sv AdditionsRunLevelType_None              0 -Option Constant
sv AdditionsRunLevelType_System            1 -Option Constant
sv AdditionsRunLevelType_Userland          2 -Option Constant
sv AdditionsRunLevelType_Desktop           3 -Option Constant

sv AdditionsUpdateFlag_None                            0 -Option Constant
sv AdditionsUpdateFlag_WaitForUpdateStartOnly          1 -Option Constant

sv GuestSessionStatus_Undefined                     0 -Option Constant
sv GuestSessionStatus_Starting                     10 -Option Constant
sv GuestSessionStatus_Started                     100 -Option Constant
sv GuestSessionStatus_Terminating                 480 -Option Constant
sv GuestSessionStatus_Terminated                  500 -Option Constant
sv GuestSessionStatus_TimedOutKilled              512 -Option Constant
sv GuestSessionStatus_TimedOutAbnormally          513 -Option Constant
sv GuestSessionStatus_Down                        600 -Option Constant
sv GuestSessionStatus_Error                       800 -Option Constant

sv GuestSessionWaitForFlag_None               0 -Option Constant
sv GuestSessionWaitForFlag_Start              1 -Option Constant
sv GuestSessionWaitForFlag_Terminate          2 -Option Constant
sv GuestSessionWaitForFlag_Status             4 -Option Constant

sv GuestSessionWaitResult_None                          0 -Option Constant
sv GuestSessionWaitResult_Start                         1 -Option Constant
sv GuestSessionWaitResult_Terminate                     2 -Option Constant
sv GuestSessionWaitResult_Status                        3 -Option Constant
sv GuestSessionWaitResult_Error                         4 -Option Constant
sv GuestSessionWaitResult_Timeout                       5 -Option Constant
sv GuestSessionWaitResult_WaitFlagNotSupported          6 -Option Constant

sv GuestUserState_Unknown                      0 -Option Constant
sv GuestUserState_LoggedIn                     1 -Option Constant
sv GuestUserState_LoggedOut                    2 -Option Constant
sv GuestUserState_Locked                       3 -Option Constant
sv GuestUserState_Unlocked                     4 -Option Constant
sv GuestUserState_Disabled                     5 -Option Constant
sv GuestUserState_Idle                         6 -Option Constant
sv GuestUserState_InUse                        7 -Option Constant
sv GuestUserState_Created                      8 -Option Constant
sv GuestUserState_Deleted                      9 -Option Constant
sv GuestUserState_SessionChanged              10 -Option Constant
sv GuestUserState_CredentialsChanged          11 -Option Constant
sv GuestUserState_RoleChanged                 12 -Option Constant
sv GuestUserState_GroupAdded                  13 -Option Constant
sv GuestUserState_GroupRemoved                14 -Option Constant
sv GuestUserState_Elevated                    15 -Option Constant

sv FileSeekOrigin_Begin            0 -Option Constant
sv FileSeekOrigin_Current          1 -Option Constant
sv FileSeekOrigin_End              2 -Option Constant

sv ProcessInputFlag_None               0 -Option Constant
sv ProcessInputFlag_EndOfFile          1 -Option Constant

sv ProcessOutputFlag_None            0 -Option Constant
sv ProcessOutputFlag_StdErr          1 -Option Constant

sv ProcessWaitForFlag_None               0 -Option Constant
sv ProcessWaitForFlag_Start              1 -Option Constant
sv ProcessWaitForFlag_Terminate          2 -Option Constant
sv ProcessWaitForFlag_StdIn              4 -Option Constant
sv ProcessWaitForFlag_StdOut             8 -Option Constant
sv ProcessWaitForFlag_StdErr            16 -Option Constant

sv ProcessWaitResult_None                          0 -Option Constant
sv ProcessWaitResult_Start                         1 -Option Constant
sv ProcessWaitResult_Terminate                     2 -Option Constant
sv ProcessWaitResult_Status                        3 -Option Constant
sv ProcessWaitResult_Error                         4 -Option Constant
sv ProcessWaitResult_Timeout                       5 -Option Constant
sv ProcessWaitResult_StdIn                         6 -Option Constant
sv ProcessWaitResult_StdOut                        7 -Option Constant
sv ProcessWaitResult_StdErr                        8 -Option Constant
sv ProcessWaitResult_WaitFlagNotSupported          9 -Option Constant

sv FileCopyFlag_None                 0 -Option Constant
sv FileCopyFlag_NoReplace            1 -Option Constant
sv FileCopyFlag_FollowLinks          2 -Option Constant
sv FileCopyFlag_Update               4 -Option Constant

sv FsObjMoveFlags_None                         0 -Option Constant
sv FsObjMoveFlags_Replace                      1 -Option Constant
sv FsObjMoveFlags_FollowLinks                  2 -Option Constant
sv FsObjMoveFlags_AllowDirectoryMoves          4 -Option Constant

sv DirectoryCreateFlag_None             0 -Option Constant
sv DirectoryCreateFlag_Parents          1 -Option Constant

sv DirectoryCopyFlags_None                      0 -Option Constant
sv DirectoryCopyFlags_CopyIntoExisting          1 -Option Constant

sv DirectoryRemoveRecFlag_None                   0 -Option Constant
sv DirectoryRemoveRecFlag_ContentAndDir          1 -Option Constant
sv DirectoryRemoveRecFlag_ContentOnly            2 -Option Constant

sv FsObjRenameFlag_NoReplace          0 -Option Constant
sv FsObjRenameFlag_Replace            1 -Option Constant

sv ProcessCreateFlag_None                             0 -Option Constant
sv ProcessCreateFlag_WaitForProcessStartOnly          1 -Option Constant
sv ProcessCreateFlag_IgnoreOrphanedProcesses          2 -Option Constant
sv ProcessCreateFlag_Hidden                           4 -Option Constant
sv ProcessCreateFlag_NoProfile                        8 -Option Constant
sv ProcessCreateFlag_WaitForStdOut                   16 -Option Constant
sv ProcessCreateFlag_WaitForStdErr                   32 -Option Constant
sv ProcessCreateFlag_ExpandArguments                 64 -Option Constant
sv ProcessCreateFlag_UnquotedArguments              128 -Option Constant

sv ProcessPriority_Invalid          0 -Option Constant
sv ProcessPriority_Default          1 -Option Constant

sv SymlinkType_Unknown            0 -Option Constant
sv SymlinkType_Directory          1 -Option Constant
sv SymlinkType_File               2 -Option Constant

sv SymlinkReadFlag_None                0 -Option Constant
sv SymlinkReadFlag_NoSymlinks          1 -Option Constant

sv ProcessStatus_Undefined                       0 -Option Constant
sv ProcessStatus_Starting                       10 -Option Constant
sv ProcessStatus_Started                       100 -Option Constant
sv ProcessStatus_Paused                        110 -Option Constant
sv ProcessStatus_Terminating                   480 -Option Constant
sv ProcessStatus_TerminatedNormally            500 -Option Constant
sv ProcessStatus_TerminatedSignal              510 -Option Constant
sv ProcessStatus_TerminatedAbnormally          511 -Option Constant
sv ProcessStatus_TimedOutKilled                512 -Option Constant
sv ProcessStatus_TimedOutAbnormally            513 -Option Constant
sv ProcessStatus_Down                          600 -Option Constant
sv ProcessStatus_Error                         800 -Option Constant

sv ProcessInputStatus_Undefined           0 -Option Constant
sv ProcessInputStatus_Broken              1 -Option Constant
sv ProcessInputStatus_Available          10 -Option Constant
sv ProcessInputStatus_Written            50 -Option Constant
sv ProcessInputStatus_Overflow          100 -Option Constant

sv PathStyle_DOS              1 -Option Constant
sv PathStyle_UNIX             2 -Option Constant
sv PathStyle_Unknown          8 -Option Constant

sv FileAccessMode_ReadOnly            1 -Option Constant
sv FileAccessMode_WriteOnly           2 -Option Constant
sv FileAccessMode_ReadWrite           3 -Option Constant
sv FileAccessMode_AppendOnly          4 -Option Constant
sv FileAccessMode_AppendRead          5 -Option Constant

sv FileOpenAction_OpenExisting                   1 -Option Constant
sv FileOpenAction_OpenOrCreate                   2 -Option Constant
sv FileOpenAction_CreateNew                      3 -Option Constant
sv FileOpenAction_CreateOrReplace                4 -Option Constant
sv FileOpenAction_OpenExistingTruncated          5 -Option Constant
sv FileOpenAction_AppendOrCreate                99 -Option Constant

sv FileSharingMode_Read                 1 -Option Constant
sv FileSharingMode_Write                2 -Option Constant
sv FileSharingMode_ReadWrite            3 -Option Constant
sv FileSharingMode_Delete               4 -Option Constant
sv FileSharingMode_ReadDelete           5 -Option Constant
sv FileSharingMode_WriteDelete          6 -Option Constant
sv FileSharingMode_All                  7 -Option Constant

sv FileOpenExFlags_None          0 -Option Constant

sv FileStatus_Undefined          0 -Option Constant
sv FileStatus_Opening           10 -Option Constant
sv FileStatus_Open             100 -Option Constant
sv FileStatus_Closing          150 -Option Constant
sv FileStatus_Closed           200 -Option Constant
sv FileStatus_Down             600 -Option Constant
sv FileStatus_Error            800 -Option Constant

sv FsObjType_Unknown            1 -Option Constant
sv FsObjType_Fifo               2 -Option Constant
sv FsObjType_DevChar            3 -Option Constant
sv FsObjType_Directory          4 -Option Constant
sv FsObjType_DevBlock           5 -Option Constant
sv FsObjType_File               6 -Option Constant
sv FsObjType_Symlink            7 -Option Constant
sv FsObjType_Socket             8 -Option Constant
sv FsObjType_WhiteOut           9 -Option Constant

sv DnDAction_Ignore          0 -Option Constant
sv DnDAction_Copy            1 -Option Constant
sv DnDAction_Move            2 -Option Constant
sv DnDAction_Link            3 -Option Constant

sv DirectoryOpenFlag_None                0 -Option Constant
sv DirectoryOpenFlag_NoSymlinks          1 -Option Constant

sv MediumState_NotCreated            0 -Option Constant
sv MediumState_Created               1 -Option Constant
sv MediumState_LockedRead            2 -Option Constant
sv MediumState_LockedWrite           3 -Option Constant
sv MediumState_Inaccessible          4 -Option Constant
sv MediumState_Creating              5 -Option Constant
sv MediumState_Deleting              6 -Option Constant

sv MediumType_Normal                0 -Option Constant
sv MediumType_Immutable             1 -Option Constant
sv MediumType_Writethrough          2 -Option Constant
sv MediumType_Shareable             3 -Option Constant
sv MediumType_Readonly              4 -Option Constant
sv MediumType_MultiAttach           5 -Option Constant

sv MediumVariant_Standard                        0 -Option Constant
sv MediumVariant_VmdkSplit2G                  0x01 -Option Constant
sv MediumVariant_VmdkRawDisk                  0x02 -Option Constant
sv MediumVariant_VmdkStreamOptimized          0x04 -Option Constant
sv MediumVariant_VmdkESX                      0x08 -Option Constant
sv MediumVariant_VdiZeroExpand               0x100 -Option Constant
sv MediumVariant_Fixed                     0x10000 -Option Constant
sv MediumVariant_Diff                      0x20000 -Option Constant
sv MediumVariant_NoCreateDir            0x40000000 -Option Constant

sv DataType_Int32           0 -Option Constant
sv DataType_Int8            1 -Option Constant
sv DataType_String          2 -Option Constant

sv DataFlags_None               0x00 -Option Constant
sv DataFlags_Mandatory          0x01 -Option Constant
sv DataFlags_Expert             0x02 -Option Constant
sv DataFlags_Array              0x04 -Option Constant
sv DataFlags_FlagMask           0x07 -Option Constant

sv MediumFormatCapabilities_Uuid                     0x01 -Option Constant
sv MediumFormatCapabilities_CreateFixed              0x02 -Option Constant
sv MediumFormatCapabilities_CreateDynamic            0x04 -Option Constant
sv MediumFormatCapabilities_CreateSplit2G            0x08 -Option Constant
sv MediumFormatCapabilities_Differencing             0x10 -Option Constant
sv MediumFormatCapabilities_Asynchronous             0x20 -Option Constant
sv MediumFormatCapabilities_File                     0x40 -Option Constant
sv MediumFormatCapabilities_Properties               0x80 -Option Constant
sv MediumFormatCapabilities_TcpNetworking           0x100 -Option Constant
sv MediumFormatCapabilities_VFS                     0x200 -Option Constant
sv MediumFormatCapabilities_CapabilityMask          0x3FF -Option Constant

sv KeyboardLED_NumLock             0x01 -Option Constant
sv KeyboardLED_CapsLock            0x02 -Option Constant
sv KeyboardLED_ScrollLock          0x04 -Option Constant

sv MouseButtonState_LeftButton              0x01 -Option Constant
sv MouseButtonState_RightButton             0x02 -Option Constant
sv MouseButtonState_MiddleButton            0x04 -Option Constant
sv MouseButtonState_WheelUp                 0x08 -Option Constant
sv MouseButtonState_WheelDown               0x10 -Option Constant
sv MouseButtonState_XButton1                0x20 -Option Constant
sv MouseButtonState_XButton2                0x40 -Option Constant
sv MouseButtonState_MouseStateMask          0x7F -Option Constant

sv TouchContactState_None                      0x00 -Option Constant
sv TouchContactState_InContact                 0x01 -Option Constant
sv TouchContactState_InRange                   0x02 -Option Constant
sv TouchContactState_ContactStateMask          0x03 -Option Constant

sv FramebufferCapabilities_UpdateImage            0x01 -Option Constant
sv FramebufferCapabilities_VHWA                   0x02 -Option Constant
sv FramebufferCapabilities_VisibleRegion          0x04 -Option Constant

sv GuestMonitorStatus_Disabled          0 -Option Constant
sv GuestMonitorStatus_Enabled           1 -Option Constant

sv NetworkAttachmentType_Null                0 -Option Constant
sv NetworkAttachmentType_NAT                 1 -Option Constant
sv NetworkAttachmentType_Bridged             2 -Option Constant
sv NetworkAttachmentType_Internal            3 -Option Constant
sv NetworkAttachmentType_HostOnly            4 -Option Constant
sv NetworkAttachmentType_Generic             5 -Option Constant
sv NetworkAttachmentType_NATNetwork          6 -Option Constant

sv NetworkAdapterType_Null               0 -Option Constant
sv NetworkAdapterType_Am79C970A          1 -Option Constant
sv NetworkAdapterType_Am79C973           2 -Option Constant
sv NetworkAdapterType_I82540EM           3 -Option Constant
sv NetworkAdapterType_I82543GC           4 -Option Constant
sv NetworkAdapterType_I82545EM           5 -Option Constant
sv NetworkAdapterType_Virtio             6 -Option Constant

sv NetworkAdapterPromiscModePolicy_Deny                  1 -Option Constant
sv NetworkAdapterPromiscModePolicy_AllowNetwork          2 -Option Constant
sv NetworkAdapterPromiscModePolicy_AllowAll              3 -Option Constant

sv PortMode_Disconnected          0 -Option Constant
sv PortMode_HostPipe              1 -Option Constant
sv PortMode_HostDevice            2 -Option Constant
sv PortMode_RawFile               3 -Option Constant
sv PortMode_TCP                   4 -Option Constant

sv USBControllerType_Null          0 -Option Constant
sv USBControllerType_OHCI          1 -Option Constant
sv USBControllerType_EHCI          2 -Option Constant
sv USBControllerType_XHCI          3 -Option Constant
sv USBControllerType_Last          4 -Option Constant

sv USBConnectionSpeed_Null               0 -Option Constant
sv USBConnectionSpeed_Low                1 -Option Constant
sv USBConnectionSpeed_Full               2 -Option Constant
sv USBConnectionSpeed_High               3 -Option Constant
sv USBConnectionSpeed_Super              4 -Option Constant
sv USBConnectionSpeed_SuperPlus          5 -Option Constant

sv USBDeviceState_NotSupported          0 -Option Constant
sv USBDeviceState_Unavailable           1 -Option Constant
sv USBDeviceState_Busy                  2 -Option Constant
sv USBDeviceState_Available             3 -Option Constant
sv USBDeviceState_Held                  4 -Option Constant
sv USBDeviceState_Captured              5 -Option Constant

sv USBDeviceFilterAction_Null            0 -Option Constant
sv USBDeviceFilterAction_Ignore          1 -Option Constant
sv USBDeviceFilterAction_Hold            2 -Option Constant

sv AudioDriverType_Null                 0 -Option Constant
sv AudioDriverType_WinMM                1 -Option Constant
sv AudioDriverType_OSS                  2 -Option Constant
sv AudioDriverType_ALSA                 3 -Option Constant
sv AudioDriverType_DirectSound          4 -Option Constant
sv AudioDriverType_CoreAudio            5 -Option Constant
sv AudioDriverType_MMPM                 6 -Option Constant
sv AudioDriverType_Pulse                7 -Option Constant
sv AudioDriverType_SolAudio             8 -Option Constant

sv AudioControllerType_AC97          0 -Option Constant
sv AudioControllerType_SB16          1 -Option Constant
sv AudioControllerType_HDA           2 -Option Constant

sv AudioCodecType_Null              0 -Option Constant
sv AudioCodecType_SB16              1 -Option Constant
sv AudioCodecType_STAC9700          2 -Option Constant
sv AudioCodecType_AD1980            3 -Option Constant
sv AudioCodecType_STAC9221          4 -Option Constant

sv AuthType_Null              0 -Option Constant
sv AuthType_External          1 -Option Constant
sv AuthType_Guest             2 -Option Constant

sv Reason_Unspecified             0 -Option Constant
sv Reason_HostSuspend             1 -Option Constant
sv Reason_HostResume              2 -Option Constant
sv Reason_HostBatteryLow          3 -Option Constant
sv Reason_Snapshot                4 -Option Constant

sv StorageBus_Null            0 -Option Constant
sv StorageBus_IDE             1 -Option Constant
sv StorageBus_SATA            2 -Option Constant
sv StorageBus_SCSI            3 -Option Constant
sv StorageBus_Floppy          4 -Option Constant
sv StorageBus_SAS             5 -Option Constant
sv StorageBus_USB             6 -Option Constant

sv StorageControllerType_Null                 0 -Option Constant
sv StorageControllerType_LsiLogic             1 -Option Constant
sv StorageControllerType_BusLogic             2 -Option Constant
sv StorageControllerType_IntelAhci            3 -Option Constant
sv StorageControllerType_PIIX3                4 -Option Constant
sv StorageControllerType_PIIX4                5 -Option Constant
sv StorageControllerType_ICH6                 6 -Option Constant
sv StorageControllerType_I82078               7 -Option Constant
sv StorageControllerType_LsiLogicSas          8 -Option Constant
sv StorageControllerType_USB                  9 -Option Constant

sv ChipsetType_Null           0 -Option Constant
sv ChipsetType_PIIX3          1 -Option Constant
sv ChipsetType_ICH9           2 -Option Constant

sv NATAliasMode_AliasLog                    0x1 -Option Constant
sv NATAliasMode_AliasProxyOnly             0x02 -Option Constant
sv NATAliasMode_AliasUseSamePorts          0x04 -Option Constant

sv NATProtocol_UDP          0 -Option Constant
sv NATProtocol_TCP          1 -Option Constant

sv BandwidthGroupType_Null             0 -Option Constant
sv BandwidthGroupType_Disk             1 -Option Constant
sv BandwidthGroupType_Network          2 -Option Constant

sv VBoxEventType_Invalid                                           0 -Option Constant
sv VBoxEventType_Any                                               1 -Option Constant
sv VBoxEventType_Vetoable                                          2 -Option Constant
sv VBoxEventType_MachineEvent                                      3 -Option Constant
sv VBoxEventType_SnapshotEvent                                     4 -Option Constant
sv VBoxEventType_InputEvent                                        5 -Option Constant
sv VBoxEventType_LastWildcard                                     31 -Option Constant
sv VBoxEventType_OnMachineStateChanged                            32 -Option Constant
sv VBoxEventType_OnMachineDataChanged                             33 -Option Constant
sv VBoxEventType_OnExtraDataChanged                               34 -Option Constant
sv VBoxEventType_OnExtraDataCanChange                             35 -Option Constant
sv VBoxEventType_OnMediumRegistered                               36 -Option Constant
sv VBoxEventType_OnMachineRegistered                              37 -Option Constant
sv VBoxEventType_OnSessionStateChanged                            38 -Option Constant
sv VBoxEventType_OnSnapshotTaken                                  39 -Option Constant
sv VBoxEventType_OnSnapshotDeleted                                40 -Option Constant
sv VBoxEventType_OnSnapshotChanged                                41 -Option Constant
sv VBoxEventType_OnGuestPropertyChanged                           42 -Option Constant
sv VBoxEventType_OnMousePointerShapeChanged                       43 -Option Constant
sv VBoxEventType_OnMouseCapabilityChanged                         44 -Option Constant
sv VBoxEventType_OnKeyboardLedsChanged                            45 -Option Constant
sv VBoxEventType_OnStateChanged                                   46 -Option Constant
sv VBoxEventType_OnAdditionsStateChanged                          47 -Option Constant
sv VBoxEventType_OnNetworkAdapterChanged                          48 -Option Constant
sv VBoxEventType_OnSerialPortChanged                              49 -Option Constant
sv VBoxEventType_OnParallelPortChanged                            50 -Option Constant
sv VBoxEventType_OnStorageControllerChanged                       51 -Option Constant
sv VBoxEventType_OnMediumChanged                                  52 -Option Constant
sv VBoxEventType_OnVRDEServerChanged                              53 -Option Constant
sv VBoxEventType_OnUSBControllerChanged                           54 -Option Constant
sv VBoxEventType_OnUSBDeviceStateChanged                          55 -Option Constant
sv VBoxEventType_OnSharedFolderChanged                            56 -Option Constant
sv VBoxEventType_OnRuntimeError                                   57 -Option Constant
sv VBoxEventType_OnCanShowWindow                                  58 -Option Constant
sv VBoxEventType_OnShowWindow                                     59 -Option Constant
sv VBoxEventType_OnCPUChanged                                     60 -Option Constant
sv VBoxEventType_OnVRDEServerInfoChanged                          61 -Option Constant
sv VBoxEventType_OnEventSourceChanged                             62 -Option Constant
sv VBoxEventType_OnCPUExecutionCapChanged                         63 -Option Constant
sv VBoxEventType_OnGuestKeyboard                                  64 -Option Constant
sv VBoxEventType_OnGuestMouse                                     65 -Option Constant
sv VBoxEventType_OnNATRedirect                                    66 -Option Constant
sv VBoxEventType_OnHostPCIDevicePlug                              67 -Option Constant
sv VBoxEventType_OnVBoxSVCAvailabilityChanged                     68 -Option Constant
sv VBoxEventType_OnBandwidthGroupChanged                          69 -Option Constant
sv VBoxEventType_OnGuestMonitorChanged                            70 -Option Constant
sv VBoxEventType_OnStorageDeviceChanged                           71 -Option Constant
sv VBoxEventType_OnClipboardModeChanged                           72 -Option Constant
sv VBoxEventType_OnDnDModeChanged                                 73 -Option Constant
sv VBoxEventType_OnNATNetworkChanged                              74 -Option Constant
sv VBoxEventType_OnNATNetworkStartStop                            75 -Option Constant
sv VBoxEventType_OnNATNetworkAlter                                76 -Option Constant
sv VBoxEventType_OnNATNetworkCreationDeletion                     77 -Option Constant
sv VBoxEventType_OnNATNetworkSetting                              78 -Option Constant
sv VBoxEventType_OnNATNetworkPortForward                          79 -Option Constant
sv VBoxEventType_OnGuestSessionStateChanged                       80 -Option Constant
sv VBoxEventType_OnGuestSessionRegistered                         81 -Option Constant
sv VBoxEventType_OnGuestProcessRegistered                         82 -Option Constant
sv VBoxEventType_OnGuestProcessStateChanged                       83 -Option Constant
sv VBoxEventType_OnGuestProcessInputNotify                        84 -Option Constant
sv VBoxEventType_OnGuestProcessOutput                             85 -Option Constant
sv VBoxEventType_OnGuestFileRegistered                            86 -Option Constant
sv VBoxEventType_OnGuestFileStateChanged                          87 -Option Constant
sv VBoxEventType_OnGuestFileOffsetChanged                         88 -Option Constant
sv VBoxEventType_OnGuestFileRead                                  89 -Option Constant
sv VBoxEventType_OnGuestFileWrite                                 90 -Option Constant
sv VBoxEventType_OnVideoCaptureChanged                            91 -Option Constant
sv VBoxEventType_OnGuestUserStateChanged                          92 -Option Constant
sv VBoxEventType_OnGuestMultiTouch                                93 -Option Constant
sv VBoxEventType_OnHostNameResolutionConfigurationChange          94 -Option Constant
sv VBoxEventType_OnSnapshotRestored                               95 -Option Constant
sv VBoxEventType_OnMediumConfigChanged                            96 -Option Constant
sv VBoxEventType_Last                                             97 -Option Constant

sv GuestMouseEventMode_Relative          0 -Option Constant
sv GuestMouseEventMode_Absolute          1 -Option Constant

sv GuestMonitorChangedEventType_Enabled            0 -Option Constant
sv GuestMonitorChangedEventType_Disabled           1 -Option Constant
sv GuestMonitorChangedEventType_NewOrigin          2 -Option Constant

function Select-Substring([string]$Text, [string]$Start, [string]$End) {
	$s = $Text.IndexOf($Start) + 1
	$e = $Text.LastIndexOf($End)
	$Text.Substring($s, $e - $s)
}

# Auto-gen
function Out-VBoxSDKEnum {
	Remove-Item VBoxSDKEnum.txt

	$header = "$HOME\Downloads\VirtualBoxSDK-5.0.20-106931\bindings\mscom\idl\VirtualBox.idl"
	$headerString = (Get-Content $header) -join ""
	$headerString | sls "typedef enum .*?{.*?}.*?;" -AllMatches | % {
		$_.Matches.Value | % {
			$consts = (Select-Substring $_ '{' '}').Split(',') -replace ' ', ''
			$maxLength = ($consts | Measure-Object -Maximum -Property Length).Maximum
			$consts | % {
				$arr = $_.Split('=').Trim()
				$cmdlet = "sv {0} {1} -Option Constant" -f $arr[0].PadRight($maxLength - 2), $arr[1].PadLeft(10)
				$cmdlet | Out-File -Append VBoxSDKEnum.txt
			}
			"" | Out-File -Append VBoxSDKEnum.txt
		}
	}
}

Export-ModuleMember -Variable "*"
