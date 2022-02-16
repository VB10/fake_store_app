import 'package:flutter/material.dart';

class LoadingCenter extends StatelessWidget {
  const LoadingCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
