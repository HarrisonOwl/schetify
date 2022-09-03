import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/settings_label_provider.dart';

class SettingsUserDialog extends HookConsumerWidget {

  const SettingsUserDialog({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final settingsLabel = ref.watch(settingsLabelProvider);
    final roll = useState(settingsLabel.userList[index].label);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(
            width: 80,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(settingsLabel.userList[index].name)
            ),
          ),
          DropdownButton(
            value: roll.value,
            items: const [
              DropdownMenuItem(
                value: 'readOnly',
                child: Text('readOnly'),
              ),
              DropdownMenuItem(
                value: 'edit',
                child: Text('edit'),
              ),
            ],
            onChanged: (String? value) {
              roll.value = value!;
            },
          ),ListTile(
            title: Text('確定'),
            onTap: () {
              ref.read(settingsLabelProvider.notifier)
                .changeUserLabel(index, roll.value);
              Navigator.of(context).pop();
              },
          ),
        ],
      ),
    );
  }
}