part of 'pages.dart';

class DetailPage extends StatelessWidget {
  final Space spaces;
  DetailPage(this.spaces);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              spaces.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 350,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultMargin, vertical: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          //// TITLE
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    spaces.name,
                                    style:
                                        blackFontStyle1.copyWith(fontSize: 22),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: '\$${spaces.price} ',
                                        style: greyFontStyle.copyWith(
                                            color: mainColor, fontSize: 16),
                                        children: [
                                          TextSpan(
                                              text: '/ month',
                                              style: greyFontStyle.copyWith(
                                                  fontSize: 16))
                                        ]),
                                  ),
                                ],
                              ),
                              Row(
                                  children: [1, 2, 3, 4, 5].map((index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 2),
                                  child: RatingItem(
                                      index: index, rating: spaces.rating),
                                );
                              }).toList())
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //// MAIN FACILITIES
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Main Facilites',
                                style: blackFontStyle3.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FacilityItem(
                                      name: 'kitchen',
                                      imageUrl: 'assets/bar_counter.png',
                                      total: spaces.numberOfKitchens),
                                  FacilityItem(
                                      name: 'bedroom',
                                      imageUrl: 'assets/double_bed.png',
                                      total: spaces.numberOfBedrooms),
                                  FacilityItem(
                                    name: 'big lemari',
                                    imageUrl: 'assets/cupboard.png',
                                    total: spaces.numberOfCupboards,
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Photos',
                                style: blackFontStyle2.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 88,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: spaces.photos.map((item) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          left: 5,
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: Image.network(
                                            item,
                                            width: 110,
                                            height: 88,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    }).toList()),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location',
                                    style:
                                        blackFontStyle2.copyWith(fontSize: 16),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${spaces.address}\n${spaces.city}',
                                        style: greyFontStyle,
                                      ),
                                      InkWell(
                                        child: Image.asset(
                                          'assets/btn_wishlist_map.png',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                        onTap: () {
                                          launchUrl(spaces.mapUrl);
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                child: RaisedButton(
                                  color: mainColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17)),
                                  onPressed: () {
                                    launchUrl('tel:${spaces.phone}');
                                  },
                                  child: Text(
                                    'Book Now',
                                    style: blackFontStyle2.copyWith(
                                        color: whiteColor, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
