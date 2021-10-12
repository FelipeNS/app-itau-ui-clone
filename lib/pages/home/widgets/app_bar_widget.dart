import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itau_ui_clone/core/core.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(90),
    child: Container(
      alignment: Alignment.bottomCenter,
      height: 90,
      color: AppColors.orange,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.white,
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: AppColors.gray,
                          width: 0.3
                        ),
                      ),
                      image: DecorationImage(
                        image: NetworkImage('https://avatars.githubusercontent.com/u/15986485?v=4'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Felipe',
                  style: GoogleFonts.roboto(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  icon: Icon(
                    Feather.chevron_down,
                    color: AppColors.white,
                    size: 16,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: GestureDetector(
                    onTap: (){},
                    child: Icon(
                      Icons.search,
                      color: AppColors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: GestureDetector(
                    onTap: (){},
                    child: Icon(
                      Icons.notifications,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}