import qbs
import qbs.FileInfo

StaticLibrary
{
    property stringList paths: []

    targetName: qbs.buildVariant == "debug" ? name + "d" : name
    
    Export
    {
        Depends { name: "cpp" }
        cpp.link: false
    }
    
    Depends { name: "cpp" }
    
    Group
    {
        qbs.install: true
        qbs.installDir: project.installDirectory
        fileTagsFilter: ["staticlibrary"]
    }
}
