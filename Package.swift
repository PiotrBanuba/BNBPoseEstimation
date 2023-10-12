// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-2"

let package = Package(
    name: "BNBPoseEstimation",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBPoseEstimation",
            targets: ["BNBPoseEstimation"]
        ),
        .library(
            name: "BNBSdkCore",
            targets: ["BNBSdkCore"]
        ),
        .library(
            name: "BNBEffectPlayer",
            targets: ["BNBEffectPlayer"]
        ),
        .library(
            name: "BNBScripting",
            targets: ["BNBScripting"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBPoseEstimation",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBPoseEstimation.zip",
            checksum: "84074a90ecee7cd0888bcbf3eb793a8b3b2271113b9f0b08066550106c383f10"
        ),
        .target(
            name: "BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
