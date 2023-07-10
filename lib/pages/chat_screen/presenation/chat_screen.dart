import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 20,
        itemBuilder: (context, index) {
          return const CardItem();
        },
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 15),
      color: context.theme.secondary,
      child: ListTile(
        leading: Stack(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
              maxRadius: 30,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        title: const Text(
          "Dr. Eleanor Pena",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: const Text("Lorem ipsum dolor sit amet"),

        // Add more details or customize your chat card as needed
      ),
    );
  }
}
