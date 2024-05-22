// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "OCCT",
    platforms: [
      .macOS(.v12),
      .iOS(.v12)
    ],
    products: [
        .library(name: "OCCT", targets: ["libOCCT"]),
    ],
    targets: [
        .binaryTarget(name: "libOCCT",
                      url: "https://github.com/flipper0l/OCCT/releases/download/7.8.1/occt-V7_8_1.xcframework.zip",
                      checksum: "1c7ce11b14dbea760ad8a9fea0003fda28a1a50fcfac0b64a83bbb96b1d083fb")
    ],
    cxxLanguageStandard: .cxx20
)
