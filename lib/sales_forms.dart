import 'package:flutter/material.dart';

class CompactSalesForm extends StatefulWidget {
  const CompactSalesForm({super.key});

  @override
  State<CompactSalesForm> createState() => _CompactSalesFormState();
}

class _CompactSalesFormState extends State<CompactSalesForm> {
  var tab1 = {
    "inTab"
  }

  bool pointerInTab1 = false;
  bool pointerInTab2 = false;
  Color _hoverColor1 = Colors.lightGreen;
  Color _hoverColor2 = Colors.pink;

  void hoverTab() {
    pointerInTab1 = !pointerInTab1 ? !pointerInTab1 : pointerInTab1;
    _hoverColor1 = !pointerInTab1 ? Colors.pink : Colors.lightGreen;

    // if (!pointerInTab1) {
    //   pointerInTab1 = !pointerInTab1;
    //   _hoverColor1 = Colors.pink;
    // } else {
    //   pointerInTab1 = !pointerInTab1;
    //   _hoverColor1 = Colors.lightGreen;
    // }
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
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (onEnter) {
                      setState(() {
                        hoverTab();
                      });
                    },
                    onExit: (onExit) {
                      setState(() {
                        hoverTab();
                      });
                    },
                    child: CustomTab(
                      label: "Sample 1",
                      color: _hoverColor1,
                      upDownPad: constraints.minHeight * 0.01,
                      width: constraints.maxWidth * 0.1,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (onEnter) {
                      setState(() {
                        hoverTab();
                      });
                    },
                    onExit: (onExit) {
                      setState(() {
                        hoverTab();
                      });
                    },
                    child: CustomTab(
                      label: "Sample 1",
                      color: _hoverColor1,
                      upDownPad: constraints.minHeight * 0.01,
                      width: constraints.maxWidth * 0.1,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                  ),
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

class CustomTab extends StatelessWidget {
  final String label;
  final Color color;
  final double upDownPad;
  final double width;
  final BorderRadius borderRadius;

  const CustomTab(
      {super.key,
      required this.label,
      required this.color,
      required this.upDownPad,
      required this.width,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: borderRadius, color: color),
      width: width,
      padding: EdgeInsets.only(
        top: upDownPad,
        bottom: upDownPad,
      ),
      child: Center(child: Text(label)),
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
