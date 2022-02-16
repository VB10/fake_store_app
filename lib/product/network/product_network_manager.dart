import 'package:vexana/vexana.dart';

import '../constant/application_constant.dart';

class ProductNetworkManager extends NetworkManager {
  ProductNetworkManager() : super(options: BaseOptions(baseUrl: ApplicationConstant.instance.baseUrl));
}
