// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "OCCT",
    platforms: [
      .macOS(.v12),
      .iOS(.v12)
    ],
    products: [
        .library(name: "OCCT", targets: ["libOCCT"]),
        .library(name: "OCCT-macos", targets: ["libOCCT-macos"]),
        .library(name: "OCCT-ios", targets: ["libOCCT-ios"]),
    ],
    targets: [
        .binaryTarget(name: "libOCCT",
                      url: "https://github.com/flipper0l/OCCT-SPM/releases/download/7.8.1/occt-V7_8_1.xcframework.zip",
                      checksum: "460836ba6395d1b907d70827b402f5ce13435109cba091b7743fc61da239cd77"),
        .binaryTarget(name: "libOCCT-macos",
                      url: "https://github.com/flipper0l/OCCT-SPM/releases/download/7.8.1/macos-occt-V7_8_1.xcframework.zip",
                      checksum: "32767cd383cc1f05c03fabb45648b6d8d63f71a099ba3fd289f9ee040699b9ea"),
        .binaryTarget(name: "libOCCT-ios",
                      url: "https://github.com/flipper0l/OCCT-SPM/releases/download/7.8.1/ios-occt-V7_8_1.xcframework.zip",
                      checksum: "2260fb57441e433ba8af71647ea10abb15b0ff57a10ff68813f5b681d84677ff")
    ],
    cxxLanguageStandard: .cxx20
)
