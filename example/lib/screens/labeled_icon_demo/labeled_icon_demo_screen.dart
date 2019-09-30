import 'package:flutter/material.dart';

import 'package:brewery/ale.dart';

class LabeledIconDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
        ),
        itemCount: _icons.length,
        itemBuilder: (_, index) => GridTile(child: _icons[index]),
      ),
    );
  }

  List<Widget> get _icons => [
        BreweryLabeledIcon(Icons.star, label: "star", color: Colors.yellow),
        BreweryLabeledIcon(Icons.access_alarm, label: "access_alarm"),
        BreweryLabeledIcon(
          Icons.accessibility,
          label: "accessibility",
          color: Colors.black54,
        ),
        BreweryLabeledIcon(Icons.accessible, label: "accessible"),
        BreweryLabeledIcon(
          Icons.account_balance_wallet,
          label: "account_balance_wallet",
          color: Colors.brown,
        ),
        BreweryLabeledIcon(Icons.add, label: "add", color: Colors.green),
        BreweryLabeledIcon(
          Icons.add_a_photo,
          label: "add_a_photo",
        ),
        BreweryLabeledIcon(
          Icons.all_inclusive,
          label: "all_inclusive",
          color: Colors.cyan,
        ),
        BreweryLabeledIcon(
          Icons.apps,
          label: "apps",
          color: Colors.red,
        ),
        BreweryLabeledIcon(
          Icons.art_track,
          label: "art_track",
        ),
        BreweryLabeledIcon(
          Icons.assessment,
          label: "assessment",
        ),
        BreweryLabeledIcon(
          Icons.attach_file,
          label: "attach_file",
          color: Colors.green,
        ),
        BreweryLabeledIcon(
          Icons.backup,
          label: "backup",
          color: Colors.blue,
        ),
        BreweryLabeledIcon(
          Icons.battery_alert,
          label: "battery_alert",
        ),
        BreweryLabeledIcon(
          Icons.bluetooth,
          label: "bluetooth",
          color: Colors.blue,
        ),
        BreweryLabeledIcon(
          Icons.bug_report,
          label: "bug_report",
          color: Colors.indigo,
        ),
        BreweryLabeledIcon(
          Icons.build,
          label: "build",
          color: Colors.grey,
        ),
        BreweryLabeledIcon(
          Icons.business,
          label: "business",
        ),
        BreweryLabeledIcon(
          Icons.cached,
          label: "cached",
          color: Colors.green,
        ),
        BreweryLabeledIcon(
          Icons.cake,
          label: "cake",
          color: Colors.pink,
        ),
        BreweryLabeledIcon(
          Icons.calendar_today,
          label: "calendar_today",
          color: Colors.red,
        ),
        BreweryLabeledIcon(
          Icons.call,
          label: "call",
          color: Colors.green,
        ),
        BreweryLabeledIcon(
          Icons.call_end,
          label: "call_end",
          color: Colors.red,
        ),
        BreweryLabeledIcon(
          Icons.call_merge,
          label: "call_merge",
          color: Colors.orange,
        ),
        BreweryLabeledIcon(
          Icons.camera_alt,
          label: "camera_alt",
          color: Colors.grey,
        ),
        BreweryLabeledIcon(
          Icons.cancel,
          label: "cancel",
          color: Colors.red,
        ),
        BreweryLabeledIcon(
          Icons.card_travel,
          label: "card_travel",
          color: Colors.brown,
        ),
        BreweryLabeledIcon(
          Icons.chat,
          label: "chat",
          color: Colors.lightBlue,
        ),
        BreweryLabeledIcon(
          Icons.check_box,
          label: "check_box",
          color: Colors.black,
        ),
        BreweryLabeledIcon(
          Icons.cloud,
          label: "cloud",
          color: Colors.grey,
        ),
        BreweryLabeledIcon(
          Icons.computer,
          label: "computer",
          color: Colors.black87,
        ),
        BreweryLabeledIcon(
          Icons.credit_card,
          label: "credit_card",
          color: Colors.orange,
        ),
        BreweryLabeledIcon(
          Icons.delete,
          label: "delete",
          color: Colors.grey,
        ),
        BreweryLabeledIcon(
          Icons.directions_bus,
          label: "directions_bus",
          color: Colors.yellow,
        ),
        BreweryLabeledIcon(
          Icons.directions_run,
          label: "directions_run",
        ),
        BreweryLabeledIcon(
          Icons.directions_railway,
          label: "directions_railway",
          color: Colors.blue,
        ),
        BreweryLabeledIcon(
          Icons.favorite,
          label: "favorite",
          color: Colors.pink,
        ),
        BreweryLabeledIcon(
          Icons.filter_none,
          label: "filter_none",
          color: Colors.grey,
        ),
        BreweryLabeledIcon(
          Icons.fingerprint,
          label: "fingerprint",
          color: Colors.deepOrange,
        ),
        BreweryLabeledIcon(
          Icons.flag,
          label: "flag",
          color: Colors.amber,
        ),
        BreweryLabeledIcon(Icons.flash_on,
            label: "flash_on", color: Colors.yellow),
        BreweryLabeledIcon(Icons.folder, label: "folder", color: Colors.brown),
        BreweryLabeledIcon(
          Icons.format_size,
          label: "format_size",
        ),
        BreweryLabeledIcon(
          Icons.format_size,
          label: "gps_fixed",
          color: Colors.black87,
        ),
        BreweryLabeledIcon(
          Icons.group,
          label: "group",
          color: Colors.blue,
        ),
        BreweryLabeledIcon(
          Icons.history,
          label: "history",
          color: Colors.orange,
        ),
        BreweryLabeledIcon(
          Icons.insert_link,
          label: "insert_link",
          color: Colors.grey,
        ),
        BreweryLabeledIcon(
          Icons.keyboard,
          label: "keyboard",
        ),
        BreweryLabeledIcon(
          Icons.layers,
          label: "layers",
          color: Colors.indigo,
        ),
        BreweryLabeledIcon(
          Icons.link,
          label: "link",
          color: Colors.grey,
        ),
        BreweryLabeledIcon(
          Icons.local_hospital,
          label: "local_hospital",
          color: Colors.red,
        ),
        BreweryLabeledIcon(
          Icons.lock_outline,
          label: "lock_outline",
          color: Colors.green,
        ),
        BreweryLabeledIcon(
          Icons.lock_open,
          label: "lock_open",
          color: Colors.yellow,
        ),
        BreweryLabeledIcon(
          Icons.mail,
          label: "mail",
          color: Colors.deepOrange,
        ),
        BreweryLabeledIcon(
          Icons.memory,
          label: "memory",
          color: Colors.green,
        ),
      ];
}
