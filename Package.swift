// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CFreeType",
    products: [
        .library(name: "CFreeType", targets: ["CFreeType"])
    ],
    targets: [
        .systemLibrary(
            name: "CFreeType",
            pkgConfig: "freetype2",
            providers: [
                .apt(["libfreetype6-dev"]),
                .brew(["freetype2"])
            ]
        )
    ]
)
