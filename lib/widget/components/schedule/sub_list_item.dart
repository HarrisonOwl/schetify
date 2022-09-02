import 'package:flutter/material.dart';

class SubListItem extends StatelessWidget {
  final String title;
  final Widget leading;
  final String route;
  final String toggle;
  final String address;

  SubListItem({required this.title, required this.leading, required this.route, required this.toggle, required this.address});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title),
          const SizedBox(
            width: 10,
          ),
          Text(address),
        ],
      ),
      leading: leading,
      onTap: () => {
        Navigator.of(context).pushNamed(route)
      },
      // onLongPress: () => {},
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            toggle,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}