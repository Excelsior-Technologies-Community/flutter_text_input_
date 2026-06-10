# Flutter Text Input

A powerful and customizable Flutter text input widget with built-in validation, password toggle, character counter, phone number support, email validation, search field support, and more.

---

## Features

✅ Email Validation

✅ Phone Number Validation

✅ Digits Only Input

✅ Password Visibility Toggle

✅ Search Field

✅ Clear Button

✅ Character Counter

✅ Prefix Icon

✅ Suffix Icon

✅ Read Only Mode

✅ Enabled / Disabled State

✅ Multiline Support

✅ FocusNode Support

✅ Controller Support

✅ Custom Border Radius

✅ Custom Border Color

✅ Form Validation Support

✅ Floating Labels

✅ Lightweight & Easy To Use

---

## Demo


https://github.com/user-attachments/assets/7d0c9d01-425c-4fa1-9130-a04e67825de8


---
## Installation

Add dependency to your `pubspec.yaml`

```yaml
dependencies:
  flutter_text_input_: 
    path: ../
```

Run:

```bash
flutter pub get
```

---

## Import

```dart
import 'package:flutter_text_input_/flutter_text_input_.dart';

```

---

## Basic Usage

```dart
FlutterTextInput(
  hintText: 'Enter Name',
)
```

---

## Email Field

```dart
FlutterTextInput(

  labelText: 'Email',

  hintText: 'Enter Email',

  prefixIcon: Icons.email,

  isEmail: true,
)
```

### Valid Examples

```text
hello@gmail.com
test123@yahoo.com
jay.dev@gmail.com
```

### Invalid Examples

```text
hello
hello123
abc@gmail
@gmail.com
```

---

## Phone Number Field

```dart
FlutterTextInput(

  labelText: 'Phone Number',

  hintText: 'Enter Phone Number',

  prefixIcon: Icons.phone,

  isPhone: true,

  maxLength: 10,

  showCharacterCounter: true,
)
```

### Features

* Allows digits only
* Automatically validates phone number
* Character counter support

---

## Password Field

```dart
FlutterTextInput(

  labelText: 'Password',

  hintText: 'Enter Password',

  prefixIcon: Icons.lock,

  obscureText: true,

  enablePasswordToggle: true,
)
```

---

## Search Field

```dart
FlutterTextInput(

  hintText: 'Search...',

  prefixIcon: Icons.search,

  showClearButton: true,
)
```

---

## Full Example

```dart
FlutterTextInput(

  controller: emailController,

  labelText: 'Email',

  hintText: 'Enter Email',

  prefixIcon: Icons.email,

  isEmail: true,
)
```

---

## Parameters

| Parameter            | Type                       | Description                |
| -------------------- | -------------------------- | -------------------------- |
| controller           | TextEditingController?     | Text controller            |
| focusNode            | FocusNode?                 | Focus node                 |
| hintText             | String?                    | Hint text                  |
| labelText            | String?                    | Label text                 |
| prefixIcon           | IconData?                  | Prefix icon                |
| suffixIcon           | IconData?                  | Suffix icon                |
| obscureText          | bool                       | Password field             |
| enablePasswordToggle | bool                       | Password visibility toggle |
| readOnly             | bool                       | Read only mode             |
| enabled              | bool                       | Enable / disable field     |
| maxLines             | int                        | Number of lines            |
| keyboardType         | TextInputType?             | Keyboard type              |
| validator            | String? Function(String?)? | Custom validator           |
| onChanged            | ValueChanged<String>?      | Text changed callback      |
| borderRadius         | BorderRadius?              | Border radius              |
| borderColor          | Color?                     | Border color               |
| isEmail              | bool                       | Email validation           |
| isPhone              | bool                       | Phone validation           |
| showClearButton      | bool                       | Show clear button          |
| showCharacterCounter | bool                       | Show character counter     |
| maxLength            | int?                       | Maximum character limit    |

---

## Example App

```dart
FlutterTextInput(

  labelText: 'Phone Number',

  isPhone: true,

  maxLength: 10,

  showCharacterCounter: true,
)
```

---



## License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge,
to any person obtaining a copy of this software
and associated documentation files (the "Software"),
to deal in the Software without restriction,
including without limitation the rights to use,
copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software.

THE SOFTWARE IS PROVIDED "AS IS",
WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED.
