Configuration MyDscConfiguration {
    Node "localhost" {
        File GopathBin {
            Type = "Directory"
            DestinationPath = "C:\Users\matt\Gopath\bin"
            Ensure = "Present"
        }
        File GopathPkg {
            Type = "Directory"
            DestinationPath = "C:\Users\matt\Gopath\pkg"
            Ensure = "Present"
        }
        File GopathSrc {
            Type = "Directory"
            DestinationPath = "C:\Users\matt\Gopath\src"
            Ensure = "Present"
        }
    }
}
MyDscConfiguration
