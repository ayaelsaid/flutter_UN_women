import 'package:flutter/material.dart';

class ExecuteAllButton extends StatelessWidget {
  const ExecuteAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getButtonCard(context, '/vegetablePizza', 'Vegetable Pizza'),
            getButtonCard(context, '/cheesePizza', 'Cheese Pizza'),
            getButtonCard(context, '/fries', 'Fries'),
          ],
        ),
      ),
    );
  }

  Widget getButtonCard(BuildContext context, String route, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
