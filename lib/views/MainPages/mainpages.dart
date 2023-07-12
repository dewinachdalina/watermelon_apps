import 'package:watermelon_apps/global_resources.dart';

class MainPages extends StatelessWidget {
  const MainPages({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    //double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // androidlarge1JED (3:2)
        padding: EdgeInsets.fromLTRB(50 * fem, 150 * fem, 50 * fem, 250 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffa2f271),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 230,
              child: Container(
                height: 200 * fem,
                width: 250,
                child: Image.asset(
                  'lib/Image/Logo.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
                margin:
                    EdgeInsets.fromLTRB(6 * fem, 70 * fem, 6 * fem, 20 * fem),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const JenisPages()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: const Color(0xff40652e),
                    // ignore: deprecated_member_use
                    onPrimary: const Color(0xffa2f271),
                    elevation: 20, // Elevation
                    shadowColor: Colors.brown, // Shadow Color
                  ),
                  child: const Text(
                    'Klasifikasi Jenis',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
            Container(
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MatangPages()),
                );
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xff40652e),
                // ignore: deprecated_member_use
                onPrimary: const Color(0xffa2f271),
                elevation: 20, // Elevation
                shadowColor: Colors.brown, // Shadow Color
              ),
              child: const Text(
                'Deteksi Kematangan',
                style: TextStyle(fontSize: 22),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
