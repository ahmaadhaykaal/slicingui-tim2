import 'package:flutter/material.dart';
import 'package:slicingui_tim2/screen_page/mulai_belajar_page.dart';
import 'package:slicingui_tim2/screen_page/notif_detail_page.dart';

class PageNotif extends StatelessWidget {
  const PageNotif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide the back button
        toolbarHeight: 30,
        flexibleSpace: Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '20:12',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.signal_cellular_alt_2_bar,
                      color: Colors.black,
                      size: 20,
                    ),
                    Icon(
                      Icons.wifi,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Transform.rotate(
                      angle: 90 * (3.14 / 180),
                      child: Icon(
                        Icons.battery_5_bar_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: HalfCircleHeader(),
            floating: false,
            pinned: false,
          ),
          // SliverToBoxAdapter(
          //   child: Container(
          //     height: 1000, // Adjust the height as needed
          //     color: Colors.white, // Example content
          //     child: Center(child: Text("Sliver Content")),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: SizedBox(height: 5),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageDetailNotif()),
                              (route) => false);
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5),
                          Text(
                            'Laporan Progres Belajar Mingguanmu',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, Lihat progres belajar ming....',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Materi Baru',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, ada materi baru ketuk untuk mel...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Bab Selanjutnya',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, ada bab selanjutnya yang harus di pel...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Rekomendasi Guru',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, pilih guru barumu unt..',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Login ke Akun Utama Kamu',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, Ayo login untuk keamanan ak...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Temukan Rumus',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, Temukan rumus  singkat disin...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Berlatih Soal',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, ayo berlatih soal untuk men...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Ajak Teman',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, ajak temanmu untuk bergabung men...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Fitur Baru',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, gunakan fitur robot soal untuk mem...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Support Guru',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, berikan supportmu untuk guru terba...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Rating Materi',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, berikan ratingmu untuk materi terb...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10), // Spasi pertama
                InkWell(
                  onTap: () {
                    // Aksi ketika card ditekan
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 4, // Tingkat bayangan
                    child: ListTile(
                      title: Row(
                        children: [
                          Image.asset(
                            'assets/Group.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                              width: 5), // Spasi antara icon dan teks title
                          Text(
                            'Layanan Gratis',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        'Hi! Keira Herlambang, nikmati StudyTech dengan layanan gra...',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Image.asset(
                        'assets/eos.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),

                // Tambahkan card lainnya di sini
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HalfCircleHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -MediaQuery.of(context).size.width / 2,
            right: -MediaQuery.of(context).size.width / 2,
            child: ClipOval(
              child: Container(
                height: MediaQuery.of(context).size.width,
                color: Color(0xff5775BA),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 16,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageBottomBar()),
                              (route) => false);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'StudyTeach',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: ('Alata'),
                      ),
                    ),
                    Text(
                      'Notifikasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: ('Alata'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 130; // Max extent of the header

  @override
  double get minExtent => 130; // Min extent of the header

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
