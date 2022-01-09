// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:profile_portfolio/coolers.dart';
import 'package:profile_portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(mobile: VStack([
        "Contact Me ?\n Lets talk".text.center.white.xl2.make(),
        10.heightBox,
        "mf8892379838@gmail.com"
        .text
        .color(Coolers.accentColor)
        .semiBold
        .make()
        .box
        .border(color: Coolers.accentColor)
        .p16
        .rounded
        .make()
      ],
       crossAlignment: CrossAxisAlignment.center,
      ), web: HStack([
        "Contact me ?\n Lets talk".text.center.white.xl2.make(),
        10.widthBox,
        "Contact me ?\n Lets talk".text.center.white.xl2.make(),
        10.heightBox,
        "mf8892379838@gmail.com"
        .text
        .color(Coolers.accentColor)
        .semiBold
        .make()
        .box
        .border(color: Coolers.accentColor)
        .p16
        .rounded
        .make(),
        
      ],
      alignment: MainAxisAlignment.spaceAround,
      ).w(context.safePercentWidth * 70).scale150().p16(),
      ),
      50.heightBox,
      const CustomAppBar(),
      10.heightBox,
      "Thanking You "
      .richText
      .semiBold
      .white
      .withTextSpanChildren([
        "All copyRigths are reserved by FaisalFaisla661."
        .textSpan
        .gray500
        .make(),
      ])
      .make()
    ],
    crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}


