# d_button

Custom buttons which you can create and re-style as you wish. It can be used for one or more widgets.
Child of button can be filled with any widget as long as there is sufficient space.
But, for DButton.circle() just to use for layout circle.

You can modify all the buttons above to your liking and be as creative as possible

## Usage

1. Circle

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_circle.png">

```dart
DButtonCircle(
    mainColor: Colors.blue,
    onClick: () {},
    diameter: 40,
    child: Icon(
        Icons.favorite,
        color: Colors.white,
    ),
),
```
<hr>

2. Shadow

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_shadow.png">

```dart
DButtonShadow(
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
```
<hr>

3. Flat

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_flat.png">

```dart
DButtonFlat(
    mainColor: Colors.blue,
    onClick: () {},
    child: Text(
        "D'Button Flat 1",
        style: TextStyle(color: Colors.white),
    ),
),
```
<hr>

4. Elevation

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_elevation.png">

```dart
DButtonElevation(
    mainColor: Colors.blue,
    onClick: () {},
    child: Text(
        "D'Button Elevation 1",
        style: TextStyle(color: Colors.white),
    ),
),
```
<hr>

5. Border

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_border.png">

```dart
DButtonBorder(
    borderColor: Colors.pink,
    mainColor: Colors.blue,
    radius: 0,
    onClick: () {},
    child: Text(
        "D'Button Border 1",
        style: TextStyle(color: Colors.white),
    ),
),
```
<hr>

6. Custom Child

Custom child can use for type button like shadow, flat, elevation & border

<img src="https://github.com/indratrisnar/d_button/raw/master/pic/dbutton_custom_child.png">

```dart
DButtonShadow(
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
