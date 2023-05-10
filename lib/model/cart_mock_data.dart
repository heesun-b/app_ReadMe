class CartMockData {
  final int id;
  final String image;
  final String title;
  final String author;
  final String store;
  final String score;
  final int price;
  bool ischecked;

  CartMockData(
      {required this.id,
        required this.image,
      required this.title,
      required this.author,
      required this.store,
      required this.score,
      required this.price,
      this.ischecked = false});
}

List<CartMockData> cartList = [
  CartMockData(
    id: 1,
    image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/book1.jpg",
    title: "1984",
    author: "조지 오웰",
    store: "그린",
    score: "4.5",
    price: 15000,
    ischecked: false)
];
