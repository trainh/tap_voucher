import 'package:flutter/material.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/lists/list_voucher_vertical.dart';
import 'package:tap_voucher/widgets/text_fields/text_field_search.dart';

class ListVoucherNotGet extends StatefulWidget {
  const ListVoucherNotGet(
      {Key? key, required this.title, required this.listVoucher})
      : super(key: key);
  final String title;
  final List<Voucher> listVoucher;

  @override
  State<ListVoucherNotGet> createState() => _ListVoucherNotGetState();
}

class _ListVoucherNotGetState extends State<ListVoucherNotGet> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
        body: Column(
          children: [
            const TextFieldSearcher(),
            ListVoucherVertical(listVoucher: widget.listVoucher),
          ],
        ),
      ),
    );
  }
}
