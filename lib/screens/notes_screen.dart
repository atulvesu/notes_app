import 'package:flutter/material.dart';
import 'package:notes_app/screens/notes_details.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAQ Tapped');
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotesDetails(),
              ));
        },
        tooltip: 'Add Note',
        child: Icon(
          Icons.add,
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            elevation: 1.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              title: Text(
                'Dummy Date',
              ),
              subtitle: Text('Dummy Date'),
              trailing: Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              onTap: () {
                debugPrint('List title tapped');
              },
            ),
          );
        },
      ),
    );
  }
}
