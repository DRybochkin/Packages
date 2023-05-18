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
            targets: ["OKTracer", "OKTracerResources"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "OKTracer",
            url: "https://github.com/DRybochkin/Packages/files/11507824/OKTracer.xcframework.zip",
            checksum: "db43ae30f55c0f2e9a20046947ac4ab724cd47311fc4dea0dfbc430ee7486e7d"),
        .binaryTarget(
            name: "OKTracerResources",
            url: "https://github.com/DRybochkin/Packages/files/11507825/TracerResources.xcframework.zip",
            checksum: "4ef00f3849dc2a13ce86b8d128c843e66ada8f6ebbcdf3e6b45a369965817afa")
    ]
)
