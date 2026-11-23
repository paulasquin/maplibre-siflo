# MapLibre Native, as Siflo builds it

Binary builds of [MapLibre Native](https://github.com/maplibre/maplibre-native) with 3D terrain, for the Siflo app, until
MapLibre releases 3D terrain itself. Built from the `siflo` branch of
[paulasquin/maplibre-native](https://github.com/paulasquin/maplibre-native) (maplibre-native's `feature/terrain-3d`, plus
Siflo's fixes). Licence: BSD 2-Clause, as MapLibre Native ([LICENSE.md](LICENSE.md)).

| Platform | Version | Source commit | How to use |
|---|---|---|---|
| Android (OpenGL ES, every ABI) | `org.maplibre.gl:android-sdk-opengl:13.7.1-siflo.3` | `ddb420e` | Maven repository `https://raw.githubusercontent.com/paulasquin/maplibre-siflo/main/maven` |
| iOS (Metal, XCFramework) | `7.0.0-siflo.1` | `e738bae` | Swift package `https://github.com/paulasquin/maplibre-siflo`, product `MapLibre` |

Android: `./gradlew -Pmaplibre.abis=all -PpublicationRepositoryUrl=file://<repo>/maven :MapLibreAndroid:publishOpenglReleasePublicationToConfiguredRepository`
in `platform/android`. iOS: `bazelisk build //platform/ios:MapLibre.dynamic --//:renderer=metal --compilation_mode=opt`; the
zip is attached to the release of the same tag, its checksum in `Package.swift`.
