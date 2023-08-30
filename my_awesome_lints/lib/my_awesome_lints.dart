import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:my_awesome_lints/lint_rules/amend_model_suffix_lint.dart';
import 'package:my_awesome_lints/lint_rules/avoid_plain_text_password_lint.dart';

import 'lint_rules/one_service_class_per_file_lint.dart';
// import 'lint_rules/util_methods_be_static.dart';

// Entrypoint of plugin
PluginBase createPlugin() => _MyLints();

// The class listing all the [LintRule]s and [Assist]s defined by our plugin
class _MyLints extends PluginBase {
  // Lint rules
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AvoidPlainTextPassword(),
        AmendModelSuffix(),
        OneServiceClassPerFile(),
      ];

  // Assists
  @override
  List<Assist> getAssists() => [];
}
