import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class chatgpt extends StatefulWidget {
  static const String id = 'chat_gpt';

  @override
  State<chatgpt> createState() => _chatgptState();
}

class _chatgptState extends State<chatgpt> {
  final messages = <Map<String, String>>[];
  final textController = TextEditingController();
  final apiKey =
      'key = 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'; // Replace with your OpenAI API key

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void _sendMessage(String message) async {
    setState(() {
      messages.add({'role': 'user', 'content': message});
    });

    final response = await getChatResponse(message);

    setState(() {
      messages.add({'role': 'assistant', 'content': response});
    });
  }

  Future<String> getChatResponse(String message) async {
    final url = 'https://api.openai.com/v1/engines/gpt-3.5-turbo/completions';
    final headers = {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    };

    final requestBody = json.encode({
      'messages': [
        {'role': 'system', 'content': 'You are a helpful assistant.'},
        {'role': 'user', 'content': message},
      ],
    });

    final response =
        await http.post(Uri.parse(url), headers: headers, body: requestBody);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return jsonResponse['choices'][0]['message']['content'];
    } else {
      throw Exception('Failed to get response from OpenAI');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  title: Text('${message['role']}: ${message['content']}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textController,
              onSubmitted: _sendMessage,
              decoration: InputDecoration(
                labelText: 'Enter your prompt',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _sendMessage(textController.text),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
