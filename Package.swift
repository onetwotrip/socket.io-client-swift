// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "SocketIO",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v5)
    ],
    products: [
        .library(name: "SocketIO", targets: ["SocketIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/onetwotrip/Starscream", .revisionItem("0d7293cc4196a20bce356f1561a8ed8e868d760b")),
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
