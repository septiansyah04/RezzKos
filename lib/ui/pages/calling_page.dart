part of 'pages.dart';

class CallingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/profile.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 65,
            ),
            Text(
              'Amanda Shayna',
              style: blackFontStyle2.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '12 : 30 minutes',
              style: greyFontStyle,
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/btn_close.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
