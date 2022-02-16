# Just Logcat

## Features

Log.i, Log.d, Log.w, Log.e

## Getting started

```bash
flutter pub add just_logcat
flutter pub get
```

## Usage

> Info log

```dart
...
import 'package:just_logcat/just_logcat.dart';
...

const tag = 'main.dart';

void main() {
  Log.i(tag, 'Before running MyApp()');
  try {
    ...
  } catch (error, stackTrace) {
    Log.i(tag, 'Error: $error', stackTrace: stackTrace);
  }
  runApp(const MyApp());
  }
}

...
```

> Debug log

```dart
...
import 'package:just_logcat/just_logcat.dart';
...

const tag = 'main.dart';

void main() {
  Log.d(tag, 'Before running MyApp()');
  try {
    ...
  } catch (error, stackTrace) {
    Log.d(tag, 'Error: $error', stackTrace: stackTrace);
  }
  runApp(const MyApp());
  }
}

...
```

> Warning log

```dart
...
import 'package:just_logcat/just_logcat.dart';
...

const tag = 'main.dart';

void main() {
  Log.w(tag, 'Before running MyApp()');
  try {
    ...
  } catch (error, stackTrace) {
    Log.w(tag, 'Error: $error', stackTrace: stackTrace);
  }
  runApp(const MyApp());
  }
}

...
```

> Error log

```dart
...
import 'package:just_logcat/just_logcat.dart';
...

const tag = 'main.dart';

void main() {
  Log.e(tag, 'Before running MyApp()');
  try {
    ...
  } catch (error, stackTrace) {
    Log.e(tag, 'Error: $error', stackTrace: stackTrace);
  }
  runApp(const MyApp());
  }
}

...
```

## Additional information

Just logcat
