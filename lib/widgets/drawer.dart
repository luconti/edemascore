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
              SizedBox(height: index == 0 ? 20 : 10),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    action.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                onTap: () => _onTapAction(index, action),
              ),
              const SizedBox(height: 10),
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
