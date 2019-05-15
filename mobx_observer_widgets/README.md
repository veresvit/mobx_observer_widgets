
# MobX Observer Widgets
Simplified observing of values through MobX store in Flutter.

## Introduction
This library helps developers who use MobX for state management to flatten their widget tree.

## Example

#### Regular use of MobX in Flutter
    Observer(
	    builder: (context) =>  Text(
		    '${counter.counter}',
		    style:  Theme.of(context).textTheme.display1,
	    ),
    )

#### Same example with MobX Observer Widgets

    ObserverText(
	    (context) =>  "${counter.counter}",
	    style:  Theme.of(context).textTheme.display1,
    )

#### Full example
For full code example with MobX and MobX Observer Widgets see the [example project.](https://github.com/veresvit/mobx_observer_widgets/tree/master/example)

## Supported Widgets
The original widget is prefixed with word Observer and constructor similar to the original one is provided.
#### ObserverText
    ObserverText(
	    (context) =>  "${counter.counter}",
	    style:  Theme.of(context).textTheme.display1,
    )
#### ObserverText.rich
    ObserverText.rich(
	    (context) =>  TextSpan(text:  "${counter.counter}"),
	    style:  Theme.of(context).textTheme.display1,
    )
