import 'package:flutter/material.dart';

class NotesDetails extends StatefulWidget {
  const NotesDetails({super.key});

  @override
  State<NotesDetails> createState() => _NotesDetailsState();
}

class _NotesDetailsState extends State<NotesDetails> {
  static var _priorities = ['High', 'Low'];

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: DropdownButton(
              items: _priorities.map((String dropDownStringItems) {
                return DropdownMenuItem(
                    value: dropDownStringItems,
                    child: Text(dropDownStringItems));
              }).toList(),
              onChanged: (valueSelectedByUser) {
                setState(() {
                  debugPrint('user selected $valueSelectedByUser');
                });
              },
              value: 'low',
            ),
          ),
          // second

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: titleController,
              onChanged: (value) {
                debugPrint('Something changed in title Text Field');
              },
              decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),

          // Third
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: descriptionController,
              onChanged: (value) {
                debugPrint('Something changed in title Text Field');
              },
              decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Save')),
              ElevatedButton(onPressed: () {}, child: Text('Delete'))
            ],
          )
        ],
      ),
    );
  }
}
