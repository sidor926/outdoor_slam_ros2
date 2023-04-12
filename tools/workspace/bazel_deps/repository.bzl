load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def bazel_deps_repository():
    commit = "cd2b0315dfa6d718b5793089da66c4a8a80e4f31"
    http_archive(
        name = "com_github_sidor926_bazel_deps",
        url = "https://github.com/sidor926/bazel_deps/archive/{}.zip".format(commit),
        # Try the following empty sha256 hash first, then replace with whatever
        # bazel says it is looking for once it complains.
        sha256 = "324963d791d4a6d5991642221cc7addcc65728039c02e76e6f109cb666856840",
        strip_prefix = "bazel_deps-{}".format(commit),
    )

