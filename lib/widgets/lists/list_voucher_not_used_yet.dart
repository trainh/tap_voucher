import 'package:flutter/material.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/vouchers/voucher_not_used_yet_details.dart';

class ListVoucherNotUsedYet extends StatelessWidget {
  const ListVoucherNotUsedYet({Key? key, required this.listVoucher})
      : super(key: key);
  final List<Voucher> listVoucher;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            listVoucher.length,
            (index) => (GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VoucherNotUsedYetDetails(
                      voucher: listVoucher[index],
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(listVoucher[index].image))),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                listVoucher[index].brand,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  listVoucher[index].tag,
                                  style: const TextStyle(
                                    color: AppColor.textHint,
                                    height: 1.5,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: listVoucher[index].people,
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
                                          color:
                                              Color.fromARGB(255, 255, 238, 0),
                                          size: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text: listVoucher[index].ponit,
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
                                        text: listVoucher[index].time,
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
                                      text: listVoucher[index].time,
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
