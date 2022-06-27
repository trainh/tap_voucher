import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';

class SeeReviewPage extends StatelessWidget {
  const SeeReviewPage({Key? key, required this.voucher}) : super(key: key);
  final Voucher voucher;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Đánh giá và nhận xét',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColor.secondColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColor.primaryColor,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Text(
                  voucher.brand,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 18),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: AppColor.secondColor,
                      ),
                    ),
                    child: Expanded(
                      child: Column(
                        children: [
                          Text(
                            voucher.ponit,
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: RatingBar.builder(
                              initialRating: double.parse(voucher.ponit),
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              '${voucher.totalRating} đáng giá',
                              style: const TextStyle(color: AppColor.textHint),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 19, bottom: 19, left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.secondColor,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('5'),
                            Container(
                              width: 235,
                              child: GFProgressBar(
                                percentage: 0.9,
                                backgroundColor: Colors.black26,
                                progressBarColor:
                                    Color.fromARGB(255, 248, 223, 0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('4'),
                            Container(
                              width: 235,
                              child: GFProgressBar(
                                percentage: 0.9,
                                backgroundColor: Colors.black26,
                                progressBarColor:
                                    Color.fromARGB(255, 248, 223, 0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('3'),
                            Container(
                              width: 235,
                              child: GFProgressBar(
                                percentage: 0.7,
                                backgroundColor: Colors.black26,
                                progressBarColor:
                                    Color.fromARGB(255, 248, 223, 0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('2'),
                            Container(
                              width: 235,
                              child: GFProgressBar(
                                percentage: 0.3,
                                backgroundColor: Colors.black26,
                                progressBarColor:
                                    Color.fromARGB(255, 248, 223, 0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('1'),
                            Container(
                              width: 235,
                              child: GFProgressBar(
                                percentage: 0.1,
                                backgroundColor: Colors.black26,
                                progressBarColor:
                                    Color.fromARGB(255, 248, 223, 0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _comment('Linh', 5, 'Cơm ngon, Voucher tốt'),
              _comment('Trai', 5, 'Cơm ngon, Voucher tốt'),
              _comment('Trung', 2, 'Cơm ngon, Voucher tốt'),
              _comment('Trang', 5, 'Cơm ngon, Voucher tốt'),
              _comment('Anh', 4, 'Cơm ngon, Voucher tốt'),
              _comment('Em', 3, 'Cơm ngon, Voucher tốt'),
              _comment('Chị', 1, 'Cơm ngon, Voucher tốt'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _comment(
    String name,
    int totalRating,
    String comment,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.secondColor,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  radius: (20),
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      AppAssets.user,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(name),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RatingBar.builder(
                  itemSize: 20,
                  initialRating: double.parse(voucher.ponit),
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: totalRating,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 30,
                child: const Text(
                  '. 07-06-2022',
                  style: TextStyle(
                    color: AppColor.textHint,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            alignment: Alignment.centerLeft,
            child: Text(comment, textAlign: TextAlign.left),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            alignment: Alignment.centerLeft,
            child: Row(
              children: const [
                Icon(Icons.thumb_up_alt_outlined),
                Text(
                  'Có giúp ít cho bạn không.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColor.textHint,
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
