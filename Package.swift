// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "OKTracer",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "OKTracer",
            targets: ["OKTracer"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OKTracer",
            dependencies: ["Binary"],
            path: "Sources",
            resources: [.process("rootca.cer")]),
        .binaryTarget(
            name: "Binary",
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.27/OKTracer.xcframework.zip",
            checksum: "ebe741e80491b2938bbae340b011525ae4964e127c0747774b999c0cc5aa753b")
    ]
)
