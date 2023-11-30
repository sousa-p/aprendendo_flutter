import 'dart:convert';

import 'package:http/http.dart' as http;

Future main() async {
  final user = await fetch();

  print(user.toJson());
}

Future<User> fetch() async {
  var url = Uri.http('jsonplaceholder.typicode.com', '/users');

  var response = await http.get(url);
  var json = jsonDecode(response.body);

  return User.fromJson(json[0]);
}

class User {
  late final int id;
  late final String name;
  late final String email;
  late final Address address;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.address});
  factory User.fromJson(Map json) {
    return User(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        address: Address.fromJson(json['address']));
  }

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'address': address.toJson()
    };
  }
}

class Address {
  late final String street;
  late final String suite;
  late final String city;
  late final String zipcode;
  late final Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromJson(Map json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: Geo.fromJson(json['geo']),
    );
  }

  Map toJson() {
    return {
      'street': street,
      'suite': suite,
      'city': city,
      'zipcode': zipcode,
      'geo': geo.toJson()
    };
  }
}

class Geo {
  late final String lat;
  late final String lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromJson(Map json) {
    return Geo(lat: json['lat'], lng: json['lng']);
  }

  Map toJson() {
    return {'lat': lat, 'lng': lng};
  }
}
