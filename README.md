# d_button

Flutter package for your custom button.

Child of button can be filled with any widget as long as there is sufficient space.
But, for DButton.circle() just to use for layout circle.

You can modify all the buttons above to your liking and be as creative as possible

## Instalation

1. Add package to your pubspec.yaml and run `dart pub get` or click icon `Get Package` at the top right your pubspec.yaml
```yaml
dependencies:
  d_button: ^0.0.1
```

2. Import the package
```dart
import 'package:d_button/d_button.dart';
```

## Example

1. Circle

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_circle.png">

```dart
DButton.circle(
    mainColor: Colors.blue,
    onClick: () {},
    diameter: 40,
    child: Icon(
        Icons.favorite,
        color: Colors.white,
    ),
),

FittedBox(
    child: DButton.circle(
        mainColor: Colors.white,
        onClick: () {},
        padding: EdgeInsets.all(8),
        shadowColor: Colors.cyan,
        child: Icon(
        Icons.bookmark,
        color: Colors.blue,
        size: 15,
        ),
    ),
),

DButton.circle(
    mainColor: Colors.amber,
    onClick: () {},
    diameter: 30,
    child: Text('1'),
),
```
<hr>

2. Shadow

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_elevation.png">

```dart
DButton.shadow(
    mainColor: Colors.blue,
    splashColor: Colors.cyan,
    onClick: () => {},
    radius: 30,
    height: 50,
    child: Text(
        "D'Button Shadow 1",
        style: TextStyle(color: Colors.white),
    ),
),

FittedBox(
    child: DButton.shadow(
        mainColor: Colors.white,
        shadowColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16),
        onClick: () => {},
        radius: 8,
        child: Text("D'Button Shadow 2"),
    ),
),

DButton.shadow(
    mainColor: Colors.amber,
    shadowColor: Colors.blue,
    splashColor: Colors.yellow,
    onClick: () => {},
    radius: 30,
    height: 30,
    width: 150,
    child: Text("D'Button Shadow 3"),
),

DButton.shadow(
    mainColor: Colors.amber,
    shadowColor: Colors.grey,
    splashColor: Colors.yellow,
    onClick: null,
    disableColor: Colors.grey[300]!,
    radius: 30,
    height: 30,
    width: 150,
    child: Text("D'Button Shadow 4"),
),

DButton.shadow(
    mainColor: Colors.white,
    shadowColor: Colors.blue,
    splashColor: Colors.yellow,
    onClick: () => {},
    radius: 30,
    height: 30,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text("D'Button Shadow 5"),
            SizedBox(width: 16),
            Icon(Icons.arrow_forward),
        ],
    ),
),

FittedBox(
    child: DButton.shadow(
        mainColor: Colors.blue,
        splashColor: Colors.yellow,
        onClick: () => {},
        padding: EdgeInsets.symmetric(horizontal: 30),
        radius: 30,
        height: 30,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text("D'Button Shadow 6"),
                SizedBox(width: 16),
                Icon(Icons.arrow_forward),
            ],
        ),
    ),
),

DButton.shadow(
    mainColor: Colors.amber,
    splashColor: Colors.amberAccent,
    onClick: () => {},
    padding: EdgeInsets.symmetric(horizontal: 16),
    radius: 4,
    height: 40,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text("D'Button Shadow 7"),
            Icon(Icons.arrow_forward),
        ],
    ),
),

DButton.shadow(
    mainColor: Colors.cyan,
    splashColor: Colors.blue,
    onClick: () => {},
    radius: 4,
    height: 40,
    width: 40,
    child: Icon(Icons.filter),
),
```
<hr>

3. Flat

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_flat.png">

```dart
DButton.flat(
    mainColor: Colors.blue,
    onClick: () {},
    child: Text(
        "D'Button Flat 1",
        style: TextStyle(color: Colors.white),
    ),
),

DButton.flat(
    width: 150,
    radius: 150,
    mainColor: Colors.amber,
    onClick: () {},
    child: Text("D'Button Flat 2"),
),

FittedBox(
    child: DButton.flat(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        mainColor: Colors.white,
        onClick: () {},
        child: Text("D'Button Flat 3"),
    ),
),

FittedBox(
    child: DButton.flat(
        mainColor: Colors.blue,
        onClick: null,
        child: Text("D'Button Flat 4"),
    ),
),

DButton.flat(
    mainColor: Colors.amber,
    onClick: () {},
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("D'Button Flat 5"),
        Icon(Icons.arrow_forward),
        ],
    ),
),

FittedBox(
    child: DButton.flat(
        radius: 150,
        height: 50,
        mainColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16),
        onClick: () {},
        child: Row(
        children: [
            Text("D'Button Flat 6"),
            SizedBox(width: 16),
            Icon(Icons.arrow_forward),
        ],
        ),
    ),
),

DButton.flat(
    mainColor: Colors.cyan,
    onClick: () => {},
    radius: 4,
    height: 30,
    width: 30,
    child: Icon(Icons.search),
),
```
<hr>

4. Elevation

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_shadow.png">

```dart
DButton.elevation(
    mainColor: Colors.blue,
    onClick: () {},
    child: Text(
        "D'Button Elevation 1",
        style: TextStyle(color: Colors.white),
    ),
),

DButton.elevation(
    elevation: 8,
    width: 150,
    radius: 150,
    mainColor: Colors.amber,
    onClick: () {},
    child: Text("D'Button Elevation 2"),
),

FittedBox(
    child: DButton.elevation(
        elevation: 20,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        mainColor: Colors.white,
        onClick: () {},
        child: Text("D'Button Elevation 3"),
    ),
),

FittedBox(
    child: DButton.elevation(
        mainColor: Colors.blue,
        onClick: null,
        child: Text("D'Button Elevation 4"),
    ),
),

DButton.elevation(
    mainColor: Colors.amber,
    onClick: () {},
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text("D'Button Elevation 5"),
            Icon(Icons.arrow_forward),
        ],
    ),
),

FittedBox(
    child: DButton.elevation(
        radius: 150,
        height: 50,
        elevation: 30,
        mainColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16),
        onClick: () {},
        child: Row(
            children: [
                Text("D'Button Elevation 6"),
                SizedBox(width: 16),
                Icon(Icons.arrow_forward),
            ],
        ),
    ),
),

DButton.elevation(
    mainColor: Colors.white,
    shadowColor: Colors.blue,
    onClick: () => {},
    elevation: 40,
    radius: 16,
    height: 50,
    width: 50,
    child: Icon(Icons.menu),
),
```


This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
