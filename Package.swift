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
            targets: ["OKTracer", "OKTracer.bundle"]),
    ],
    dependencies: [
    ],
    
    targets: [
        .target(
            name: "OKTracer.bundle", resources: [.process("OKTracer.bundle.zip")]
        ),
        .binaryTarget(
            name: "OKTracer",
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.14/OKTracer.xcframework.zip",
            checksum: "fe22c6b06a16b6bd5e494e23a259d67264c2d840a425b74fba05b70d94a28cfe")
    ]
)
