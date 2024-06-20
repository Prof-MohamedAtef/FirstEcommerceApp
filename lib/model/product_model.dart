class Products {
  String name;
  String pic;
  bool like;
  String? dis;
  double price;
  int? counter = 0;

  Products(
      {required this.name,
      required this.pic,
      required this.like,
      this.dis,
      required this.price,
      this.counter});
}

List<Products> listCartProduct = [];

List<Products> itemProduct = [
  Products(price : 25000,name: "Iphone", pic: "assets/images/pic4.jpeg", like: true , ),
  Products(price : 40000, name: "Samsung", pic: "assets/images/pic5.jpeg",
      like: false ,
      dis: " Good quality "),
  Products(price :10000, name: "Huawei ", pic: "assets/images/pic6.jpeg", like: true,),
];
