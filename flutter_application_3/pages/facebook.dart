import 'package:flutter/material.dart';
import 'package:flutter_application_3/wedgets/bar.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Container(
            height: 70,
            color: const Color.fromARGB(255, 10, 58, 97),
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: const Center(
              child: Text(
                'Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 240, 234, 180),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Icon(Icons.phone, color: Color.fromARGB(255, 4, 61, 108)),
                const SizedBox(width: 10),
                Text(
                  'Get Facebook for Android and become faster',
                  style: TextStyle(color: Color.fromARGB(255, 4, 61, 108)),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 168, 206, 224),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Mobile number or Email',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 4, 61, 108),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                ),
                Center(child: Text('OR')),
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Create new account',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 3, 110, 7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forget your password',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getTextButton('English (UK)'),
                      getTextButton('العربية'),
                      getTextButton('Français (France)'),
                      getTextButton('Italiano'),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getTextButton('Deutsch'),
                      getTextButton('Русский'),
                      getTextButton('Español'),
                      IconButton(
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Icon(Icons.add),
                        ),
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getTextButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }

}
