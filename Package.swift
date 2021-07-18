// swift-tools-version:4.1
import PackageDescription

let package = Package(
    name: "Xcode9to10Preparation",
    products: [
        .library(name: "Xcode9to10Preparation", targets: ["Xcode9to10Preparation"])
    ],
    targets: [
        .target(name: "Xcode9to10Preparation", path: "Source"),
    ]
)
