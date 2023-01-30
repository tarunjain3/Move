class Order {
  final String id;
  final String price;
  final String quantity;
  final String material;
  final String vehicle;
  final String pickup;
  final String pickupDate;
  final String delivery;
  final String deliveryDate;
  final String status;

  const Order({
    required this.id,
    required this.price,
    required this.quantity,
    required this.material,
    required this.vehicle,
    required this.pickup,
    required this.pickupDate,
    required this.delivery,
    required this.deliveryDate,
    required this.status,
  });
}
