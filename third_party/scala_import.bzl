def _scala_import_impl(ctx): 
    java_provider = java_common.create_provider(
        compile_time_jars = depset(ctx.attr.jar_to_import.files),
        runtime_jars = depset(ctx.attr.jar_to_import.files),
    )
    return struct(
        providers = [java_provider],
    )


scala_import = rule(
  implementation=_scala_import_impl,
  attrs={
      "jar_to_import": attr.label(allow_files=True),
      },
)
