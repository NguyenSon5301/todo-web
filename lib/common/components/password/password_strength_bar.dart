import 'package:flutter/material.dart';

import '../../common.dart';
import '../components.dart';

class PasswordStrengthBarWidget extends StatelessWidget {
  final int level;
  final double? width;
  const PasswordStrengthBarWidget({required this.level, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = width ?? MediaQuery.of(context).size.width;
    var tempLv = level;
    var text = 'Very Weak';
    var color = AppColors.grey.scale5;
    var barWidth = .0;

    if (tempLv < 0) {
      tempLv = 0;
    } else if (tempLv > 4) {
      tempLv = 4;
    }
    switch (tempLv) {
      case 1:
        barWidth = w * .25;
        text = 'Weak';
        color = const Color(0xffFF1744);
        break;
      case 2:
        barWidth = w * .5;
        text = 'Fair';
        color = const Color(0xffFFCA28);
        break;
      case 3:
        barWidth = w * .75;
        text = 'Good';
        color = const Color(0xff64DD17);
        break;
      case 4:
        barWidth = w;
        text = 'Strong';
        color = const Color(0xff00C853);
        break;
      default:
        barWidth = 0;
        text = 'Very Weak';
        color = AppColors.grey.scale5;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          children: [
            _buildBar(w, AppColors.grey.scale5),
            _buildBar(barWidth, color),
          ],
        ),
        SizedBox(height: 8.scaled),
        AppText(
          text,
          AppTextStyles.caption12Regular,
          color: color,
        ),
      ],
    );
  }

  Widget _buildBar(double width, Color color) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: width,
      height: 4.scaled,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.scaled),
        color: color,
      ),
    );
  }
}
