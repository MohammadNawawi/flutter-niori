import 'package:flutter/material.dart';
import 'package:niori/theme.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Naw',
                    style: textBlackStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@naw',
                    style: textSubtitleStyle.copyWith(
                      fontSize: 16,
                    )
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/images/iclog/image_profile.png',),),
              ),
            ),
          ],
        ),
      );
    }
    return ListView(
      children: [
        header(),
      ],
    );
  }
}