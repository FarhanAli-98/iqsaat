import 'package:flutter/material.dart';

class ThreeDotsIcon extends StatelessWidget {
  final VoidCallback onTap;
  final double size;
  final Color color;

  const ThreeDotsIcon({Key key, this.onTap, this.size = 5, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: List.generate(
          3,
          (_) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.5),
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: color ?? Colors.black,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
