import 'package:flutter/material.dart';
import 'package:flutter_charts/core/common_domain/base_components/responsive_widget.dart';
import 'package:flutter_charts/core/values/app_colors.dart';
import 'package:flutter_charts/core/widgets/app_text_field.dart';
import 'package:flutter_charts/core/widgets/common_button.dart';

import '../../../core/values/constants.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: Container(), tablet: Container(), desktop: _buildDesktopBody(context));
  }

  Widget _buildDesktopBody(context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 25),
            height: 220,
            width: 220,
            color: AppColors.greenColor,
            alignment: Alignment.center,
            child: const Text(
              'Logo',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: 450,
            decoration:  BoxDecoration(
              color: AppColors.secondary2Color,
              borderRadius: BorderRadius.circular(r8)
            ),
            padding: const EdgeInsets.all(30),
            child:  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AppTextField(
                  hintText: 'Enter your email address',
                ),
                const AppTextField(
                  isForPassword: true,
                  hintText: 'Enter your password',
                ),
                CommonButton(onTap: (){}, text: 'login')
              ],
            ),
          )
        ],
      ),
    );
  }
}
