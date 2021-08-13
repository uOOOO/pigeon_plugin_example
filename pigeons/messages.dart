import 'package:pigeon/pigeon.dart';

class Version {
  String? string;
}

@HostApi()
abstract class ExampleApi {
  Version getPlatformVersion();
}

enum Type { TYPE_A, TYPE_B }

class Goods {
  String? name;
  int? price;
  int? expiryDate;
  Type? type;
}

@HostApi()
abstract class StoreApi {
  void sell(Goods goods);
}
