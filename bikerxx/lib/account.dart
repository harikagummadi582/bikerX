import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 6, 7, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Hello user <name> !\n9725324520',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'Past',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Center(
                      child: Text(
                        'Upcoming',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 18, 82, 36),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Center(
                      child: Text(
                        'Bikes',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 94, 209, 230),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 80,
            width: 300,
            child: const Center(
              child: Text(
                'accont details',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 94, 209, 230),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 80,
            width: 300,
            child: const Center(
              child: Text(
                'set preferences',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 94, 209, 230),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 80,
            width: 300,
            child: const Center(
              child: Text(
                'security and privacy',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 94, 209, 230),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 80,
            width: 300,
            child: const Center(
              child: Text(
                'refer and earn',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 94, 209, 230),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 80,
            width: 300,
            child: const Center(
              child: Text(
                'register as a service center',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
