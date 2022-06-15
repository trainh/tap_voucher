import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tap_voucher/data/list_voucher.dart';
import 'package:tap_voucher/values/app_colors.dart';

class ListVoucher extends StatefulWidget {
  const ListVoucher({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListVoucher> createState() => _ListVoucherState();
}

class _ListVoucherState extends State<ListVoucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: AppColor.textBlueBack,
          ),
        ),
        backgroundColor: AppColor.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            getListVoucher().length,
            (index) => (Container(
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
                          child: Image.asset(getListVoucher()[index].image))),
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
                              getListVoucher()[index].brand,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                getListVoucher()[index].tag,
                                style: const TextStyle(
                                  color: AppColor.textHint,
                                  height: 1.5,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: getListVoucher()[index].people,
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
                                      text: getListVoucher()[index].ponit,
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
                                      text: getListVoucher()[index].time,
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
                                    text: getListVoucher()[index].time,
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
            )),
          ),
        ),
      ),
    );
  }
}
