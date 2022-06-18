import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/values/app_fonts.dart';

class AppBarMain extends StatelessWidget {
  const AppBarMain({Key? key, required this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 3 / 10,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: AppColor.secondColor,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                ),
                child: Text(
                  title,
                  style: AppStyles.h4.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: AppColor.secondColor,
              child: Image.asset(
                AppAssets.logo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
