load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "build_bazel_rules_ios",
    remote = "https://github.com/bazel-ios/rules_ios.git",
    commit = "3884a206840967cee89c4bf16202bd726c118772",
)

load(
    "@build_bazel_rules_ios//rules:repositories.bzl",
    "rules_ios_dependencies"
)

rules_ios_dependencies()

git_repository(
    name = "rules_xcodeproj",
    remote = "https://github.com/MobileNativeFoundation/rules_xcodeproj.git",
    commit = "6f293d8241f71dd523667cccf15eae48e9a61996"
)

# http_archive(
#     name = "rules_xcodeproj",
#     sha256 = "672a5752a16d4fdb83d872ffe2859f1b6f2f2806558ea0185376738179ed421d",
#     url = "https://github.com/MobileNativeFoundation/rules_xcodeproj/releases/download/1.7.0/release.tar.gz",
# )

load(
    "@rules_xcodeproj//xcodeproj:repositories.bzl",
    "xcodeproj_rules_dependencies",
)

xcodeproj_rules_dependencies()

# http_archive(
#     name = "rules_apple_linker",
#     sha256 = "b9d6bdf4b1c8e0107bbdb3f71d4b59ba5a16029e438e23d2c4d448b04693d72e",
#     strip_prefix = "rules_apple_linker-0.3.1",
#     url = "https://github.com/keith/rules_apple_linker/archive/refs/tags/0.3.1.tar.gz",
# )

# load("@rules_apple_linker//:deps.bzl", "rules_apple_linker_deps")

# rules_apple_linker_deps()

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()
