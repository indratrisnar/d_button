library d_button;

import 'package:flutter/material.dart';

class DButton {
  static Widget shadow({
    Color mainColor = Colors.white,
    Color splashColor = Colors.grey,
    Color shadowColor = Colors.black38,
    Color disableColor = Colors.grey,
    Function? onClick,
    Function? onDoubleClick,
    Function? onLongClick,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
    required Widget child,
    double radius = 4.0,
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
      ),
    );
  }

  static Widget flat({
    Color mainColor = Colors.white,
    Color splashColor = Colors.grey,
    Color disableColor = Colors.grey,
    Function? onClick,
    Function? onDoubleClick,
    Function? onLongClick,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
    required Widget child,
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

  static Widget elevation({
    Color mainColor = Colors.white,
    Color splashColor = Colors.grey,
    Color disableColor = Colors.grey,
    Color? shadowColor,
    Function? onClick,
    Function? onDoubleClick,
    Function? onLongClick,
    double? width,
    double? height,
    double? elevation,
    EdgeInsetsGeometry? padding,
    required Widget child,
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

  static Widget circle({
    Color mainColor = Colors.white,
    Color splashColor = Colors.grey,
    Color? shadowColor,
    Color disableColor = Colors.grey,
    Function? onClick,
    Function? onDoubleClick,
    Function? onLongClick,
    double? diameter,
    EdgeInsetsGeometry? padding,
    required Widget child,
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
}
