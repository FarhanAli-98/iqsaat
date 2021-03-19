import 'dart:convert';

List<Event> evetns = [
  Event(),
];

class Event {
  String imageUrl;
  String name;
  String details;
  DateTime startsAt;
  DateTime endsAt;
  String location;
  double price;
  String category;
  String university;
  String club;
  String greek;
  String ageRestriction;
  bool petsAllowed;
  bool alcohalAllowed;
  bool guestsCanInvite;
  bool verified;
  Event({
    this.imageUrl = "images/adventure.png",
    this.name = "Awwwards Summit 2020",
    this.details =
        "Awwwards is a professional web design & development competition body. It aims to recognise and promote the best of innovative web design.",
    this.startsAt,
    this.endsAt,
    this.location = "605 W, 48th Street, Manhattan, 10036",
    this.price = 9.99,
    this.category = "Technology",
    this.university = "University of Florida",
    this.club = "club",
    this.greek = "greek",
    this.ageRestriction = "open",
    this.petsAllowed = true,
    this.alcohalAllowed = true,
    this.guestsCanInvite = true,
    this.verified = true,
  }) {
    this.startsAt = DateTime(2020, 2, 22, 18, 00);
    this.endsAt = DateTime(2020, 2, 22, 22, 00);
  }

  Event copyWith({
    String imageUrl,
    String name,
    String details,
    DateTime startsAt,
    DateTime endsAt,
    String location,
    double price,
    String category,
    String university,
    String club,
    String greek,
    String ageRestriction,
    bool petsAllowed,
    bool alcohalAllowed,
    bool guestsCanInvite,
  }) {
    return Event(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      details: details ?? this.details,
      startsAt: startsAt ?? this.startsAt,
      endsAt: endsAt ?? this.endsAt,
      location: location ?? this.location,
      price: price ?? this.price,
      category: category ?? this.category,
      university: university ?? this.university,
      club: club ?? this.club,
      greek: greek ?? this.greek,
      ageRestriction: ageRestriction ?? this.ageRestriction,
      petsAllowed: petsAllowed ?? this.petsAllowed,
      alcohalAllowed: alcohalAllowed ?? this.alcohalAllowed,
      guestsCanInvite: guestsCanInvite ?? this.guestsCanInvite,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'name': name,
      'details': details,
      'startsAt': startsAt.millisecondsSinceEpoch,
      'endsAt': endsAt.millisecondsSinceEpoch,
      'location': location,
      'price': price,
      'category': category,
      'university': university,
      'club': club,
      'greek': greek,
      'ageRestriction': ageRestriction,
      'petsAllowed': petsAllowed,
      'alcohalAllowed': alcohalAllowed,
      'guestsCanInvite': guestsCanInvite,
    };
  }

  static Event fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Event(
      imageUrl: map['imageUrl'],
      name: map['name'],
      details: map['details'],
      startsAt: DateTime.fromMillisecondsSinceEpoch(map['startsAt']),
      endsAt: DateTime.fromMillisecondsSinceEpoch(map['endsAt']),
      location: map['location'],
      price: map['price'],
      category: map['category'],
      university: map['university'],
      club: map['club'],
      greek: map['greek'],
      ageRestriction: map['ageRestriction'],
      petsAllowed: map['petsAllowed'],
      alcohalAllowed: map['alcohalAllowed'],
      guestsCanInvite: map['guestsCanInvite'],
    );
  }

  String toJson() => json.encode(toMap());

  static Event fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Event(imageUrl: $imageUrl, name: $name, details: $details, startsAt: $startsAt, endsAt: $endsAt, location: $location, price: $price, category: $category, university: $university, club: $club, greek: $greek, ageRestriction: $ageRestriction, petsAllowed: $petsAllowed, alcohalAllowed: $alcohalAllowed, guestsCanInvite: $guestsCanInvite)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Event &&
        o.imageUrl == imageUrl &&
        o.name == name &&
        o.details == details &&
        o.startsAt == startsAt &&
        o.endsAt == endsAt &&
        o.location == location &&
        o.price == price &&
        o.category == category &&
        o.university == university &&
        o.club == club &&
        o.greek == greek &&
        o.ageRestriction == ageRestriction &&
        o.petsAllowed == petsAllowed &&
        o.alcohalAllowed == alcohalAllowed &&
        o.guestsCanInvite == guestsCanInvite;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        name.hashCode ^
        details.hashCode ^
        startsAt.hashCode ^
        endsAt.hashCode ^
        location.hashCode ^
        price.hashCode ^
        category.hashCode ^
        university.hashCode ^
        club.hashCode ^
        greek.hashCode ^
        ageRestriction.hashCode ^
        petsAllowed.hashCode ^
        alcohalAllowed.hashCode ^
        guestsCanInvite.hashCode;
  }
}
