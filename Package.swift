// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "TracerCrashReporter",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TracerCrashReporter",
            targets: ["TracerCrashReporter", "CrashReporter"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TracerCrashReporter",
            path: "Sources"
        ),
        .binaryTarget(
            name: "CrashReporter",
            url: "https://github.com/DRybochkin/TestXCRC/files/11009825/CrashReporter.xcframework.zip",
            checksum: "520526b3f705139743dfcd33abcf2812e1071d4bedfe62c6921b9af58f5552a2")
    ]
)
