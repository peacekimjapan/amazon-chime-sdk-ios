// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AmazonChimeSDK",
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK"])
    ],
    dependencies: [    
        .package(url: "https://github.com/birdrides/mockingbird.git", from: "0.15.0")
    ],
    targets: [
        .target(name: "AmazonChimeSDK", path: "./AmazonChimeSDK/AmazonChimeSDK"),
        .testTarget(
            name: "AmazonChimeSDKTests",
            dependencies: ["AmazonChimeSDK"]
        ),
        .binaryTarget(
            name: "AmazonChimeSDK",
            url: "https://amazon-chime-sdk-ios.s3.amazonaws.com/sdk/0.16.5/AmazonChimeSDK-0.16.5.tar.gz",
            checksum: "1527aff1111416dd5dc5d17659668618"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://amazon-chime-sdk-ios.s3.amazonaws.com/media/0.12.1/AmazonChimeSDKMedia-0.12.1.tar.gz",
            checksum: "7b6bf631c95997010e54caa7068657b2"
        )
    ]
)