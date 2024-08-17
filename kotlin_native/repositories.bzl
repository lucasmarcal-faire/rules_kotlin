load(
    "//src/main/starlark/core/repositories:initialize.bzl",
    _kotlinc_native_version = "kotlinc_native_version",
    _versions = "versions",
)

kotlinc_native_version = _kotlinc_native_version
versions = _versions