// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "SwiftAlamofireExample",
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.0")
    ],
    targets: [
        .target(
            name: "SwiftAlamofireExample",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "SwiftAlamofireExampleTests",
            dependencies: ["SwiftAlamofireExample"]),
    ]
)
