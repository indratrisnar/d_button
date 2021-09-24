library d_button;

import 'package:flutter/material.dart';

/// Use static method to return custom button widget like [DButton.circle(child: Icon(Icons.favorite))]
class DButtonShadow extends StatelessWidget {
  /// [mainColor] body color of button. Default: Colors.white
  Color mainColor;

  /// [splashColor] color for splash effect. Default: Colors.grey
  Color splashColor;

  /// [shadowColor] color for shadow button. Default: Colors.black38
  Color shadowColor;

  /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
  Color disableColor;

  /// [onClick] action when button clicked
  Function()? onClick;

  /// [onDoubleClick] action when button double clicked
  Function()? onDoubleClick;

  /// [onLongClick] action when button long press
  Function()? onLongClick;

  /// [width] width of button
  double? width;

  /// [height] height of button
  double? height;

  /// [padding] padding of button
  EdgeInsetsGeometry? padding;

  /// [child] child of button. Widget can be anything as can as possible
  Widget child;

  /// [radius] radius for angle button. Default: 4.0
  double radius;

  /// [shadowOffset] Position of shadow button. Default: Offset.zero
  Offset shadowOffset;

  DButtonShadow({
    required this.child,
    this.disableColor = Colors.grey,
    this.height,
    this.mainColor = Colors.white,
    this.onClick,
    this.onDoubleClick,
    this.onLongClick,
    this.padding,
    this.radius = 4.0,
    this.shadowColor = Colors.black38,
    this.shadowOffset = Offset.zero,
    this.splashColor = Colors.grey,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: shadowColor,
            offset: shadowOffset,
          ),
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(radius),
        color: onClick == null && onDoubleClick == null && onLongClick == null
            ? disableColor
            : mainColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          splashColor: splashColor,
          onTap: onClick,
          onLongPress: onLongClick,
          onDoubleTap: onDoubleClick,
          child: Container(
            width: width,
            height: height,
            padding: width == null
                ? padding ??
                    EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    )
                : height == null
                    ? EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 8,
                      )
                    : null,
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}

/// [DButtonFlat] return custom button which has flat
class DButtonFlat extends StatelessWidget {
  /// [mainColor] body color of button. Default: Colors.white
  Color mainColor;

  /// [splashColor] color for splash effect. Default: Colors.grey
  Color splashColor;

  /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
  Color disableColor;

  /// [onClick] action when button clicked
  Function()? onClick;

  /// [onDoubleClick] action when button double clicked
  Function()? onDoubleClick;

  /// [onLongClick] action when button long press
  Function()? onLongClick;

  /// [width] width of button
  double? width;

  /// [height] height of button
  double? height;

  /// [padding] padding of button
  EdgeInsetsGeometry? padding;

  /// [child] child of button. Widget can be anything as can as possible
  Widget child;

  /// [radius] radius for angle button. Default: 4.0
  double radius;

  DButtonFlat({
    required this.child,
    this.disableColor = Colors.grey,
    this.height,
    this.mainColor = Colors.white,
    this.onClick,
    this.onDoubleClick,
    this.onLongClick,
    this.padding,
    this.radius = 4.0,
    this.splashColor = Colors.grey,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      color: onClick == null && onDoubleClick == null && onLongClick == null
          ? disableColor
          : mainColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        splashColor: splashColor,
        onTap: onClick,
        onLongPress: onLongClick,
        onDoubleTap: onDoubleClick,
        child: Container(
          width: width,
          height: height,
          padding: width == null
              ? padding ??
                  EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  )
              : height == null
                  ? EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 8,
                    )
                  : null,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

/// return custom button which has elevation
class DButtonElevation extends StatelessWidget {
  /// [mainColor] body color of button. Default: Colors.white
  Color mainColor;

  /// [splashColor] color for splash effect. Default: Colors.grey
  Color splashColor;

  /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
  Color disableColor;

  /// [shadowColor] color for shadow button
  Color? shadowColor;

  /// [onClick] action when button clicked
  Function()? onClick;

  /// [onDoubleClick] action when button double clicked
  Function()? onDoubleClick;

  /// [onLongClick] action when button long press
  Function()? onLongClick;

  /// [width] width of button
  double? width;

  /// [height] height of button
  double? height;

  /// [elevation] elevation of button
  double? elevation;

  /// [padding] padding of button
  EdgeInsetsGeometry? padding;

  /// [child] child of button. Widget can be anything as can as possible
  Widget child;

  /// [radius] radius for angle button. Default: 4.0
  double radius;
  DButtonElevation({
    required this.child,
    this.disableColor = Colors.grey,
    this.elevation,
    this.height,
    this.mainColor = Colors.white,
    this.onClick,
    this.onDoubleClick,
    this.onLongClick,
    this.padding,
    this.radius = 4.0,
    this.shadowColor,
    this.splashColor = Colors.grey,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: shadowColor,
      elevation: elevation ?? 4,
      borderRadius: BorderRadius.circular(radius),
      color: onClick == null && onDoubleClick == null && onLongClick == null
          ? disableColor
          : mainColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        splashColor: splashColor,
        onTap: onClick,
        onLongPress: onLongClick,
        onDoubleTap: onDoubleClick,
        child: Container(
          width: width,
          height: height,
          padding: width == null
              ? padding ??
                  EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  )
              : height == null
                  ? EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 8,
                    )
                  : null,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

/// return custom button circle
class DButtonCircle extends StatelessWidget {
  /// [mainColor] body color of button. Default: Colors.white
  Color mainColor;

  /// [splashColor] color for splash effect. Default: Colors.grey
  Color splashColor;

  /// [shadowColor] color for shadow button
  Color? shadowColor;

  /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
  Color disableColor;

  /// [onClick] action when button clicked
  Function()? onClick;

  /// [onDoubleClick] action when button double clicked
  Function()? onDoubleClick;

  /// [onLongClick] action when button long press
  Function()? onLongClick;

  /// [diameter] diameter of circle button
  double? diameter;

  /// [padding] padding of button
  EdgeInsetsGeometry? padding;

  /// [child] child of button. Widget can be anything as can as possible
  Widget child;

  /// [shadowOffset] Position of shadow button. Default: Offset.zero
  Offset shadowOffset;
  DButtonCircle({
    required this.child,
    this.diameter,
    this.disableColor = Colors.grey,
    this.mainColor = Colors.white,
    this.onClick,
    this.onDoubleClick,
    this.onLongClick,
    this.padding,
    this.shadowColor,
    this.shadowOffset = Offset.zero,
    this.splashColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: shadowColor == null
            ? []
            : [
                BoxShadow(
                  blurRadius: 5,
                  color: shadowColor!,
                  offset: shadowOffset,
                ),
              ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(diameter ?? 1000),
        color: onClick == null && onDoubleClick == null && onLongClick == null
            ? disableColor
            : mainColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(diameter ?? 1000),
          splashColor: splashColor,
          onTap: onClick,
          onLongPress: onLongClick,
          onDoubleTap: onDoubleClick,
          child: padding == null
              ? Container(
                  width: diameter,
                  height: diameter,
                  alignment: Alignment.center,
                  child: child,
                )
              : Padding(
                  padding: padding!,
                  child: child,
                ),
        ),
      ),
    );
  }
}

/// return custom button which has border
class DButtonBorder extends StatelessWidget {
  /// [mainColor] body color of button. Default: Colors.white
  Color mainColor;

  /// [borderColor] color of border
  Color borderColor;

  /// [borderWidth] sized of border width. Default: 2.0
  double borderWidth;

  /// [splashColor] color for splash effect. Default: Colors.grey
  Color splashColor;

  /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
  Color disableColor;

  /// [onClick] action when button clicked
  Function()? onClick;

  /// [onDoubleClick] action when button double clicked
  Function()? onDoubleClick;

  /// [onLongClick] action when button long press
  Function()? onLongClick;

  /// [width] width of button
  double? width;

  /// [height] height of button
  double? height;

  /// [padding] padding of button
  EdgeInsetsGeometry? padding;

  /// [child] child of button. Widget can be anything as can as possible
  Widget child;

  /// [radius] radius for angle button. Default: 4.0
  double radius;

  /// [shadowOffset] Position of shadow button. Default: Offset.zero
  Offset shadowOffset;
  DButtonBorder({
    required this.borderColor,
    this.borderWidth = 2.0,
    required this.child,
    this.disableColor = Colors.grey,
    this.height,
    this.mainColor = Colors.white,
    this.onClick,
    this.onDoubleClick,
    this.onLongClick,
    this.padding,
    this.radius = 4.0,
    this.shadowOffset = Offset.zero,
    this.splashColor = Colors.grey,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      color: onClick == null && onDoubleClick == null && onLongClick == null
          ? disableColor
          : mainColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        splashColor: splashColor,
        onTap: onClick,
        onLongPress: onLongClick,
        onDoubleTap: onDoubleClick,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: borderColor, width: borderWidth),
          ),
          width: width,
          height: height,
          padding: width == null
              ? height == null
                  ? EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    )
                  : padding
              : height == null
                  ? EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 8,
                    )
                  : padding ?? null,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
