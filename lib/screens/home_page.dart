import 'package:flutter/material.dart';
import 'package:tap_voucher/data/list_voucher.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/screens/details_voucher.dart';
import 'package:tap_voucher/screens/list_voucher.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/values/app_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: Container(
              color: AppColor.secondColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 4,
                      right: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ListVoucher(title: 'hihi'),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.subject_rounded,
                            size: 48,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Column(
                            children: const [
                              Text('Xin chào Anh'),
                              Text(
                                'Nguyễn Hoàng Trai',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_sharp,
                            size: 42,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: CircleAvatar(
                                    radius: (40),
                                    backgroundColor: Colors.white,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        AppAssets.user,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  width: 240,
                                  child: const Text(
                                      'Hiện Anh có một voucher chưa sửa dụng vào ngày 15/08/2022'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 80,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Icon(
                            Icons.qr_code_scanner,
                            size: 80,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: AppColor.primaryColor,
            child: Column(
              children: [
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
                                    text: 'Nhận voucher ngay bây giờ!',
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
                                builder: (context) => const ListVoucher(
                                  title: 'Nhận voucher ngay bây giờ!',
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
                            getListVoucherGetNow().length,
                            (index) => _card(getListVoucherGetNow()[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                    text: 'Nhận voucher từ quán mới!',
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
                                builder: (context) => const ListVoucher(
                                  title: 'Nhận voucher từ quán mới!',
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
                            getListVoucherNewStore().length,
                            (index) => _card(getListVoucherGetNow()[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 4),
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Nhận voucher của các dịch vụ khác!',
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
                                builder: (context) => const ListVoucher(
                                  title: 'Nhận voucher của các dịch vụ khác!',
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
                            getListVoucherOtherService().length,
                            (index) => _card(getListVoucherGetNow()[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, bottom: 30),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 4),
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Nhận voucher của các dịch vụ khác!',
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
                                builder: (context) => const ListVoucher(
                                  title: 'Nhận voucher của các dịch vụ khác!',
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
                            getListVoucherOtherService().length,
                            (index) => _card(getListVoucherGetNow()[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _card(Voucher voucher) {
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
