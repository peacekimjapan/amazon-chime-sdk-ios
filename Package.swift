// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AmazonChimeSDK",
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK", "AmazonChimeSDKMedia"])
    ],
    dependencies: [    
        .package(url: "https://github.com/birdrides/mockingbird.git", from: "0.15.0")
    ],
    targets: [
        .binaryTarget(
            name: "AmazonChimeSDK",
            url: "https://{s3buckets}/AmazonChimeSDK.xcframework.zip",
            checksum: "{checksum of AmazonChimeSDK.xcframework.zip}"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://s3buckets/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "{checksum of AmazonChimeSDKMedia.xcframework.zip}"
        )
    ]
)