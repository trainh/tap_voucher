import 'package:flutter/material.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/screens/details_voucher.dart';
import 'package:tap_voucher/values/app_colors.dart';

class VoucerVertical extends StatelessWidget {
  const VoucerVertical({Key? key, required this.voucher}) : super(key: key);
  final Voucher voucher;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsVoucher(
              voucher: voucher,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.secondColor,
        ),
        margin: const EdgeInsets.only(right: 16, top: 4),
        width: 178,
        height: 200,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(voucher.image),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      voucher.brand,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        voucher.tag,
                        style: const TextStyle(
                          color: AppColor.textHint,
                          height: 1.5,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: voucher.people,
                              style: const TextStyle(
                                color: AppColor.textHint,
                                fontSize: 16,
                                height: 1.5,
                              ),
                            ),
                            const WidgetSpan(
                              child: Icon(
                                Icons.people,
                                color: AppColor.textHint,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              text: voucher.ponit,
                              style: const TextStyle(
                                color: AppColor.textHint,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            const WidgetSpan(
                              child: Icon(
                                Icons.access_time_filled_sharp,
                                color: AppColor.textHint,
                                size: 20,
                              ),
                            ),
                            TextSpan(
                              text: voucher.time,
                              style: const TextStyle(
                                height: 1.5,
                                color: AppColor.textHint,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const WidgetSpan(
                            child: Icon(
                              Icons.discount,
                              color: AppColor.textHint,
                              size: 20,
                            ),
                          ),
                          TextSpan(
                            text: voucher.sale,
                            style: const TextStyle(
                              color: AppColor.textHint,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
