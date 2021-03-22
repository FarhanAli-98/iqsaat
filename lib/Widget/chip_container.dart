
import 'package:flutter/material.dart';
import 'package:iqsaat/utils/app_colors.dart';

class ChipContainer extends StatelessWidget {
  final String leading;
  final String trailing;
  final bool filled;
  final VoidCallback onTap;
  const ChipContainer({
    Key key,
    @required this.leading,
    this.trailing,
    this.filled = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: filled ? AppColors.primarycolor : Colors.transparent,
          border: Border.all(
            color: filled ? AppColors.primarycolor : Colors.black38,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              leading,
              style: TextStyle(
                fontWeight: filled ? FontWeight.w500 : FontWeight.normal,
                color: filled ? Colors.white : Colors.black54,
              ),
            ),
            if (trailing != null) SizedBox(width: 12),
            if (trailing != null)
              Text(
                trailing,
              ),
          ],
        ),
      ),
    );
  }
}
