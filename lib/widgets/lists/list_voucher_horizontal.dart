import 'package:flutter/material.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/widgets/lists/list_voucher_not_get.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/values/app_fonts.dart';
import 'package:tap_voucher/widgets/vouchers/voucher_vertical.dart';

class ListVoucherHorizontal extends StatelessWidget {
  const ListVoucherHorizontal({
    Key? key,
    required this.typeVoucher,
    required this.listVoucher,
  }) : super(key: key);

  final String typeVoucher;
  final List<Voucher> listVoucher;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: TextButton(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: typeVoucher,
                        style: AppStyles.h4.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.textBlueBack)),
                    const WidgetSpan(
                      child: Icon(Icons.arrow_right_alt_rounded),
                    ),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListVoucherNotGet(
                      title: typeVoucher,
                      listVoucher: listVoucher,
                    ),
                  ),
                );
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                listVoucher.length,
                (index) => VoucerVertical(voucher: listVoucher[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
