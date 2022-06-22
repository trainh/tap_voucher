import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/screens/user/review_page.dart';
import 'package:tap_voucher/screens/user/see_review_page.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/values/app_fonts.dart';

class VoucherUsedDetails extends StatelessWidget {
  const VoucherUsedDetails({Key? key, required this.voucher}) : super(key: key);
  final Voucher voucher;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: Text(
          voucher.brand,
          style: const TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () => {},
              icon: const Icon(
                LineIcons.heartAlt,
                color: Colors.red,
                size: 28,
              ),
            ),
          ),
        ],
        backgroundColor: AppColor.secondColor,
      ),
      body: Container(
        color: AppColor.primaryColor,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(voucher.image),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.secondColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 52,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.textHint,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.store,
                              color: Colors.pinkAccent,
                              size: 32,
                            ),
                            Text(
                              ' ${voucher.brand}',
                              style: AppStyles.h4.copyWith(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right_rounded,
                          size: 36,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.textHint,
                          width: 1,
                        ),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SeeReviewPage(
                              voucher: voucher,
                            ),
                          ),
                        ),
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const WidgetSpan(
                                      child: Icon(
                                        Icons.star_outlined,
                                        color: Color.fromARGB(255, 255, 238, 0),
                                        size: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ${voucher.ponit}',
                                      style: const TextStyle(
                                        color: AppColor.textButtonColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  '(${voucher.totalRating})',
                                  style: const TextStyle(
                                    color: AppColor.textHint,
                                  ),
                                ),
                              ),
                              const Text(
                                ' - Đánh giá và nhận xét',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 36,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 44,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.textHint,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  const WidgetSpan(
                                    child: Icon(
                                      Icons.access_time_filled,
                                      color: Color.fromARGB(255, 255, 87, 101),
                                      size: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' ${voucher.beginTime} -> ${voucher.endTime}',
                                    style: const TextStyle(
                                      color: AppColor.textButtonColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.textHint,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  const WidgetSpan(
                                    child: Icon(
                                      Icons.car_crash_rounded,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${voucher.distance}',
                                    style: const TextStyle(
                                      color: AppColor.textButtonColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' (${voucher.timeMove})',
                                    style: const TextStyle(
                                      color: AppColor.textHint,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.textHint,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  const WidgetSpan(
                                    child: Icon(
                                      Icons.discount,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${voucher.sale}',
                                    style: const TextStyle(
                                      color: AppColor.textButtonColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  const WidgetSpan(
                                    child: Icon(
                                      Icons.people,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Số người: ${voucher.people}',
                                    style: const TextStyle(
                                      color: AppColor.textButtonColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 320,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColor.secondColor),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewPage(
                        voucher: voucher,
                      ),
                    ),
                  );
                },
                label: const Text(
                  'Đánh giá',
                  style:
                      TextStyle(color: AppColor.textButtonColor, fontSize: 32),
                ),
                icon: const Icon(Icons.rate_review,
                    color: AppColor.textButtonColor, size: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
