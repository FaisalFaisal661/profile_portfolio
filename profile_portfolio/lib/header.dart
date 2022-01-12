// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:profile_portfolio/coolers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameWidget = (" Faisal."
        .text
        .white
        .xl2
        .lineHeight(1)
        .size(
          context.isMobile ? 15 : 20,
        )
        .bold
        .make()
        .shimmer()
        );

    return AnnotatedRegion(
      value: SystemUiOverlayStyle,
      child: SafeArea(
          child: VxBox(
                  child: VStack([
        ZStack([
          PictureWidget(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: VStack([
                  25.heightBox,
                    nameWidget,
                    10.heightBox,
                    SocialAccounts(),
                    15.heightBox,
                    VxBox()
                        .color(Coolers.accentColor)
                        .size(40, 10)
                        .make()
                        .shimmer(primaryColor: Coolers.accentColor),

                  ]).pSymmetric(
                    h: context.percentWidth * 10,
                    v: 32,
                    
                  ),
                ),
                
                Expanded(
                  child: VxResponsive(
                    fallback: Offstage(),
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                  ),
                ),
              ],
            ).w(context.screenWidth),
          ),
        ]),
      ]))
              .size(context.screenWidth, context.percentHeight * 60)
              .color(Coolers.secondaryColor)
              .make()),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "-Introduction".text.gray500.widest.sm.make(),
          15.heightBox,
          "Date of Birth:\n 21-oct-2000\n Key Skills: \n flutter Application Developer , firebase,dart & web\n Full Stack Web developer, Data Scientist & Pyhton Geme Developer "
              .text
              .white
              .xl
              .maxLines(7)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 50),
        ].vStack()
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
         
        alignment:Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Image.asset(
          '1638110713119-removebg.png',
          fit: BoxFit.cover,
          height: context.percentHeight * 60,
        ));
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 25,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(AntDesign.instagram, color: Colors.white).mdClick(() {
        launch("https://www.instagram.com/the_dude_661");
      }).make(),
      20.widthBox,
      const Icon(AntDesign.facebook_square, color: Colors.white).mdClick(() {
        launch("https://m.facebook.com/mhammed.zafar?ref=bookmarks");
      }).make(),
      20.widthBox,
      const Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch("https://github.com/FaisalFaisal661");
      }).make(),
      20.widthBox,
      const Icon(AntDesign.linkedin_square, color: Colors.white).mdClick(() {
        launch("https://www.linkedin.com/in/faisal-faisal-416899224");
      }).make(),
    ].hStack();
  }
}
