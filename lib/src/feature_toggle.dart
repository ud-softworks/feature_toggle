/// Instance of FeatureToggle Controller
// ignore: non_constant_identifier_names
final FeatureToggle = _FeatureToggle();

class _FeatureToggle {
  factory _FeatureToggle() => _ftInstance ??= _FeatureToggle._();

  const _FeatureToggle._();

  static _FeatureToggle? _ftInstance;

  void init() {
    print('Init');
  }

  bool isEnable(String feature) {
    return feature.startsWith('true.');
  }
}
