import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';

String getPlatform() {
  if (kIsWeb) {
    return 'WEB';
  } else if (Platform.isAndroid) {
    return 'ANDROID';
  } else {
    return 'IOS';
  }
}

bool isPlatformMobile() => isAndroid() || isIOS();

bool isAndroid() => kIsWeb ? false : Platform.isAndroid;

bool isIOS() => kIsWeb ? false : Platform.isIOS;

bool isWeb() => kIsWeb;
