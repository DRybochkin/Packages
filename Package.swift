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
            url: "https://nexus.odkl.ru/repository/dists/ios-debug-symbols/OKTracer/xcframeworks/0.1.19.32/OKTracerWrapperFramework.xcframework.zip",
            checksum: "13a9981099d60774960452f66e1a7890e3cc47b6749f797d983334a0f9e7b88e")
    ]
)
