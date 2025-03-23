import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas10/home/custom_img_assets.dart';
import 'package:tugas10/home/news_model.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 41),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest News',
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
              ),
              Icon(Icons.arrow_circle_right_outlined, color: Colors.grey),
            ],
          ),
          // SizedBox(height: 23),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: news.length,
            itemBuilder:
                (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          CustomImgAssets(
                            urlImg: news[index].urlImg,
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w900,
                                ),
                                children: [
                                  TextSpan(text: '${news[index].category}\n'),
                                  TextSpan(
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    text: news[index].title,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
