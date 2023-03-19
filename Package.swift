// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "OKTracerPackage",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "OKTracerPackage",
            targets: ["OKTracerPackage", "OKTracer"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OKTracerPackage",
            path: "Sources"
        ),
        .binaryTarget(
            name: "OKTracer",
            url: "https://github.com/DRybochkin/Packages/files/11011284/OKTracer.xcframework.zip",
            checksum: "543dbca5f62a27194b4ef488bac6646b32617b3ca3ebbf4cb3ce0ee3561a8ba3")
    ]
)
