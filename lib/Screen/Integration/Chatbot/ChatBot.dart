
import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';

class chatBot extends StatefulWidget {
  chatBot({Key? key}) : super(key: key);

  @override
  _chatBotState createState() => _chatBotState();
}

class _chatBotState extends State<chatBot> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.black12),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  late DialogFlowtter dialogFlowtter;

  //  DialogFlowtter jsonInstance = DialogFlowtter.fromJson(json);

  void Response(query) async {
    // _textController.clear();
    // AuthGoogle authGoogle =
    //     await AuthGoogle(fileJson: "assets/credentials.json").build();
    // Dialogflow dialogflow =
    //     Dialogflow(authGoogle: authGoogle, language: Language.english);
    // AIResponse response = await dialogflow.detectIntent(query);
    // ChatMessage message = new ChatMessage(
    //   text: response.getMessage() ??
    //       new CardDialogflow(response.getListMessage()[0]).title,
    //   name: "Bot",
    //   type: false,
    // );
    // setState(() {
    //   _messages.insert(0, message);
    // });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      name: "Me",
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    Response(text);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: new Text(
          "Message Chatbot",
          style: TextStyle(fontFamily: "Sofia"),
        ),
      ),
      body: new Column(children: <Widget>[
        new Flexible(
            child: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(),
        ),
      ]),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text, required this.name, required this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: new CircleAvatar(
          child: new Image.network(
              "https://images2.imgbox.com/48/0f/x4QHQVq0_o.jpg"),
          backgroundColor: Colors.black12,
        ),
      ),
      new Expanded(
        child: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                this.name,
                style: new TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: "Sofia",
                    color: Colors.black),
              ),
              new Container(
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                    text,
                    style: TextStyle(color: Colors.white, fontFamily: "Sofia"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name,
                style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                )),
            SizedBox(
              height: 3.0,
            ),
            new Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Text(
                  text,
                  style: TextStyle(color: Colors.white, fontFamily: "Sofia"),
                ),
              ),
            ),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(right: 5.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new CircleAvatar(
            child: new Image.network(
                "https://images2.imgbox.com/08/42/STUFAKGM_o.png"),
            backgroundColor: Colors.black12,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
