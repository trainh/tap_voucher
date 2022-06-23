import 'package:flutter/material.dart';
import 'package:tap_voucher/models/service.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Service> listFood = getFoodService;
    List<Service> listSpa = getSpaService;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Tất cả các dịch vụ',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColor.secondColor,
      ),
      body: Container(
        color: AppColor.primaryColor,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Thức ăn - Đồ uống',
                style: TextStyle(
                  color: AppColor.textBlueBack,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                itemCount: listFood.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          listFood[index].image,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(listFood[index].name),
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 20,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Thức ăn - Đồ uống',
                style: TextStyle(
                  color: AppColor.textBlueBack,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: GridView.builder(
                itemCount: listSpa.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          listSpa[index].image,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(listSpa[index].name),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
