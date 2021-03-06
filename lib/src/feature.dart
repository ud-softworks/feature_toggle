import 'package:flutter/material.dart';

import 'feature_toggle.dart';

/// Feature with very a good description.
/// I cross my fingers that nobody reads this right now.
class Feature extends StatelessWidget {
  /// Create a new FeatureToggle
  Feature(
    this.feature, {
    Key? key,
    this.parent,
    this.child = const SizedBox.shrink(),
    this.empty = const SizedBox.shrink(),
  }) : super(key: key);

  /// Name of this feature
  final String feature;

  /// If your Widget needs to have a parent widget.
  final Widget? parent;

  /// Widget to be rendered when this feature is enabled.
  final Widget child;

  /// Widget to be rendered when this is disabled.
  final Widget empty;

  @override
  Widget build(BuildContext context) {
    return FeatureToggle.isEnable(feature) ? child : empty;
  }
}
