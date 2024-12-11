import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListScreen(),
    );
  }
}

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<dynamic> users = [];
  List<Map<String, String>> posts = [];
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body);
      });
    }
  }

  void addPost(String title, String body) {
    setState(() {
      posts.add({'title': title, 'body': body});
    });
  }

  void editPost(int index, String title, String body) {
    setState(() {
      posts[index] = {'title': title, 'body': body};
    });
  }

  void deletePost(int index) {
    setState(() {
      posts.removeAt(index);
    });
  }

  void showCreatePostDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Create Post'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: bodyController,
                decoration: InputDecoration(labelText: 'Body'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    bodyController.text.isNotEmpty) {
                  addPost(titleController.text, bodyController.text);
                  titleController.clear();
                  bodyController.clear();
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add Post'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User List',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Container(
                    color: Colors.lightBlue,
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                      title: Text(
                        users[index]['name'],
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        users[index]['email'],
                        style: TextStyle(
                            color: const Color.fromARGB(255, 158, 16, 5)),
                      ),
                    ));
              },
            ),
          ),
          Divider(),
          SizedBox(
            width: double.infinity,
            height: 20,
            child: Center(
              child: Text(
                "Posts",
                selectionColor: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(posts[index]['title'] ?? ''),
                    subtitle: Text(posts[index]['body'] ?? ''),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            titleController.text = posts[index]['title'] ?? '';
                            bodyController.text = posts[index]['body'] ?? '';
                            showCreatePostDialog();
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => deletePost(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showCreatePostDialog,
        tooltip: 'Create Post',
        child: Icon(Icons.add),
      ),
    );
  }
}
