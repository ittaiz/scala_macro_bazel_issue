def _scala_import_impl(ctx): 
    java_provider = java_common.create_provider(
        compile_time_jars = ctx.attr.jar_to_import.files,
        runtime_jars = ctx.attr.jar_to_import.files,
    )
    rule_outputs = struct(
          ijar = ctx.attr.jar_to_import.files.to_list()[0],
          class_jar = ctx.attr.jar_to_import.files.to_list()[0],
    )
    scalaattr = struct(
      outputs = rule_outputs,
      #does not seem to help or hurt IDE so I commented it out
      #compile_jars = depset(ctx.attr.jar_to_import.files), 
      #transitive_runtime_jars = depset(ctx.attr.jar_to_import.files),
    )
    return struct(
        scala = scalaattr,
        providers = [java_provider],
    )


scala_import = rule(
  implementation=_scala_import_impl,
  attrs={
      "jar_to_import": attr.label(allow_files=True),
      },
)
