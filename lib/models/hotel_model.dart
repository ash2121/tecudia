class Hotel {
  final String name;
  final double rate;
  final String location;
  final double rating;
  final String imageUrl;
  String? description;

  Hotel({
    required this.rate,
    required this.location,
    required this.rating,
    required this.imageUrl,
    required this.name,
    this.description,
  });
}
