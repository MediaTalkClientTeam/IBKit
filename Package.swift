// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IBKit",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "SwiftUIPreview",
            targets: ["SwiftUIPreview"]),
        .library(
            name: "IBKit",
            targets: ["IBKit"]),
        .library(
            name: "IBKit-Preview",
            targets: ["IBKit-Preview"]),
        
    ],
    targets: [
        .target(
            name: "SwiftUIPreview"),
        .target(
            name: "IBKit"),
        .target(
            name: "IBKit-Preview",
            dependencies: ["SwiftUIPreview"]),
        .testTarget(
            name: "IBKitTests",
            dependencies: ["IBKit"]),
    ]
)
