class PaymentMockData {
  final String image;
  final String title;
  final String store;
  final int price;
  final String day;

  PaymentMockData(
      {required this.image,
      required this.title,
      required this.store,
      required this.price,
       required this.day
      });
}

List<PaymentMockData> paymentList = [
  PaymentMockData(
      image: "book.jpg",
      title: "1984",
      store: "그린",
      price: 15000,
      day : "2023.04.19"
  ),
  PaymentMockData(
      image: "book2.jpg",
      title: "물고기는 존재하지 않는다",
      store: "그린",
      price: 12000,
      day : "2023.04.19"
      ),
];
