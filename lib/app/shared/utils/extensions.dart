import 'package:flutter/material.dart';

extension ExtensionText on Text {
  Text h1({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.02,
      color: CustomTheme.textColor,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text productCardTitle({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.02,
      color: CustomTheme.textColor,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text productCardPrice({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.02,
      color: CustomTheme.primaryColor,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text subtitle({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      color: CustomTheme.primaryColor,
    );
    return Text(this.data.toUpperCase(),
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}

class CustomTheme {
  static Color get backgroundColor => Colors.white;
  static Color get primaryColor => Color(0xFF59A05E);
  static Color get secondaryColor => Color(0xFF86B557);
  static Color get darkColor => Color(0xFF438F51);
  static Color get textColor => Colors.black;
  static Color get discountColor => Colors.white;
}
