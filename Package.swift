// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "AmazonChimeSDK",
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK"])
    ],
    targets: [
        .target(name: "AmazonChimeSDK", path: "AmazonChimeSDK")
    ]
)