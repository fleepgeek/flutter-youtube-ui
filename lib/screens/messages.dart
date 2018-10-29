import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> with AutomaticKeepAliveClientMixin<MessagesScreen> {
  bool _isVisible = true;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTopButtons(),
        _isVisible ? _buildPeople() : SizedBox(),
        _buildCallToAction(),
      ],
    );
  }

  Widget _buildTopButtons() {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300])),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text("FRIENDS"),
            onPressed: () {},
            textColor: Colors.blue,
          ),
          FlatButton(
            child: Text("NEW GROUP"),
            onPressed: () {},
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _buildPeople() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("You may know"),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    _isVisible = false;
                  });
                },
              )
            ],
          ),
        ),
        Container(
          height: 140.0,
          padding: const EdgeInsets.only(bottom: 16.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[400]))),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildAddPerson("James Blunt"),
              _buildAddPerson("Daddy Yankee"),
              _buildAddPerson("Kanye West"),
              _buildAddPerson("Jide Kosoko"),
              _buildAddPerson("Usain Bolt"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAddPerson(String name) {
    return Container(
      width: 80.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.account_circle,
            size: 50.0,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.0),
          ),
          Container(
            width: 50.0,
            height: 30.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.person_add,
                  size: 20.0,
                ),
                padding: const EdgeInsets.only(bottom: 10.0),
                onPressed: () {}),
          )
        ],
      ),
    );
  }

  Widget _buildCallToAction() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: SvgPicture.asset(
              "images/add_friends_vector.svg",
              width: 250.0,
            ),
          ),
          Text(
            "Get started by adding friends",
            style: Theme.of(context).textTheme.title,
          ),
          Container(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
            child: Text(
              "Your chats would show up here",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          FlatButton(
            child: Text("ADD FRIENDS"),
            color: Colors.blue[600],
            textColor: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

}
