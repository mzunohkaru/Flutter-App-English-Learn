import 'package:firebase_english_app/utils/constants.dart';
import 'package:flutter/material.dart';

class BodyTranslate extends StatelessWidget {
  final VoidCallback onTap;
  final String textJapanese;

  const BodyTranslate(
      {super.key, required this.onTap, required this.textJapanese});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(textJapanese, style: basicStyle),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text('さらに表示'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
