import 'package:fake_store_app/product/constant/application_constant.dart';
import 'package:flutter/material.dart';

import '../../mixin/image_mixin.dart';

class ProjectNetworkImage extends Image with ImageMixin {
  ProjectNetworkImage.network({Key? key, String? src})
      : super.network(src ?? ApplicationConstant.instance.dummyImage, key: key);
}
