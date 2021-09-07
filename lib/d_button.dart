library d_button;

import 'package:flutter/material.dart';

/// Use static method to return custom button widget like [DButton.circle(child: Icon(Icons.favorite))]
class DButton {
  /// [shadow] return custom button which has shadow
  static Widget shadow({
    /// [mainColor] body color of button. Default: Colors.white
    Color mainColor = Colors.white,

    /// [splashColor] color for splash effect. Default: Colors.grey
    Color splashColor = Colors.grey,

    /// [shadowColor] color for shadow button. Default: Colors.black38
    Color shadowColor = Colors.black38,

    /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
    Color disableColor = Colors.grey,

    /// [onClick] action when button clicked
    Function? onClick,

    /// [onDoubleClick] action when button double clicked
    Function? onDoubleClick,

    /// [onLongClick] action when button long press
    Function? onLongClick,

    /// [width] width of button
    double? width,

    /// [height] height of button
    double? height,

    /// [padding] padding of button
    EdgeInsetsGeometry? padding,

    /// [child] child of button. Widget can be anything as can as possible
    required Widget child,

    /// [radius] radius for angle button. Default: 4.0
    double radius = 4.0,

    /// [shadowOffset] Position of shadow button. Default: Offset.zero
    Offset shadowOffset = Offset.zero,
  }) {
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
          onTap: onClick == null ? null : () => onClick(),
          onLongPress: onLongClick == null ? null : () => onLongClick(),
          onDoubleTap: onDoubleClick == null ? null : () => onDoubleClick(),
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

  /// [flat] return custom button which has flat
  static Widget flat({
    /// [mainColor] body color of button. Default: Colors.white
    Color mainColor = Colors.white,

    /// [splashColor] color for splash effect. Default: Colors.grey
    Color splashColor = Colors.grey,

    /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
    Color disableColor = Colors.grey,

    /// [onClick] action when button clicked
    Function? onClick,

    /// [onDoubleClick] action when button double clicked
    Function? onDoubleClick,

    /// [onLongClick] action when button long press
    Function? onLongClick,

    /// [width] width of button
    double? width,

    /// [height] height of button
    double? height,

    /// [padding] padding of button
    EdgeInsetsGeometry? padding,

    /// [child] child of button. Widget can be anything as can as possible
    required Widget child,

    /// [radius] radius for angle button. Default: 4.0
    double radius = 4.0,
  }) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      color: onClick == null && onDoubleClick == null && onLongClick == null
          ? disableColor
          : mainColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        splashColor: splashColor,
        onTap: onClick == null ? null : () => onClick(),
        onLongPress: onLongClick == null ? null : () => onLongClick(),
        onDoubleTap: onDoubleClick == null ? null : () => onDoubleClick(),
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

  /// return custom button which has elevation
  static Widget elevation({
    /// [mainColor] body color of button. Default: Colors.white
    Color mainColor = Colors.white,

    /// [splashColor] color for splash effect. Default: Colors.grey
    Color splashColor = Colors.grey,

    /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
    Color disableColor = Colors.grey,

    /// [shadowColor] color for shadow button
    Color? shadowColor,

    /// [onClick] action when button clicked
    Function? onClick,

    /// [onDoubleClick] action when button double clicked
    Function? onDoubleClick,

    /// [onLongClick] action when button long press
    Function? onLongClick,

    /// [width] width of button
    double? width,

    /// [height] height of button
    double? height,

    /// [elevation] elevation of button
    double? elevation,

    /// [padding] padding of button
    EdgeInsetsGeometry? padding,

    /// [child] child of button. Widget can be anything as can as possible
    required Widget child,

    /// [radius] radius for angle button. Default: 4.0
    double radius = 4.0,
  }) {
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
        onTap: onClick == null ? null : () => onClick(),
        onLongPress: onLongClick == null ? null : () => onLongClick(),
        onDoubleTap: onDoubleClick == null ? null : () => onDoubleClick(),
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

  /// return custom button circle
  static Widget circle({
    /// [mainColor] body color of button. Default: Colors.white
    Color mainColor = Colors.white,

    /// [splashColor] color for splash effect. Default: Colors.grey
    Color splashColor = Colors.grey,

    /// [shadowColor] color for shadow button
    Color? shadowColor,

    /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
    Color disableColor = Colors.grey,

    /// [onClick] action when button clicked
    Function? onClick,

    /// [onDoubleClick] action when button double clicked
    Function? onDoubleClick,

    /// [onLongClick] action when button long press
    Function? onLongClick,

    /// [diameter] diameter of circle button
    double? diameter,

    /// [padding] padding of button
    EdgeInsetsGeometry? padding,

    /// [child] child of button. Widget can be anything as can as possible
    required Widget child,

    /// [shadowOffset] Position of shadow button. Default: Offset.zero
    Offset shadowOffset = Offset.zero,
  }) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: shadowColor == null
            ? []
            : [
                BoxShadow(
                  blurRadius: 5,
                  color: shadowColor,
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
          onTap: onClick == null ? null : () => onClick(),
          onLongPress: onLongClick == null ? null : () => onLongClick(),
          onDoubleTap: onDoubleClick == null ? null : () => onDoubleClick(),
          child: padding == null
              ? Container(
                  width: diameter,
                  height: diameter,
                  alignment: Alignment.center,
                  child: child,
                )
              : Padding(
                  padding: padding,
                  child: child,
                ),
        ),
      ),
    );
  }

  /// return custom button which has border
  static Widget border({
    /// [mainColor] body color of button. Default: Colors.white
    Color mainColor = Colors.white,

    /// [borderColor] color of border
    required Color borderColor,

    /// [borderWidth] sized of border width. Default: 2.0
    double borderWidth = 2.0,

    /// [splashColor] color for splash effect. Default: Colors.grey
    Color splashColor = Colors.grey,

    /// [disableColor] color button if button disable / function onClick off. Default: Colors.grey
    Color disableColor = Colors.grey,

    /// [onClick] action when button clicked
    Function? onClick,

    /// [onDoubleClick] action when button double clicked
    Function? onDoubleClick,

    /// [onLongClick] action when button long press
    Function? onLongClick,

    /// [width] width of button
    double? width,

    /// [height] height of button
    double? height,

    /// [padding] padding of button
    EdgeInsetsGeometry? padding,

    /// [child] child of button. Widget can be anything as can as possible
    required Widget child,

    /// [radius] radius for angle button. Default: 4.0
    double radius = 4.0,

    /// [shadowOffset] Position of shadow button. Default: Offset.zero
    Offset shadowOffset = Offset.zero,
  }) {
    return Material(
      borderRadius: BorderRadius.circular(radius),
      color: onClick == null && onDoubleClick == null && onLongClick == null
          ? disableColor
          : mainColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        splashColor: splashColor,
        onTap: onClick == null ? null : () => onClick(),
        onLongPress: onLongClick == null ? null : () => onLongClick(),
        onDoubleTap: onDoubleClick == null ? null : () => onDoubleClick(),
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
