part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: defaultMargin,
            ),
            Padding(
              padding: EdgeInsets.only(left: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TITLE
                  Text(
                    'Explore Now',
                    style: blackFontStyle1.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  // SUBTITLE
                  Text(
                    'Mencari kosan yang cozy',
                    style: greyFontStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // POPULAR CITY
                  Text(
                    'Popular Cities',
                    style: greyFontStyle.copyWith(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CityCard(City(
                            id: 1,
                            name: 'Jakarta',
                            imageUrl: 'assets/jakarta.png')),
                        SizedBox(
                          width: 24,
                        ),
                        CityCard(
                          City(
                              id: 2,
                              name: 'Bandung',
                              imageUrl: 'assets/bandung.png',
                              isPopular: true),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CityCard(City(
                            id: 3,
                            name: 'Surabaya',
                            imageUrl: 'assets/surabaya.png')),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // RECOMENDED SPACE
                  Text('Recomended Space',
                      style: greyFontStyle.copyWith(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 16,
                  ),
                  FutureBuilder(
                    future: spaceProvider.getRecomendedSpaces(),
                    builder: (context, snapshot) {                
                      if (snapshot.hasData) {
                          List<Space> data = snapshot.data;

                          int index = 0;
                        return Column(
                          children:
                              data.map((item) {
                                index ++;
                                return Container(
                                  margin: EdgeInsets.only(
                                    top : index == 1 ? 0 : 30,
                                  ),
                                  child: SpaceCard(item),
                                );
                              }).toList(),
                        );
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  // Tips & Guidance
                  Text('Tips & Guidance',
                      style: greyFontStyle.copyWith(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      TipsCard(Tips(
                          id: 1,
                          title: 'City Guidelines',
                          imageUrl: 'assets/icon_tips1.png',
                          updateAt: '20 Apr')),
                      SizedBox(
                        height: 20,
                      ),
                      TipsCard(Tips(
                          id: 2,
                          title: 'Jakarta Fairship',
                          imageUrl: 'assets/icon_tips2.png',
                          updateAt: '11 Dec'))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60 + defaultMargin,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        decoration: BoxDecoration(
            color: Color(0xFFF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love_solid.png',
              isActive: false,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
