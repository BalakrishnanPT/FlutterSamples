import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sample1/reusable_appbar.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  Screen3State createState() => Screen3State();
}

class Screen3State extends State<Screen3> {
  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    final response = await http.get(
        Uri.parse('https://5a7011e9c495aa0012e643f1.mockapi.io/api/users'));

    if (response.statusCode == 200) {
      setState(() {
        _data = List<Map<String, dynamic>>.from(json.decode(response.body));
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(title: "Screen 3"),
      body: _data.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                final item = _data[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item['avatar']),
                  ),
                  title: Text(item['name']),
                  subtitle: Text(item['country']),
                  trailing: Text(item['createdAt']),
                );
              },
            ),
    );
  }
}
