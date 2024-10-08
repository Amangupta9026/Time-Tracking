import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            width: 60,
            height: 60,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset('assets/profile.jpg')),
          ),
          const SizedBox(height: 10),
          const Text(
            'Wallace Henderson',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              fontSize: 18,
            ),
          ),
          const Text('Owlerton Electric LLC'),
          const Text(
            'wallace.henderson@yahoo.com',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
