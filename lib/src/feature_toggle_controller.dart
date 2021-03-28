/// Instance of FeatureToggle Controller
// ignore: non_constant_identifier_names
final FeatureToggleController = _FeatureToggleController();

class _FeatureToggleController {
  factory _FeatureToggleController() =>
      _ftInstance ??= _FeatureToggleController._();

  const _FeatureToggleController._();

  static _FeatureToggleController? _ftInstance;

  void init() {
    print('Init');
  }

  bool isEnable(String feature) {
    return feature.startsWith('true.');
  }
}
