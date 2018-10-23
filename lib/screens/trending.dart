import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/models/youtube_model.dart';
import 'package:flutter_youtube_ui/video_list.dart';

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 100.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildButtonColumn(Icons.music_note, "Music"),
              _buildButtonColumn(Icons.live_tv, "Live"),
              _buildButtonColumn(Icons.videogame_asset, "Gaming"),
              _buildButtonColumn(Icons.insert_drive_file, "News"),
              _buildButtonColumn(Icons.local_movies, "Films"),
            ],
          ),
        ),
        VideoList(listData: youtubeData,),
      ],
    );
  }

  Widget _buildButtonColumn(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            padding: const EdgeInsets.only(bottom: 8.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.7),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
