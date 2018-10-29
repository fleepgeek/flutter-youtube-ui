import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/models/notification_model.dart';

class NotificationsScreen extends StatelessWidget {
  final List<NotificationModel> data = notificationData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length, itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: CircleAvatar(backgroundImage: NetworkImage(data[index].avatarUrl), radius: 16.0,),
            title: data[index].messageType == "comment"
            ? Text("${data[index].name} commented: \"${data[index].message}\"")
            : Text("New subscriber ${data[index].name}"),
            subtitle: Text(data[index].timeStamp),
            trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
          );
    });
  }
}
