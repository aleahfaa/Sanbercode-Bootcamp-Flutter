import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:tugas11/controller/counter_controller.dart';
// import 'package:tugas11/page/user.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Initialize the controller
    final CounterController counterController = Get.put(CounterController());

    // Build the app with GetMaterialApp
    await tester.pumpWidget(
      GetMaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Counter Test')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  '${counterController.counter}',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              FloatingActionButton(
                onPressed: counterController.increment,
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
