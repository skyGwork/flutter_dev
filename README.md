
```dart
 onPressed: () {
  Navigator.pushNamed(
    context,
    LandingPage.routeName,
    arguments: LandingPageArgs(
      note: 'Learn Without Limitations',
      quote:
          'Learning is training of mind to think expressive.',
    ),
  );
},
```


```dart
// Within the SecondRoute widget
onPressed: () {
  Navigator.pop(context);
}
```
