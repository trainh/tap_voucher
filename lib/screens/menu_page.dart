import 'package:flutter/material.dart';
import 'package:tap_voucher/values/app_colors.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Tùy chọn',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColor.secondColor,
      ),
      body: Container(
        width: double.infinity,
        color: AppColor.primaryColor,
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 24, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hoạt động và thông tin của tôi'),
                    Container(
                      color: AppColor.buttonColor,
                      child: GestureDetector(
                        onTap: () {},
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.history),
                              ),
                              TextSpan(
                                text: 'Lịch sử hoạt động',
                                style: TextStyle(
                                    color: AppColor.greyOulineTextFildColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text('Hoạt động và thông tin của tôi'),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text('Hoạt động và thông tin của tôi'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
