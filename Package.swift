// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "swift-ini",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
    ],
    products: [
        .library(name: "INI", targets: ["INI"])
    ],
    targets: [
        .target(name: "INI"),
        .testTarget(name: "INITests", dependencies: ["INI"]),
    ]
)
