
# MobX Observer Widgets
Simplified observing of values through MobX store in Flutter.

## Introduction
This library helps developers who use MobX for state management to flattern their widget tree.

## Example

#### Regular use od MobX in Flutter
    Observer(
	    builder: (BuildContext context) =>  Text(
		    '${counter.counter}',
		    style:  Theme.of(context).textTheme.display1,
	    ),
    )

#### Same example with MobX Observer Widgets

    ObserverText(
	    () =>  "${counter.counter}",
	    style:  Theme.of(context).textTheme.display1,
    )

#### Full example
For full code example with MobX and MobX Observer Widgets see the [example project.](https://github.com/veresvit/mobx_observer_widgets/tree/master/example)