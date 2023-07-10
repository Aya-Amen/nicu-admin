import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../common/app_colors.dart';

class NotificationCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFD0EBF7),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: DateTime.now().hour <= 12
                          ? 'Good Morning, \n  Guest'
                          : 'Good Night, \n Guest ',
                      style: const TextStyle(
                        height: 1.3,
                        color: Color(0xFF0467C2),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const TextSpan(
                      text: 'Have a nice day.!',
                      style: TextStyle(
                        color: Color(0xFF0467C2),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Today you have 9 Request.\nAlso you need to update 2 hospital.\n\n flutter developer",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.black,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Read More",
                style: TextStyle(
                    fontSize: 14,
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
          if (MediaQuery.of(context).size.width >= 620) ...{
            Spacer(),
            Lottie.asset(
              'assets/lottiefiles/center.json',
              height: 200,
            ),
          }
        ],
      ),
    );
  }
}
