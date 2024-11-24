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
      home: ApiDataScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ApiDataScreen extends StatefulWidget {
  @override
  _ApiDataScreenState createState() => _ApiDataScreenState();
}

class _ApiDataScreenState extends State<ApiDataScreen> {
  String? _title;
  bool _isLoading = false;

  Future<void> fetchApiData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _title = data['title'];
        });
      } else {
        setState(() {
          _title = "Failed to fetch data";
        });
      }
    } catch (e) {
      setState(() {
        _title = "Error: $e";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple API Fetch"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: _isLoading
                ? CircularProgressIndicator()
                : Text(
                    _title ?? "Press the button to fetch data",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                onPressed: fetchApiData,
                child: Text(
                  'Fetch Data',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
