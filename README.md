# flutter_phone_direct_caller

A simple plugin to call number directly from app, without going to phone dialer. Permission request is handled by plugin.

---

## ⚠️ Fork Notice
This is a **fork** of the [original flutter-phone-direct-caller repository](https://github.com/yanisalfian/flutter-phone-direct-caller). The purpose of this fork is to address compatibility issues with the Android Gradle Plugin 8.X+ by adding a `namespace` attribute and removing the deprecated `package` attribute in the AndroidManifest.xml file.

### Changes in This Fork:
1. Added a `namespace` property to the `build.gradle` file to comply with newer Android Gradle Plugin requirements.
2. Removed the `package` attribute from the `AndroidManifest.xml` file to fix build issues with AGP 8.X+.

If you're looking for the original, unmodified version, please visit the [original repository](https://github.com/yanisalfian/flutter-phone-direct-caller).

---

## Usage

Add dependency to pubspec.yaml file
```
flutter_phone_direct_caller: ^2.1.1
```

### Android
No need any additional configuration.

### iOS
Add this to your ```info.plist``` under ```dict``` 
```
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>tel</string>
</array>
```

## Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(Scaffold(
    body: Center(
      child: RaisedButton(
        onPressed: _callNumber,
        child: Text('Call Number'),
      ),
    ),
  ));
}

_callNumber() async{
  const number = '08592119XXXX'; //set the number here
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}
```

