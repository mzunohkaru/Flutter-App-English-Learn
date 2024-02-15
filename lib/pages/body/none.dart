import 'package:flutter/material.dart';

class BodyNone extends StatelessWidget {
  final VoidCallback onTap;

  const BodyNone({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('タップしてフレーズ訳を表示'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
