rules_scala_version="031e73c02e0d8bfcd06c6e4086cdfc7f3a3061a8" # update this as needed

http_archive(
             name = "io_bazel_rules_scala",
             url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
             type = "zip",
             strip_prefix= "rules_scala-%s" % rules_scala_version
)
load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

maven_jar(
    name = "me_chrons_boopickle_2_11",
    artifact = "me.chrons:boopickle_2.11:1.2.4",
)