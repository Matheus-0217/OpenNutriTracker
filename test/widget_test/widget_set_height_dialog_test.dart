import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:opennutritracker/generated/l10n.dart';
import 'package:opennutritracker/features/profile/presentation/widgets/set_height_dialog.dart';
import 'package:horizontal_picker/horizontal_picker.dart';
import 'package:opennutritracker/core/utils/height_selector.dart';



void main() {
  group('HeightSelector', () {
    test('altura máxima', () {
      final selector = HeightSelector(
        initialHeight: 250,
        usesImperialUnits: false,
      );

      final maxValue = selector.getMaxValue();

      expect(maxValue, lessThanOrEqualTo(350)); 
    });
 
   });
}
