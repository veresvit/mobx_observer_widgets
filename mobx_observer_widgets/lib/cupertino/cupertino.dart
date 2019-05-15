import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ObserverText extends Observer {
  final TextStyle style;
  final StrutStyle strutStyle;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;

  ObserverText(String data(BuildContext context),
      {Key key,
      this.style,
      this.strutStyle,
      this.textAlign,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.maxLines,
      this.semanticsLabel})
      : super(
            key: key,
            builder: (context) => Text(
                  data(context),
                  style: style,
                  strutStyle: strutStyle,
                  textAlign: textAlign,
                  textDirection: textDirection,
                  locale: locale,
                  softWrap: softWrap,
                  overflow: overflow,
                  textScaleFactor: textScaleFactor,
                  maxLines: maxLines,
                  semanticsLabel: semanticsLabel,
                ));

  ObserverText.rich(TextSpan textSpan(BuildContext context),
      {Key key,
      this.style,
      this.strutStyle,
      this.textAlign,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.maxLines,
      this.semanticsLabel})
      : super(
            key: key,
            builder: (context) => Text.rich(
                  textSpan(context),
                  style: style,
                  strutStyle: strutStyle,
                  textAlign: textAlign,
                  textDirection: textDirection,
                  locale: locale,
                  softWrap: softWrap,
                  overflow: overflow,
                  textScaleFactor: textScaleFactor,
                  maxLines: maxLines,
                  semanticsLabel: semanticsLabel,
                ));
}
