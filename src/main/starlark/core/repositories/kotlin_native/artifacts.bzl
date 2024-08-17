"""A map of label to artifacts made available by the konanc github repo"""

KONANC_ARTIFACTS = struct(
    runtime = {
        "kotlin-native": "lib/kotlin-native.jar",
    },
    compile = {
        "kotlin-native-compiler-embeddable": "lib/kotlin-native-compiler-embeddable.jar",
        "trove4j": "lib/trove4j.jar",
    },
    native_libs = {
        "libcallbacks": "lib/libcallbacks.dylib",
        "libclangstubs": "lib/libclangstubs.dylib",
        "libllvmstubs": "lib/libllvmstubs.dylib",
        "liborgjetbrainskotlinbackendkonanenvstubs": "lib/liborgjetbrainskotlinbackendkonanenvstubs.dylib",
        "liborgjetbrainskotlinbackendkonanfilesstubs": "lib/liborgjetbrainskotlinbackendkonanfilesstubs.dylib",
    },
    platform_def = {
        #TODO: Add more platform definitions
    },
    platforms = {
        "zephyr": "platforms/zephyr/stm32f4_disco",
    }
)

KONANC_ARTIFACT_LIST = {
    label: file
    for type in ["runtime", "compile", "native_libs", "platform_def", "platforms"]
    for (label, file) in getattr(KONAN_ARTIFACTS, type).items()
}
