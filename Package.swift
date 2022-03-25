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
            url: "https://amazon-chime-sdk-ios.s3.amazonaws.com/sdk/0.19.2/AmazonChimeSDK-0.19.2.tar.gz",
            checksum: "8473ef6c2625f810d30911fc2f314df61fc421ebb75726ff58fd912fc3b7ac19"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://amazon-chime-sdk-ios.s3.amazonaws.com/media/0.15.2/AmazonChimeSDKMedia-0.15.2.tar.gz",
            checksum: "4f3dc87cc0bbdd663e3bef2a81a05ade52e373b2c75c9d798a00b02c2fbe142c"
        )
    ]
)