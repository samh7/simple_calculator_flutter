import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calc/widgets/buttons_table.dart';
import 'logic/calculator.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Calculator()),
    ],
    child: const SimpleCalculator(),
  ));
}

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: const AppRoot(),
      ),
    );
  }
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
        height: MediaQuery.of(context).size.height * 0.1,
        child: Consumer<Calculator>(
          builder: (context, provider, _) {
            return Text(
              provider.equation,
              style: const TextStyle(fontSize: 40),
            );
          },
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Consumer<Calculator>(
          builder: (context, provider, _) {
            return Text(
              provider.result,
              style: const TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      const Expanded(
        flex: 2,
        child: Divider(),
      ),
      const Expanded(flex: 10, child: ButtonsTable())
    ]);
  }
}
