// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.0.3"

let package = Package(
    name: "TruvideoSdkVideoUtils",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TruvideoSdkVideoUtils",
            targets: ["TruvideoSdkVideoUtilsTarget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "ffmpegkit",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/ffmpegkit.xcframework.zip",
            checksum: "1117f3182a6752e629ccd1a80364733c8004860e66bce3bd95b2d1e96fefd0e0"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavcodec.xcframework.zip",
            checksum: "c6a88f85ed7f96f18f3c0e647a75b00c212233dc63b97a70d2972163228c2220"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavdevice.xcframework.zip",
            checksum: "fb0d90f8c5420763eda194a41359466d6702abc5862ddfc4d4d3360711ce9f4d"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavfilter.xcframework.zip",
            checksum: "c516971f70fe4d52765f620622dd0a95afe84190a73ed9c2651697f8edb39576"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavformat.xcframework.zip",
            checksum: "b85f0c23190711ec4fec23d0a5a81e065e3fee4098e94bb7075f06a30d19dcb6"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libavutil.xcframework.zip",
            checksum: "de3264113c1271a075803f6fd62a663c98efc8370e12f7fbc7e1c514bfa11a67"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libswresample.xcframework.zip",
            checksum: "429835585f1163cec5c06b92513512e019b44dd2f50e84b136b7ab086fa5f4cb"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-video-utils/releases/download/\(version)/libswscale.xcframework.zip",
            checksum: "fc15fd89c8c4c42cffa2a8fa8d996551d7f9b25c93e36d1f1c589ea6a6268690"
        ),
        .target(
            name: "TruvideoSdkVideoUtilsTarget",
            dependencies: [
                "ffmpegkit",
                "libavcodec",
                "libavdevice",
                "libavfilter",
                "libavformat",
                "libavutil",
                "libswresample",
                "libswscale"
            ],
            path: "Sources"
        )
    ]
)
