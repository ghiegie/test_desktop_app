import 'package:flutter/material.dart';
import 'package:test_desktop_app/sales_forms.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SalesForm(),
    );
  }
}

class SalesForm extends StatefulWidget {
  const SalesForm({super.key});

  @override
  State<SalesForm> createState() => _SalesFormState();
}

class _SalesFormState extends State<SalesForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(4.5),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                Container(
                  width: constraints.maxWidth,
                  child: Text("SALES ORDER"),
                  color: Color.fromARGB(255, 244, 246, 248),
                  margin: EdgeInsets.only(
                    bottom: 4.5,
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      if (constraints.maxWidth >= 1200) {
                        return ExpandedSalesForm();
                      } else {
                        return CompactSalesForm();
                      }
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
