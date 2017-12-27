// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CFreeType",
    pkgConfig: "freetype2",
    providers: [
        .apt(["libfreetype6-dev"]),
        .brew(["freetype2"])
    ],
    products: [
        .library(name: "CFreeType", targets: ["CFreeType"])
    ],
    targets: [
        .target(name: "CFreeType")
    ]
)
