import 'dart:io' show Platform;

bool isMobile() => isAndroid() || isIOS();

bool isAndroid() => Platform.isAndroid;

bool isIOS() => Platform.isIOS;
