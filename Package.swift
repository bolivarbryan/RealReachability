// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RealReachability",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "RealReachability",
            targets: ["RealReachability"]
        )
    ],
    targets: [
        .target(
            name: "RealReachability",
            path: "RealReachability",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Connection"),
                .headerSearchPath("FSM"),
                .headerSearchPath("Ping")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
