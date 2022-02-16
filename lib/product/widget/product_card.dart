import 'package:fake_store_app/features/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../padding/page_padding.dart';
import '../utility/image/project_network_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, this.model}) : super(key: key);
  final ProductModel? model;
  @override
  Widget build(BuildContext context) {
    if (model == null) const SizedBox.shrink();
    return Padding(
      padding: const PagePadding.all(),
      child: Card(
        child: ListTile(
          contentPadding: const PagePadding.all(),
          title: SizedBox(height: context.dynamicHeight(0.5), child: ProjectNetworkImage.network(src: model?.image)),
          subtitle: Text(model.toString(), style: context.textTheme.headline6),
        ),
      ),
    );
  }
}
