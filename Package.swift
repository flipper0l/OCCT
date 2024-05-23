// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "OCCT",
    platforms: [
      .macOS(.v12),
      .iOS(.v12)
    ],
    products: [
        .library(name: "OCCT-macos", targets: ["libOCCT-macos"]),
        .library(name: "OCCT-ios", targets: ["libOCCT-ios"]),
    ],
    targets: [
        .binaryTarget(name: "libOCCT-macos",
                      url: "https://github.com/flipper0l/OCCT-SPM/releases/download/7.8.1/macos-occt-V7_8_1.xcframework.zip",
                      checksum: "974cb34157e80f8657efbdf4da62a648650eed565fd7fd1abae01971a6a0e55f"),
        .binaryTarget(name: "libOCCT-ios",
                      url: "https://github.com/flipper0l/OCCT-SPM/releases/download/7.8.1/ios-occt-V7_8_1.xcframework.zip",
                      checksum: "79b4e45acc65cb5715d0a8ed03d067929f1fe95f60780a9c477b8fc3828b184f")
    ],
    cxxLanguageStandard: .cxx20
)
