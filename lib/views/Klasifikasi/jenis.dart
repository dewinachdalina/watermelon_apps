import 'package:watermelon_apps/global_resources.dart';

class JenisPages extends StatelessWidget {
  const JenisPages({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // androidlarge1sR3 (9:21)
        padding: EdgeInsets.fromLTRB(21 * fem, 175 * fem, 21 * fem, 209 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffa2f271),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/klasifikasi/Image/bg1.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // announce9dT (10:26)
              width: double.infinity,
              height: 336 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19 * fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle1h9B (10:27)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 318 * fem,
                        height: 267 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19 * fem),
                            color: Color(0xff40652e),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // perhatianpijittomboldibawahini (10:28)
                    left: 5 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 308 * fem,
                        height: 258 * fem,
                        child: Text(
                          'Perhatian!!\nPijit Tombol dibawah ini. Ambil gambar dari galeri atau kamera. Arahkan pada objek yang akan dideteksi',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inknut Antiqua',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 2.5775 * ffem / fem,
                            color: Color(0xffa2f271),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin:
                    EdgeInsets.fromLTRB(6 * fem, 70 * fem, 6 * fem, 20 * fem),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => jenis()),
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
                    'Take a Picture',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
