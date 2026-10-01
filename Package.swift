// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "INDIKit",
    platforms: [.macOS(.v27)],
    products: [
        .library(name: "INDIKit", targets: ["INDIKit"])
    ],
    dependencies: [],
    targets: [
        .target(name: "INDIKit"),
        .testTarget(name: "INDIKitTests", dependencies: ["INDIKit"])
    ]
)
