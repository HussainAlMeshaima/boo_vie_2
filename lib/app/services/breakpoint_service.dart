// ignore_for_file: use_key_in_widget_constructors

library breakpoint;

import 'package:flutter/material.dart';

class BreakpointService {
  /// xSmall, small, medium, large, xLarge
  final WindowSize window;

  /// smallHandset, mediumHandset, largeHandset, smallTablet, largeTablet, desktop
  final LayoutClass device;

  /// Number of columns for content
  final int columns;

  /// Spacing between columns
  final double gutters;

  /// Following Material Design Guidelines [https://material.io/design/layout/responsive-layout-grid.html#grid-behavior]
  const BreakpointService({
    required this.columns,
    required this.device,
    required this.gutters,
    required this.window,
  });

  /// Following Material Design Guidlines [https://material.io/design/layout/responsive-layout-grid.html#grid-behavior]
  ///
  /// Use a layout builder to get [BoxConstraints]
  factory BreakpointService.fromConstraints(BoxConstraints constraints) {
    double _width = 359;

    Orientation orientation = Orientation.portrait;

    if (constraints.debugAssertIsValid()) {
      _width = constraints.normalize().maxWidth;
      orientation = constraints.maxHeight > constraints.maxWidth
          ? Orientation.portrait
          : Orientation.landscape;
    }

    return _calcBreakpoint(orientation, _width);
  }

  /// Following Material Design Guidlines [https://material.io/design/layout/responsive-layout-grid.html#grid-behavior]
  ///
  /// Uses [BuildContext] and [MediaQuery] to calculate the device breakpoint
  ///
  /// Use [Breakpoint.fromConstraints] when the widget does not take up the full screen
  factory BreakpointService.fromMediaQuery(BuildContext context) {
    final _media = MediaQuery.of(context);

    double _width = 359;

    Orientation orientation = Orientation.portrait;

    _width = _media.size.width;
    orientation = _media.orientation;

    return _calcBreakpoint(orientation, _width);
  }

  static BreakpointService _calcBreakpoint(Orientation orientation, double _width) {
    if (orientation == Orientation.landscape) {
      // ignore: parameter_assignments
      _width += 120;
    }

    if (_width >= 1920) {
      return const BreakpointService(
        columns: 12,
        gutters: 24,
        device: LayoutClass.desktop,
        window: WindowSize.xLarge,
      );
    }
    if (_width >= 1600) {
      return const BreakpointService(
        columns: 12,
        gutters: 24,
        device: LayoutClass.desktop,
        window: WindowSize.large,
      );
    }
    if (_width >= 1440) {
      return const BreakpointService(
        columns: 12,
        gutters: 24,
        device: LayoutClass.desktop,
        window: WindowSize.large,
      );
    }
    if (_width >= 1280) {
      return const BreakpointService(
        columns: 12,
        gutters: 24,
        device: LayoutClass.desktop,
        window: WindowSize.medium,
      );
    }
    if (_width >= 1024) {
      return const BreakpointService(
        columns: 12,
        gutters: 24,
        device: LayoutClass.desktop,
        window: WindowSize.medium,
      );
    }
    if (_width >= 960) {
      return const BreakpointService(
        columns: 12,
        gutters: 24,
        device: LayoutClass.largeTablet,
        window: WindowSize.small,
      );
    }
    if (_width >= 840) {
      return const BreakpointService(
        columns: 12,
        gutters: 24,
        device: LayoutClass.largeTablet,
        window: WindowSize.small,
      );
    }
    if (_width >= 720) {
      return const BreakpointService(
        columns: 8,
        gutters: 24,
        device: LayoutClass.largeTablet,
        window: WindowSize.small,
      );
    }
    if (_width >= 600) {
      return const BreakpointService(
        columns: 8,
        gutters: 16,
        device: LayoutClass.smallTablet,
        window: WindowSize.small,
      );
    }
    if (_width >= 480) {
      return const BreakpointService(
        columns: 4,
        gutters: 16,
        device: LayoutClass.largeHandset,
        window: WindowSize.xSmall,
      );
    }
    if (_width >= 400) {
      return const BreakpointService(
        columns: 4,
        gutters: 16,
        device: LayoutClass.largeHandset,
        window: WindowSize.xSmall,
      );
    }
    if (_width >= 360) {
      return const BreakpointService(
        columns: 4,
        gutters: 16,
        device: LayoutClass.mediumHandset,
        window: WindowSize.xSmall,
      );
    }
    return const BreakpointService(
      columns: 4,
      gutters: 16,
      device: LayoutClass.smallHandset,
      window: WindowSize.xSmall,
    );
  }

  @override
  String toString() {
    return '$window';
  }
}

class BreakpointBuilder extends StatelessWidget {
  const BreakpointBuilder({
    required this.builder,
    this.context,
  });
  final Widget Function(BuildContext, BreakpointService) builder;
  final BuildContext? context;
  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_context, constraints) =>
            builder(_context, BreakpointService.fromConstraints(constraints)),
      );
}

enum WindowSize {
  xSmall,
  small,
  medium,
  large,
  xLarge,
}

enum LayoutClass {
  smallHandset,
  mediumHandset,
  largeHandset,
  smallTablet,
  largeTablet,
  desktop,
}

extension WindowSizeOperators on WindowSize {
  int get value => WindowSize.values.indexOf(this);

  /// Whether this [WindowSize] is larger than [other].
  bool operator >(WindowSize other) => value > other.value;

  /// Whether this [WindowSize] is larger than or equal to [other].
  bool operator >=(WindowSize other) => value >= other.value;

  /// Whether this [WindowSize] is smaller than [other].
  bool operator <(WindowSize other) => value < other.value;

  /// Whether this [WindowSize] is smaller than or equal to [other].
  bool operator <=(WindowSize other) => value <= other.value;
}

extension LayoutClassOperators on LayoutClass {
  int get value => LayoutClass.values.indexOf(this);

  /// Whether this [LayoutClass] is larger than [other].
  bool operator >(LayoutClass other) => value > other.value;

  /// Whether this [LayoutClass] is larger than or equal to [other].
  bool operator >=(LayoutClass other) => value >= other.value;

  /// Whether this [LayoutClass] is smaller than [other].
  bool operator <(LayoutClass other) => value < other.value;

  /// Whether this [WindowSize] is smaller than or equal to [other].
  bool operator <=(LayoutClass other) => value <= other.value;
}
