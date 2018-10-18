import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/video_list.dart';
import 'package:flutter_youtube_ui/models/youtube_model.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoList(listData: youtubeData,);
  }
}
