import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  String? title, description;

  void setTitle(title) {
    print('setting title $title');
    setState(() {
      this.title = title;
    });
  }

  void setDescription(description) {
    print('setting description $description');
    setState(() {
      this.description = description;
    });
  }

  void save() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (val) => setTitle(val),
            style:
                TextStyle(fontStyle: FontStyle.italic, color: Colors.lightBlue),
            decoration: InputDecoration(
                hintText: 'Title',
                labelText: 'Title',
                labelStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          TextField(
            onChanged: (desc) => setDescription(desc),
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.lightBlue,
            ),
            minLines: 3,
            maxLines: 5,
            decoration: InputDecoration(
                hintText: 'Description',
                labelText: 'Description',
                labelStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ElevatedButton(
                      onPressed: save,
                      child: Text('Save',
                          style: TextStyle(fontStyle: FontStyle.italic))))),
        ],
      ),
    );
  }
}
