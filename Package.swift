// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "WaiverWarrior",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(name: "WaiverWarriorCore", targets: ["WaiverWarriorCore"]),
        .executable(name: "waiver-warrior", targets: ["WaiverWarriorCLI"])
    ],
    targets: [
        .target(name: "WaiverWarriorCore"),
        .executableTarget(name: "WaiverWarriorCLI", dependencies: ["WaiverWarriorCore"])
    ]
)
