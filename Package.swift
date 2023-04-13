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
            targets: ["OKTracer"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "OKTracer",
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.29/OKTracer.xcframework.zip",
            checksum: "2a824cc8283e1f3b17ad2577642b28c8387434c6df3b16ce3ccee121693082b8")
    ]
)
