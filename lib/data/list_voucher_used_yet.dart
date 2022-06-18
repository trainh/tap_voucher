import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/values/app_assets.dart';

List<Voucher> getListVoucherUserYet() {
  List<Voucher> mylist = <Voucher>[];
  mylist.add(
    Voucher(
      AppAssets.complt,
      'Cơm Tấm Phúc Lộc Thọ',
      'Cơm',
      '3/10',
      '4.4',
      '6K',
      '9giờ ngày 06/06/2022',
      '11giờ ngày 06/06/2022',
      '5,0 km',
      '30 phút',
      '9h-11h 3,7km',
      'Giảm 50% tối đa 10k',
    ),
  );
  return mylist;
}
