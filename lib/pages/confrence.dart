import 'package:chat_app/service/confrenceservice.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/model/confrence.dart' as model;

class Confrence extends StatefulWidget {
  String username, emailid;
  Confrence(String username, String emailid) {
    this.username = username;
    this.emailid = emailid;
  }
  @override
  _ConfrenceState createState() => _ConfrenceState(username, emailid);
}

class _ConfrenceState extends State<Confrence> {
  String username, emailid;
  _ConfrenceState(username, emailid) {
    this.username = username;
    this.emailid = emailid;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confrence Screen'),
        centerTitle: true,
        backgroundColor: Colors.purple[900],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 90, right: 10),
        child: Column(
          children: [
            SizedBox(height: 130),
            FlatButton.icon(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        var roomName = TextEditingController();
                        return AlertDialog(
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                TextField(
                                  controller: roomName,
                                  decoration: InputDecoration(
                                      hintText: 'Give your Room A NameId'),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            FlatButton(
                                onPressed: () async {
                                  print(roomName.text);
                                  await ConfrenceService(
                                          instance: model.Confrence(
                                              display_name: username,
                                              email_id: emailid,
                                              room:'012002121'+roomName.text.trim()))
                                      .connect();
                                  Navigator.pop(context);
                                },
                                child: Text('Host your Confrence'))
                          ],
                        );
                      });
                },
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.purple[900],
                ),
                label: Text(
                  'Host the Call',
                  style: TextStyle(fontSize: 20, color: Colors.purple[900]),
                )),
            SizedBox(height: 30),
            FlatButton.icon(
                onPressed: () {
                   showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        var roomName = TextEditingController();
                        return AlertDialog(
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                TextField(
                                  controller: roomName,
                                  decoration: InputDecoration(
                                      hintText: 'Enter the NameId'),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            FlatButton(
                                onPressed: () async {
                                  print(roomName.text);
                                  await ConfrenceService(
                                          instance: model.Confrence(
                                              display_name: username,
                                              email_id: emailid,
                                              room:'012002121'+roomName.text.trim()))
                                      .connect();
                                  Navigator.pop(context);
                                },
                                child: Text('join'))
                          ],
                        );
                      });
                },
                icon: Icon(
                  Icons.call_merge_rounded,
                  size: 30,
                  color: Colors.purple[900],
                ),
                label: Text(
                  'Join the Call',
                  style: TextStyle(fontSize: 20, color: Colors.purple[900]),
                ))
          ],
        ),
      ),
    );
  }
}
