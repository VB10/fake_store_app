class ApplicationConstant {
  static ApplicationConstant? _instace;
  static ApplicationConstant get instance {
    _instace ??= ApplicationConstant._init();
    return _instace!;
  }

  ApplicationConstant._init();

  final String baseUrl = 'https://fakestoreapi.com/';
  final String dummyImage = 'https://picsum.photos/200/300';
}

double kZero = 0;
double kOne = 1;
