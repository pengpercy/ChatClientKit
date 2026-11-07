// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ChatClientKit",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .macCatalyst(.v17),
    ],
    products: [
        .library(name: "ChatClientKit", type: .dynamic, targets: ["ChatClientKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ChatClientKit",
            dependencies: [
                "ServerEvent",
            ]
        ),
        .target(name: "ServerEvent"),
        .testTarget(
            name: "ChatClientKitTests",
            dependencies: ["ChatClientKit"],
            resources: [
                .copy("Fixtures"),
            ]
        ),
    ]
)
