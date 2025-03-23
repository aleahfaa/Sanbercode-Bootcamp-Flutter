import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas14/home/custom_img_assets.dart';
import 'package:tugas14/home/news_horizontal.dart';
import 'package:tugas14/home/latest_news.dart';

class News extends StatelessWidget {
  const News({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImgAssets(
              urlImg: 'assets/icon/menu.png',
              width: 40,
              height: 40,
            ),
            Text(
              'NewsApp',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [const NewsHorizontal(), LatestNews()],
      ),
    );
  }
}
