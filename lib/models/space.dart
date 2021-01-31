class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space(
      {this.id,
      this.city,
      this.imageUrl,
      this.name,
      this.country,
      this.price,
      this.rating,
      this.address,
      this.mapUrl,
      this.numberOfBedrooms,
      this.numberOfCupboards,
      this.numberOfKitchens,
      this.phone,
      this.photos});

  Space.fromJson(json) {
    id = json['id'];
    city = json['city'];
    imageUrl = json['image_url'];
    name = json['name'];
    country = json['country'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    photos = json['photos'];
    mapUrl = json['map_url'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfCupboards = json['number_of_cupboards'];
    numberOfBedrooms = json['number_of_bedrooms'];
  }
}
