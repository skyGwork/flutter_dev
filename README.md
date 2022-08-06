- [Navigate to the second route using Navigator.push()](https://docs.flutter.dev/cookbook/navigation/navigation-basics#2-navigate-to-the-second-route-using-navigatorpush)

```dart
// Within the `FirstRoute` widget
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SecondRoute()),
  );
}
```

- [Return to the first route using Navigator.pop()](https://docs.flutter.dev/cookbook/navigation/navigation-basics#3-return-to-the-first-route-using-navigatorpop)

```dart
// Within the SecondRoute widget
onPressed: () {
  Navigator.pop(context);
}
```
