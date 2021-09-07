# d_button

Custom buttons which you can create and re-style as you wish. It can be used for one or more widgets.
Child of button can be filled with any widget as long as there is sufficient space.
But, for DButton.circle() just to use for layout circle.

You can modify all the buttons above to your liking and be as creative as possible

## Usage

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

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_shadow.png">

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

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_elevation.png">

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
<hr>

5. Border

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_border.png">

```dart
DButton.border(
    borderColor: Colors.pink,
    mainColor: Colors.blue,
    radius: 0,
    onClick: () {},
    child: Text(
        "D'Button Border 1",
        style: TextStyle(color: Colors.white),
    ),
),

DButton.border(
    borderColor: Colors.blue,
    width: 150,
    radius: 150,
    mainColor: Colors.amber,
    onClick: () {},
    child: Text("D'Button Border 2"),
),

FittedBox(
    child: DButton.border(
        borderColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        mainColor: Colors.white,
        onClick: () {},
        radius: 0,
        child: Text("D'Button Border 3"),
    ),
),

FittedBox(
    child: DButton.border(
        borderColor: Colors.amber,
        mainColor: Colors.blue,
        onClick: null,
        child: Text("D'Button Border 4"),
    ),
),

DButton.elevation(
    mainColor: Colors.amber,
    onClick: () {},
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text("D'Button Border 5"),
            Icon(Icons.arrow_forward),
        ],
    ),
),

FittedBox(
    child: DButton.border(
        borderColor: Colors.blue,
        radius: 150,
        height: 50,
        mainColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16),
        onClick: () {},
        child: Row(
            children: [
                Text("D'Button Border 6"),
                SizedBox(width: 16),
                Icon(Icons.arrow_forward),
            ],
        ),
    ),
),

DButton.border(
    borderColor: Colors.blue,
    mainColor: Colors.white,
    onClick: () => {},
    radius: 16,
    height: 50,
    width: 50,
    child: Icon(Icons.filter),
),
```
<hr>

6. Custom Child

Custom child can use for type button like shadow, flat, elevation & border

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_custom_child.png">

```dart
DButton.shadow(
    radius: 8,
    padding: EdgeInsets.only(right: 8),
    shadowColor: Colors.grey,
    onClick: () {},
    child: Row(
        children: [
        ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
            ),
            child: Image.network(
                'https://images.unsplash.com/photo-1590829197118-b0609523669d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
            ),
        ),
        SizedBox(width: 8),
        Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                    'Title',
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                ),
            ],
            ),
        ),
        ],
    ),
),
```

Check at [Github](https://github.com/indratrisnar/d_button),

Support me for more feature & packages
[Donate](https://www.paypal.com/paypalme/indratrisnar)

Check my app : [Visit](https://indratrisnar.github.io/projects.html)

Check My Tutorial & Course : [Watch](https://www.youtube.com/channel/UC0d_xINEvCtlDCpWfBpnYpA)
