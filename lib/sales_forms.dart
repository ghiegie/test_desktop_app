import 'package:flutter/material.dart';

class CompactSalesForm extends StatefulWidget {
  const CompactSalesForm({super.key});

  @override
  State<CompactSalesForm> createState() => _CompactSalesFormState();
}

class _CompactSalesFormState extends State<CompactSalesForm> {
  Container customTab(String text, Color color) {
    return Container(
      color: color,
      height: 25,
      width: 150,
      child: Center(
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Row(
                children: [
                  customTab("Sales Order", Colors.orange),
                  customTab("Sales Form Maker", Colors.pink),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ExpandedSalesForm extends StatefulWidget {
  const ExpandedSalesForm({super.key});

  @override
  State<ExpandedSalesForm> createState() => _ExpandedSalesFormState();
}

class _ExpandedSalesFormState extends State<ExpandedSalesForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }
}
