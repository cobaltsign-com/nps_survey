<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# nps_survey

A Flutter component designed to collect Net Promoter Scores (NPS) from users.

## Example

![Example from iOS](https://github.com/cobaltsign-com/nps_survey/blob/main/doc/demo.gif?raw=true)

## Installation

```
flutter pub add nps_survey
```

## Usage

Import the library:

```
import 'package:nps_survey/nps_survey.dart';
```

Display the dialog by calling:

```dart
NPSSurvey().showNPSDialog(
    context: context,
      callback: (feedback, score) {
        print(feedback);
        print(score);
    });
```




