import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_9/core/custom/img/custom_img_assets.dart';

class NewsHorizontal extends StatelessWidget {
  const NewsHorizontal({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 311,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          EdgeInsets itemPadding;
          if (index == 0) {
            itemPadding = const EdgeInsets.only(left: 32, right: 16);
          } else if (index == 9) {
            itemPadding = const EdgeInsets.only(right: 32);
          } else {
            itemPadding = const EdgeInsets.only(right: 16);
          }
          return Padding(
            padding: itemPadding,
            child: CustomImgAssets(
              urlImg: 'assets/img/news-1.png',
              height: 311,
              width: 311,
              padding: const EdgeInsets.only(
                left: 24,
                right: 14,
                top: 24,
                bottom: 24,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TECHNOLOGY',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '3 mins ago',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        'Microsoft Launches a Deepfake Detector Tool Ahead of US Election',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          CustomImgAssets(
                            urlImg: 'assets/icon/comment.png',
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(width: 24),
                          CustomImgAssets(
                            urlImg: 'assets/icon/bookmark.png',
                            width: 24,
                            height: 24,
                          ),
                          const Spacer(),
                          CustomImgAssets(
                            urlImg: 'assets/icon/redo.png',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
