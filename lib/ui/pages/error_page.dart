part of 'pages.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/404.png'),
            SizedBox(
              height: 70,
            ),
            Text(
              'Where are you going? ',
              style: blackFontStyle1,
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Seems like the page that you were \nrequested is already gone',
              style: greyFontStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
