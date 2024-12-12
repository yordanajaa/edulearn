import 'package:flutter/material.dart';

class NoteScreens extends StatefulWidget {
  const NoteScreens({key}) : super(key: key);

  @override
  State<NoteScreens> createState() => _NoteScreensState();
}

class _NoteScreensState extends State<NoteScreens> {
  final List<String> _notes = [];
  final TextEditingController _controller = TextEditingController();

  void _addNote() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _notes.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Tambah Catatan',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _addNote,
            child: Text('Tambahkan'),
          ),
        ],
      ),
    );
  }
}