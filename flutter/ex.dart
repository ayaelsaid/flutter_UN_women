import 'package:flutter/material.dart';


class RoomList extends StatelessWidget {
  const RoomList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Room Lists',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: double.infinity,
        height: 400,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 200,
                  child: Image.asset(
                    'assets/king.jpg',
                  ), // Image wrapped with Container
                ),
                getlist('King Room', Icons.arrow_drop_up_sharp),
              ],
            ),
            const Text('A room with a king-sized bed')
          ],
        ),
      ),
    );
  }

  Widget getlist(String text, IconData icon) {
    return ListTile(
      title: Text(text),
      leading: Icon(icon),
      onTap: () {
        // Add onTap functionality here
      },
    );
  }
}
