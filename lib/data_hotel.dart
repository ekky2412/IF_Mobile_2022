class DataHotel {
  String name;
  String location;
  String stars;
  String roomPrice;
  String websiteLink;
  List<String> imageUrl;
  List<String> facility;
  List<String> iconFacility;

  DataHotel({
    required this.name,
    required this.location,
    required this.stars,
    required this.roomPrice,
    required this.websiteLink,
    required this.imageUrl,
    required this.facility,
    required this.iconFacility
  });
}

var hotelList = [
  DataHotel(
      name: "Mariott Hotel Yogyakarta",
      location: "Yogyakarta",
      stars: "5",
      roomPrice: "Rp. 1.170.000",
      websiteLink:
          "https://www.marriott.com/en-us/hotels/jogmc-yogyakarta-marriott-hotel/overview/",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/12/4d/f6/64/exterior-night.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/12/4d/f6/6f/m-club.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/12/bb/c2/6b/deluxe-king-room.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Swimming Pool',
        'Restaurant'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
        '0xe533',
      ]),
  DataHotel(
      name: "Eastparc Hotel Yogyakarta",
      location: "Yogyakarta",
      stars: "5",
      roomPrice: "Rp. 741.050",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g5074492-d5012360-Reviews-Eastparc_Hotel_Yogyakarta-Depok_Sleman_District_Yogyakarta_Region_Java.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/18/c5/d8/5a/eastparc-hotel-yogyakarta.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/13/f4/21/70/eastparc-hotel-yogyakarta.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/1c/98/65/df/atv-ride-safari.jpg"
      ],
      facility: [
        'High Speed Wi-Fi',
        'Free Parking',
        'Swimming Pool',
        'Free Breakfast',
        'Gym'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
        '0xe533',
        '0xe580',
      ]),
  DataHotel(
      name: "Hotel ibis Pontianak City Center",
      location: "Pontianak",
      stars: "3",
      roomPrice: "Rp. 289.843",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g317101-d15074579-Reviews-Ibis_Pontianak_City_Center-Pontianak_West_Kalimantan_Kalimantan.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/1a/f7/5d/7c/exterior-view.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/1a/f7/5d/8d/guest-room.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/1a/f7/5d/80/restaurant.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Spa',
        'Free Breakfast'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe5d8',
        '0xe533',
      ]),
  DataHotel(
      name: "Amnaya Resort Kuta",
      location: "Bali",
      stars: "4",
      roomPrice: "Rp. 552.641",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g297697-d7856221-Reviews-Amnaya_Resort_Kuta-Kuta_Kuta_District_Bali.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/16/e1/70/48/amnaya-kuta-infuses-balinese.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/11/4d/72/68/amnaya-resort-kuta-deluxe.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/11/4d/69/1a/amnaya-resort-kuta-swimming.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Swimming Pool',
        'Bar/Lounge',
        'Gym'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
        '0xe6f1',
	'0xe580'
      ]),
  DataHotel(
      name: "Hotel Santika Premiere Malang",
      location: "Malang",
      stars: "4",
      roomPrice: "Rp. 681.818",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g297710-d634509-Reviews-Hotel_Santika_Premiere_Malang-Malang_East_Java_Java.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/10/02/c9/7b/hotel-santika-premiere.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/10/02/c7/14/premiere-king.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/10/02/c7/6c/kulala-bar.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Valet Parking',
        'Swimming Pool',
        'Gym',
        'Coffee Shop'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
        '0xe580',
	'Icons.coffee',
      ]),
  DataHotel(
      name: "Grand Ambarrukmo Hotel",
      location: "Yogyakarta",
      stars: "4",
      roomPrice: "Rp. 583.221",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g294230-d12526280-Reviews-Grand_Ambarrukmo_Hotel-Yogyakarta_Region_Java.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/21/5b/d7/93/grand-ambarrukmo-hotel.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/21/5b/d6/a3/grand-ambarrukmo-hotel.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/21/5b/d7/11/grand-ambarrukmo-hotel.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Swimming Pool',
        'Gym',
        'Bar/Lounge'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
        '0xe580',
	'0xe6f1',
      ]),
  DataHotel(
      name: "Jambuluwuk Malioboro Yogyakarta Hotel",
      location: "Yogyakarta",
      stars: "3",
      roomPrice: "Rp. 468.319",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g294230-d2446501-Reviews-Jambuluwuk_Malioboro_Yogyakarta_Hotel-Yogyakarta_Region_Java.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/0f/7b/66/73/entrance.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/0f/7b/66/a2/gajah-mada-suite.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/0f/7b/66/b0/jambuluwuk-malioboro.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Gym',
        'Free Breakfast'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe580',
        '0xe533',
      ]),
  DataHotel(
      name: "GAIA Cosmo Hotel",
      location: "Yogyakarta",
      stars: "4",
      roomPrice: "Rp. 580.165",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g294230-d10519962-Reviews-GAIA_Cosmo_Hotel-Yogyakarta_Region_Java.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/11/0e/24/e0/gaia-cosmo-hotel.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/11/0e/24/ce/gaia-cosmo-hotel.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/11/0e/24/f3/swimming-pool.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Swimming Pool',
        'Gym',
        'Free Breakfast'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
        '0xe580',
	'0xe533'
      ]),
  DataHotel(
      name: "Lafayette Boutique Hotel",
      location: "Yogyakarta",
      stars: "4",
      roomPrice: "Rp. 2.147.934",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g5074492-d10588262-Reviews-Lafayette_Boutique_Hotel_Yogyakarta-Depok_Sleman_District_Yogyakarta_Region_Java.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/12/f8/ec/ba/lafayette-boutique-hotel.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/0f/12/15/bd/lafayette-boutique-hotel.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/0e/71/40/31/lafayette-boutique-hotel.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Swimming Pool',
        'Gym',
        'Free Breakfast'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
	'0xe580',
        '0xe533',
      ]),
  DataHotel(
      name: "Indoluxe Hotel Jogjakarta",
      location: "Yogyakarta",
      stars: "4",
      roomPrice: "Rp. 334.610",
      websiteLink:
          "https://www.tripadvisor.co.id/Hotel_Review-g3916131-d7353788-Reviews-Indoluxe_Hotel_Jogjakarta-Ngaglik_Sleman_District_Yogyakarta_Region_Java.html",
      imageUrl: [
        "https://media-cdn.tripadvisor.com/media/photo-o/10/0c/a1/eb/indoluxe-hotel-jogjakarta.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/15/29/45/51/p-20181025-143422-largejpg.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-o/10/0c/9e/82/nirvana-sky-pool.jpg"
      ],
      facility: [
        'Free Wi-Fi',
        'Free Parking',
        'Swimming Pool',
        'Gym',
        'Free Breakfast'
      ],
      iconFacility: [
        '0xe6e7',
        '0xe39d',
        '0xe4dc',
	'0xe580',
        '0xe533',
      ]),
];
