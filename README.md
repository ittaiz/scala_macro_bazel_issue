# scala_macro_bazel_issue
Reproduction repo about scala macro and bazel issue

Commits show:
1. Failing compilation with java_library
2. Passing compilation but broken intellij imports with scala_library and "//jar:file" dependency
3. Hack which passes compilation and intellij by adding //jar to runtime_deps. Unclear effect on classpath
4. Basic scala_import which passes the build but intellij still doesn't recognize imports
