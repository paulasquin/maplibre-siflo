// swift-tools-version:5.9
// MapLibre Native for iOS as Siflo builds it: maplibre-native's feature/terrain-3d (3D terrain), from the `siflo` branch of
// https://github.com/paulasquin/maplibre-native, Metal renderer. Same product name as maplibre-gl-native-distribution.
import PackageDescription

let package = Package(
    name: "MapLibre",
    products: [.library(name: "MapLibre", targets: ["MapLibre"])],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://github.com/paulasquin/maplibre-siflo/releases/download/7.0.0-siflo.1/MapLibre-7.0.0-siflo.1.xcframework.zip",
            checksum: "2baacba134e8a92a82867b69398ceeba38e2eea98e4ca72e4f41b5d6d751d1d4"
        ),
    ]
)
