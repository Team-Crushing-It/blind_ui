import 'dart:core';

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

  static const String ftype_pavers = 'ftype_pavers.png';
  static const String ftype_slab = 'ftype_slab.png';
  static const String ftype_add = 'ftype_add.png';
  static const String ctype_white = 'ctype_white.png';
  static const String ctype_darkbrown = 'ctype_darkbrown.png';
  static const String stype_default = 'stype_default.png';
  static const String stype_nosee = 'stype_nosee.png';
  static const String stype_animal = 'stype_animal.png';
  static const String stype_glass = 'stype_glass.png';

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

  static List<String> enclosureType = [
    etype_pool,
    etype_patio,
    etype_porch,
    etype_carport,
    etype_gazebo,
    etype_balcony,
    etype_front
  ];
  static List<String> footerType = [ftype_pavers, ftype_slab, ftype_add];
  static List<String> colorType = [ctype_white, ctype_darkbrown];
  static List<String> screenType = [
    stype_default,
    stype_nosee,
    stype_animal,
    stype_glass
  ];
  static List<String> doorNumType = [dtype_1, dtype_2, dtype_3];
  static List<String> doggieType = [doggietype_yes, doggietype_no];

  static List<String> covers = [cassette, noCover];
  static List<String> rollDirection = [standard, reverse];
  static List<String> liftMethod = [corded, cordless, motor];
  static List<String> transparentStyle = [
    ecoChalk,
    ecoAlabaster,
    ecoPebblestone,
    ecoGreystone,
    ecoGranite,
    ecoPewter,
    ecoAsh,
    ecoEbony,
    briteWhite,
    olyster,
    oysterBeige,
    olysterPearlGray,
    beige,
    beigePearlGray,
    pearlGray,
    charcoal,
    charcoalGray,
    charcoalChestnut,
    charcoalAlpaca,
    ecoTobacco
  ];

  static List<String> blackoutStyle = [
    birch,
    merino,
    wheat,
    canvas,
    white,
    sand,
    mushroom,
    cocoa,
    canyon,
    graphite,
    porpoise,
    onyx,
    whiteBone,
    whitePlatinum,
    bone,
    bonePlatinum,
    charcoal
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
