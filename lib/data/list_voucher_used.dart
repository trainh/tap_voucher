import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/values/app_assets.dart';

List<Voucher> getListVoucherUsed() {
  List<Voucher> mylist = <Voucher>[];
  mylist.add(
    Voucher(
      AppAssets.koi,
      'KOI Thé',
      'Trà sữa',
      '12/20',
      '4.6',
      '1K+',
      '8giờ ngày 07/06/2022',
      '10giờ ngày 07/06/2022',
      '1,0 km',
      '5 phút',
      '8h-10h 5km',
      'Giảm 20% tối đa 20k',
    ),
  );
  mylist.add(
    Voucher(
      AppAssets.gongcha,
      'Gong Cha',
      'Trà sữa',
      '2/10',
      '4.9',
      '2K+',
      '8giờ ngày 08/06/2022',
      '9giờ ngày 08/06/2022',
      '1,9 km',
      '10 phút',
      '8h-9h 20km',
      'Giảm 50% tối đa 20k',
    ),
  );

  mylist.add(
    Voucher(
      AppAssets.complt,
      'Cơm Tấm Phúc Lộc Thọ',
      'Cơm',
      '3/10',
      '4.4',
      '6K+',
      '9giờ ngày 06/06/2022',
      '11giờ ngày 06/06/2022',
      '5,0 km',
      '30 phút',
      '9h-11h 3,7km',
      'Giảm 50% tối đa 10k',
    ),
  );
  mylist.add(
    Voucher(
      AppAssets.bucoffee,
      'Bự Coffee & Tea',
      'Coffee - Trà',
      '9/10',
      '4,8',
      '4K+',
      '9giờ ngày 06/06/2022',
      '11giờ ngày 06/06/2022',
      '5,0 km',
      '30 phút',
      '9h-10h 1,3km',
      'Giảm 15% tối đa 100k',
    ),
  );
  mylist.add(
    Voucher(
      AppAssets.jollibee,
      'Jollibee Xa Lộ',
      'Thức ăn nhanh',
      '5/20',
      '4.7',
      '4K+',
      '9giờ ngày 06/06/2022',
      '11giờ ngày 06/06/2022',
      '5,0 km',
      '30 phút',
      '8h-11h 6,0km',
      'Giảm 20% tối đa 50k',
    ),
  );
  mylist.add(
    Voucher(
      AppAssets.koi,
      'KOI Thé',
      'Trà sữa',
      '12/20',
      '4.6',
      '1K+',
      '8giờ ngày 07/06/2022',
      '10giờ ngày 07/06/2022',
      '1,0 km',
      '5 phút',
      '8h-10h 5km',
      'Giảm 20% tối đa 20k',
    ),
  );
  return mylist;
}
