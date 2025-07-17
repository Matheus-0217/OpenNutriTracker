import 'dart:math';

class HeightSelector {
  final double initialHeight;
  final bool usesImperialUnits;
  static const double _rangeCM = 100;
  static const double _rangeFT = 10;
  static const double _minMetricHeight = 30;

  HeightSelector({
    required this.initialHeight,
    required this.usesImperialUnits,
  });


  double getMinValue() {
    final calculated = initialHeight - (usesImperialUnits ? _rangeFT : _rangeCM);

    return usesImperialUnits
        ? max(0, calculated)       
        : max(_minMetricHeight, calculated); 
}
  double getMaxValue() {
    final calculated = initialHeight + (usesImperialUnits ? _rangeFT : _rangeCM);
  return usesImperialUnits
      ? min(300 / 30.48, calculated) 
      : min(300, calculated);        
  }
}