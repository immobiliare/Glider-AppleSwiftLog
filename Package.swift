// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GliderSwiftLog",
    platforms: [
        .iOS(.v14), .macOS(.v11), .tvOS(.v14)
    ],
    products: [
        .library(name: "GliderSwiftLog", targets: ["GliderSwiftLog"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.2")
    ],
    targets: [
        .target(
            name: "GliderSwiftLog",
            dependencies: [
                "Glider",
                .product(name: "Logging", package: "swift-log")
            ],
            path:"GliderSwiftLog/Sources"
        ),
        .testTarget(
            name: "GliderSwiftLogTests",
            dependencies: [
                "Glider",
                "GliderSwiftLog"
            ],
            path: "Tests/GliderSwiftLogTests"
        )
    ]
)
