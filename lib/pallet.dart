import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

 TextStyle kBodyText = TextStyle(
    fontSize: 16, color: Gold.kGold, height: 1.5);
TextStyle kHeadings = GoogleFonts.amaticaSc(
    fontSize: 32, color: Gold.kGold, height: 1.5);


Color kteal = Colors.teal.shade900;
const Color kBlue = Color(0xff5663ff);
const Color kWhite = Colors.white;



class Eden {
  static const MaterialColor kEden = MaterialColor(
    0xff0c434c, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: const Color(0xff0b3c44 ),//10%
      100: const Color(0xff0a363d),//20%
      200: const Color(0xff082f35),//30%
      300: const Color(0xff07282e),//40%
      400: const Color(0xff062226),//50%
      500: const Color(0xff051b1e),//60%
      600: const Color(0xff041417),//70%
      700: const Color(0xff020d0f),//80%
      800: const Color(0xff010708),//90%
      900: const Color(0xff000000),//100%
    },
  );
}

class Clay{
    static const MaterialColor kClay = MaterialColor(
      0xff212d33, // shade500 comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
      <int, Color>{
       50: Color(0xFFF4F5F5),
      100: Color(0xFFE9EAEB),
      200: Color(0xFFC8CBCC),
      300: Color(0xFFA4A9AC),
      400: Color(0xFF646C71),
      500: Color(0xFF212D33),
      600: Color(0xFF1E292E),
      700: Color(0xFF141B1F),
      800: Color(0xFF0F1517),
      900: Color(0xFF0A0E0F),


    },
  );
}

class Gold{
    static const MaterialColor kGold = MaterialColor(
      0xffd4af37, // 500, comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
      <int, Color>{
        50: Color(0xFFFDFBF5),
        100: Color(0xFFFBF7EB),
        200: Color(0xFFF5EBCD),
        300: Color(0xFFEEDFAD),
        400: Color(0xFFE1C773),
        500: Color(0xFFD4AF37),
        600: Color(0xFFBD9C31),
        700: Color(0xFF806921),
        800: Color(0xFF604F19),
        900: Color(0xFF3E3310),//100%


    },
  );
}

