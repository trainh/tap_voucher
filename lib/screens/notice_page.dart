import 'package:flutter/material.dart';
import 'package:tap_voucher/data/list_voucher_used.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/lists/details_voucher.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.secondColor,
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Thông báo',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            getListVoucherUsed().length,
            (index) => (GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsVoucher(voucher: getListVoucherUsed()[index]),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.secondColor,
                      width: 2,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.discount,
                                color: Colors.orange,
                                size: 25,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '${getListVoucherUsed()[index].brand} có voucher mới',
                              style: const TextStyle(
                                color: AppColor.textButtonColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(getListVoucherUsed()[index].sale),
                    ),
                  ],
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
