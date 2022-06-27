import 'package:flutter/material.dart';
import 'package:tap_voucher/data/list_voucher.dart';
import 'package:tap_voucher/models/service.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/values/app_fonts.dart';
import 'package:tap_voucher/widgets/app_bar/app_bar_home_page.dart';
import 'package:tap_voucher/widgets/lists/list_voucher_horizontal.dart';
import 'package:tap_voucher/widgets/services/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Service> listFood = getFoodService;
  List<Service> listSpa = getSpaService;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AppBarHomePage(),
          ListVoucherHorizontal(
            typeVoucher: 'Voucher các quán gần bạn hôm nay',
            listVoucher: getListVoucherGetNow(),
          ),
          ListVoucherHorizontal(
            typeVoucher: 'Voucher các quán tại Hồ Chí Minh',
            listVoucher: getListVoucherNewStore(),
          ),
          Container(
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
                              text: 'Đồ ăn - Thức uống',
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ListVoucherNotGet(
                      //       title: typeVoucher,
                      //       listVoucher: listVoucher,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      listFood.length,
                      (index) => AllService(service: listFood[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, bottom: 50),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Spa',
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ListVoucherNotGet(
                      //       title: typeVoucher,
                      //       listVoucher: listVoucher,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      listSpa.length,
                      (index) => AllService(service: listSpa[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
