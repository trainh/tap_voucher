import 'package:flutter/cupertino.dart';
import 'package:tap_voucher/models/service.dart';

class AllService extends StatelessWidget {
  const AllService({super.key, required this.service});
  final Service service;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                service.image,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(service.name),
            ),
          ],
        ));
  }
}
