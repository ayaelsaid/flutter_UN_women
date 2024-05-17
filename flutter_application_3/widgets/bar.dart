import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/facebook.dart';
import 'package:flutter_application_3/pages/twitter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "WOW Pizza",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigate to Twitter page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TwitterPage()),
              );
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/twitter.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              // Navigate to Facebook page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FacebookPage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.facebook, size: 30, color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange,
    );
  }
    @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}
