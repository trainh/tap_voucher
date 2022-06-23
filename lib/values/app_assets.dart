import 'package:tap_voucher/models/service.dart';

/// Define path of assets (image)

class AppAssets {
  static const String imagePath = 'assets/images/';
  static const String logo = '${imagePath}logo.png';
  static const String user = '${imagePath}user.png';
  static const String complt = '${imagePath}com-plt.png';
  static const String bucoffee = '${imagePath}bu-coffee.png';
  static const String jollibee = '${imagePath}jollibee.png';
  static const String koi = '${imagePath}koi.png';
  static const String gongcha = '${imagePath}gongcha.png';
  static const String buncha = '${imagePath}buncha.png';
  static const String miy = '${imagePath}miy.png';
  static const String gochatea = '${imagePath}gochatea.png';
  static const String pizza = '${imagePath}pizza.png';
  static const String banhkem = '${imagePath}banhkem.png';
  static const String bia = '${imagePath}bia.png';
  static const String caffee = '${imagePath}caffee.png';
  static const String com = '${imagePath}com.png';
  static const String kem = '${imagePath}kem.png';
  static const String nuoctraicay = '${imagePath}nuoctraicay.png';
  static const String sushi = '${imagePath}sushi.png';
  static const String nuocngot = '${imagePath}nuocngot.png';
  static const String da = '${imagePath}da.png';
  static const String toc = '${imagePath}toc.png';
  static const String body = '${imagePath}body.png';
  static const String xonghoi = '${imagePath}xonghoi.png';
}

List<Service> getFoodService = [
  Service(AppAssets.banhkem, 'Bánh Kem'),
  Service(AppAssets.bia, 'Bia, Rựu'),
  Service(AppAssets.caffee, 'Coffee'),
  Service(AppAssets.com, 'Cơm'),
  Service(AppAssets.kem, 'Kem'),
  Service(AppAssets.nuoctraicay, 'Nước Ép'),
  Service(AppAssets.nuocngot, 'Nước ngọt'),
  Service(AppAssets.sushi, 'Sushi'),
];

List<Service> getSpaService = [
  Service(AppAssets.da, 'Spa Đá'),
  Service(AppAssets.toc, 'Spa Tóc'),
  Service(AppAssets.body, 'Spa Body'),
  Service(AppAssets.xonghoi, 'Xông Hơi'),
];
