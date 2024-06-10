import 'dart:core';

import 'package:blind_ui/cubit/calculator_cubit_cubit.dart';

class SelectOption {
  final String imagepth;
  final Object type;

  SelectOption({
    required this.imagepth,
    required this.type,
  });

  @override
  String toString() {
    return 'selection option type: ${type}';
  }
}

class ImageConstants {
  static const String americanFlag = 'american_flag.jpeg';
  static const String bathroom = 'bathroom.jpeg';
  static const String bedroom = 'bedroom.jpeg';
  static const String beige = 'beige.jpeg';
  static const String beigePearlGray = 'beige_pearl_gray.jpeg';
  static const String birch = 'birch.jpeg';
  static const String blueLogo = 'blue_logo.png';
  static const String bone = 'bone.jpeg';
  static const String bonePlatinum = 'bone_platinum.jpeg';
  static const String briteWhite = 'brite_white.jpeg';
  static const String canvas = 'canvas.jpeg';
  static const String canyon = 'canyon.jpeg';
  static const String cassette = 'cassette.jpeg';
  static const String charcoal = 'charcoal.jpeg';
  static const String charcoalChestnut = 'charcoal_chestnut.jpeg';
  static const String charcoalGray = 'charcoal_gray.jpeg';
  static const String charcoalAlpaca = 'charcoal_alpaca.jpeg';
  static const String cocoa = 'cocoa.jpeg';
  static const String corded = 'corded.jpeg';
  static const String cordless = 'cordless.jpeg';
  static const String diningRoom = 'dining_room.jpeg';
  static const String ecoAlabaster = 'eco_alabaster.jpeg';
  static const String ecoAsh = 'eco_ash.jpeg';
  static const String ecoChalk = 'eco_chalk.jpeg';
  static const String ecoEbony = 'eco_ebony.jpeg';
  static const String ecoGranite = 'eco_granite.jpeg';
  static const String ecoGreystone = 'eco_greystone.jpeg';
  static const String ecoPebblestone = 'eco_pebblestone.jpeg';
  static const String ecoPewter = 'eco_pewter.jpeg';
  static const String ecoTobacco = 'eco_tobacco.jpeg';
  static const String graphite = 'graphite.jpeg';
  static const String inside = 'inside.jpeg';

  ////================================================================

  //types for screen enclosures
  static const String etype_patio = 'etype_patio.png';
  static const String etype_pool = 'etype_pool.png';
  static const String etype_porch = 'etype_porch.png';
  static const String etype_carport = 'etype_carport.png';
  static const String etype_gazebo = 'etype_gazebo.png';
  static const String etype_balcony = 'etype_balcony.png';
  static const String etype_front = 'etype_front.png';

  static const String fneed_yes = 'fneed_yes.png';

  static const String fneed_no = 'fneed_no.png';

  static const String ftype_pavers = 'ftype_pavers.png';
  static const String ftype_slab = 'ftype_slab.png';
  static const String ftype_add = 'ftype_add.png';
  static const String ctype_white = 'ctype_white.png';
  static const String ctype_darkbrown = 'ctype_darkbrown.png';
  static const String stype_default = 'stype_default.png';
  static const String stype_nosee = 'stype_nosee.png';
  static const String stype_animal = 'stype_animal.png';
  static const String stype_glass = 'stype_glass.png';
  static const String stype_tuff = 'stype_tuff.png';

  static const String dtype_1 = 'dtype_1.png';
  static const String dtype_2 = 'dtype_2.png';
  static const String dtype_3 = 'dtype_3.png';
  static const String doggietype_yes = 'doggietype_yes.png';
  static const String doggietype_no = 'doggietype_no.png';

  // pool enclosure
  // patio enclosure
  // porch enclosure
  // carport enclosure
  // Gazebo enclosure
  // balcony enclosure
  // front entrance

  /// Colors
  /// white
  /// dark brown
  ///
  /// screen type
  /// Phifer Premium
  /// Phifer No-See-Um
  /// Tuff Screen
  /// Animal
  /// Glass
  ///
  ///

  static const String kidsRoom = 'kids_room.jpeg';
  static const String kitchen = 'kitchen.jpeg';
  static const String livingRoom = 'living_room.jpeg';
  static const String merino = 'merino.jpeg';
  static const String motor = 'motor.jpeg';
  static const String mushroom = 'mushroom.jpeg';
  static const String noCover = 'no_cover.jpeg';
  static const String office = 'office.jpeg';
  static const String olyster = 'olyster.jpeg';
  static const String olysterPearlGray = 'olyster_pearl_gray.jpeg';
  static const String onyx = 'onyx.jpeg';
  static const String outside = 'outside.jpeg';
  static const String oysterBeige = 'oyster_beige.jpeg';
  static const String pearlGray = 'pearl_gray.jpeg';
  static const String porpoise = 'porpoise.jpeg';
  static const String reverse = 'reverse.jpeg';
  static const String sand = 'sand.jpeg';
  static const String standard = 'standard.jpeg';
  static const String wheat = 'wheat.jpeg';
  static const String white = 'white.jpeg';
  static const String whiteBone = 'white_bone.jpeg';
  static const String whiteLogo = 'white_logo.png';
  static const String whitePlatinum = 'white_platinum.jpeg';

  static const List<String> rooms = [
    kidsRoom,
    office,
    bedroom,
    bathroom,
    livingRoom,
    diningRoom,
    kitchen
  ];

  static List<SelectOption> enclosureType = [
    SelectOption(imagepth: etype_pool, type: Etype.pool),
    SelectOption(imagepth: etype_patio, type: Etype.patio_insulated),
    SelectOption(imagepth: etype_porch, type: Etype.patio_screened),
    SelectOption(imagepth: etype_carport, type: Etype.carport),
    SelectOption(imagepth: etype_gazebo, type: Etype.gazebo),
    SelectOption(imagepth: etype_balcony, type: Etype.balcony),
    SelectOption(imagepth: etype_front, type: Etype.front),
  ];

  static List<SelectOption> fNeed = [
    SelectOption(imagepth: fneed_no, type: false),
    SelectOption(imagepth: fneed_yes, type: true),
  ];

  static List<SelectOption> footerType = [
    SelectOption(imagepth: ftype_pavers, type: Ftype.pavers),
    SelectOption(imagepth: ftype_slab, type: Ftype.slab)
  ];

  static List<SelectOption> colorType = [
    SelectOption(imagepth: ctype_white, type: 'White'),
    SelectOption(imagepth: ctype_darkbrown, type: 'Dark Brown')
  ];

  static List<SelectOption> screenType = [
    SelectOption(imagepth: stype_default, type: Stype.deff),
    SelectOption(imagepth: stype_nosee, type: Stype.nosee),
    SelectOption(imagepth: stype_tuff, type: Stype.tuff),
    SelectOption(imagepth: stype_glass, type: Stype.glas),
    SelectOption(imagepth: stype_animal, type: Stype.animal),
  ];

  static List<SelectOption> doorNumType = [
    SelectOption(imagepth: dtype_1, type: 1),
    SelectOption(imagepth: dtype_2, type: 2),
    SelectOption(imagepth: dtype_3, type: 3),
  ];

  static List<SelectOption> doggieType = [
    SelectOption(
      imagepth: doggietype_no,
      type: false,
    ),
    SelectOption(
      imagepth: doggietype_yes,
      type: true,
    ),
  ];
}

// american_flag.jpeg
// bathroom.jpeg
// bedroom.jpeg
// beige.jpeg
// beige_pearl_gray.jpeg
// birch.jpeg
// blue_logo.png
// bone.jpeg
// bone_platinum.jpeg
// brite_white.jpeg
// canvas.jpeg
// canyon.jpeg
// cassette.jpeg
// charcoal.jpeg
// charcoal_chestnut.jpeg
// charcoal_gray.jpeg
// charcoal.jpeg
// charcoal_alpaca.jpeg
// cocoa.jpeg

// corded.jpeg
// cordless.jpeg
// dining_room.jpeg
// eco_alabaster.jpeg
// eco_ash.jpeg
// eco_chalk.jpeg
// eco_ebony.jpeg
// eco_granite.jpeg
// eco_greystone.jpeg
// eco_pebblestone.jpeg
// eco_pewter.jpeg
// eco_tobacco.jpeg
// graphite.jpeg
// inside.jpeg
// kids_room.jpeg
// kitchen.jpeg
// living_room.jpeg
// merino.jpeg
// motor.jpeg

// mushroom.jpeg
// no_cover.jpeg
// office.jpeg
// olyster.jpeg
// olyster_pearl_gray.jpeg
// onyx.jpeg
// outside.jpeg
// oyster_beige.jpeg
// pearl_gray.jpeg
// porpoise.jpeg
// reverse.jpeg
// sand.jpeg
// standard.jpeg
// wheat.jpeg
// white.jpeg
// white_bone.jpeg
// white_logo.png
// white_platinum.jpeg
