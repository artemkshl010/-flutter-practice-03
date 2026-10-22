import 'package:flutter_test/flutter_test.dart';
import 'package:developer_card/main.dart';

void main() {
  testWidgets('Developer card displays profile and contacts', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const DeveloperCardApp());

    expect(find.text('Artem'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('Poland'), findsOneWidget);
    expect(find.text('Dark Theme'), findsOneWidget);
  });
}