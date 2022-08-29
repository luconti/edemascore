import 'package:edema_calc/consts/actions.dart';
import 'package:edema_calc/template.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView.separated(
        itemBuilder: (context, index) {
          CustomAction action = actions[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Text(action.title),
                onTap: () => _onTapAction(index, action),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Divider(
            color: Colors.white,
            thickness: 0.18,
          ),
        ),
        itemCount: actions.length,
      ),
    );
  }

  void _onTapAction(int index, CustomAction action) {
    // close drawer and open link
    Navigator.of(context).pop();
    onTapAction(context, action.routeName);
  }
}
