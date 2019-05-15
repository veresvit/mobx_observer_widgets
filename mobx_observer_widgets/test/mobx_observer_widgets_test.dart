import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_observer_widgets/material/material.dart'
    as MaterialWidgets;
import 'package:mobx_observer_widgets/cupertino/cupertino.dart'
    as CupertinoWidgets;

void main() {
  setUp(() => mainContext.config =
      ReactiveConfig(enforceActions: EnforceActions.never));

  tearDown(() => mainContext.config = ReactiveConfig.main);

  testWidgets('ObserverText changes value - material',
      (WidgetTester tester) async {
    final observableValue = Observable("Initial text");

    await tester.pumpWidget(MaterialWidgets.ObserverText(
      (context) => observableValue.value,
      textDirection: TextDirection.ltr,
    ));

    expect(
      find.text("Initial text"),
      findsOneWidget,
    );

    observableValue.value = "Changed text";

    await tester.pump();

    expect(
      find.text("Initial text"),
      findsNothing,
    );

    expect(
      find.text("Changed text"),
      findsOneWidget,
    );
  });

  testWidgets('ObserverText changes value - cupertino',
      (WidgetTester tester) async {
    final observableValue = Observable("Initial text");

    await tester.pumpWidget(CupertinoWidgets.ObserverText(
      (context) => observableValue.value,
      textDirection: TextDirection.ltr,
    ));

    expect(
      find.text("Initial text"),
      findsOneWidget,
    );

    observableValue.value = "Changed text";

    await tester.pump();

    expect(
      find.text("Initial text"),
      findsNothing,
    );

    expect(
      find.text("Changed text"),
      findsOneWidget,
    );
  });

  testWidgets('ObserverText.rich changes value - material',
      (WidgetTester tester) async {
    final observableValue = Observable("Initial text");

    await tester.pumpWidget(MaterialWidgets.ObserverText.rich(
      (context) => TextSpan(text: observableValue.value),
      textDirection: TextDirection.ltr,
    ));

    expect(
      find.text("Initial text"),
      findsOneWidget,
    );

    observableValue.value = "Changed text";

    await tester.pump();

    expect(
      find.text("Initial text"),
      findsNothing,
    );

    expect(
      find.text("Changed text"),
      findsOneWidget,
    );
  });

  testWidgets('ObserverText.rich changes value - cupertino',
      (WidgetTester tester) async {
    final observableValue = Observable("Initial text");

    await tester.pumpWidget(CupertinoWidgets.ObserverText.rich(
      (context) => TextSpan(text: observableValue.value),
      textDirection: TextDirection.ltr,
    ));

    expect(
      find.text("Initial text"),
      findsOneWidget,
    );

    observableValue.value = "Changed text";

    await tester.pump();

    expect(
      find.text("Initial text"),
      findsNothing,
    );

    expect(
      find.text("Changed text"),
      findsOneWidget,
    );
  });
}
