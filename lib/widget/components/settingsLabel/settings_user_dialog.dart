import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/provider/settings_label_provider.dart';

class SettingsUserDialog extends HookConsumerWidget {

  const SettingsUserDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final settingsLabel = ref.watch(settingsLabelProvider);
    final roll = useState(settingsLabel.roll);
    final whichUser = useState(settingsLabel.index);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(
            width: 80,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(settingsLabel.userList[whichUser.value].name)
            ),
          ),
          DropdownButton(
            value: settingsLabel.roll,
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
              ref.read(settingsLabelProvider.notifier)
                  .changeRoll(value);
            },
          ),ListTile(
            title: Text('確定'),
            onTap: () {
              ref.read(settingsLabelProvider.notifier)
                .changeUserLabel(whichUser.value, roll.value);
              Navigator.of(context).pop();
              },
          ),
        ],
      ),
    );
  }
}