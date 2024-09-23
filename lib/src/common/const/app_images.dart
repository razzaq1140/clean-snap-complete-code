import 'package:clean_snap/src/features/category/category_model.dart';

class AppImages{


  static const serviceProviderImage = 'https://images.pexels.com/photos/6790967/pexels-photo-6790967.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';
  static const serviceProviderProfileImage = 'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';
  static const homeProfileImage = 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';
  static const homeImg = 'assets/home_img.png';

  List<CategoryModel> general = [
    CategoryModel(
      txtTitle: 'Vacuuming',
      txtDesc: 'Cleaning floors and upholstery',
      img: 'assets/general/1.png',
    ),
    CategoryModel(
      txtTitle: 'Dusting',
      txtDesc: 'Removing dust from surfaces',
      img: 'assets/general/2.png',
    ),
    CategoryModel(
      txtTitle: 'Sweeping',
      txtDesc: 'Cleaning floors and upholstery',
      img: 'assets/general/3.png',
    ),
    CategoryModel(
      txtTitle: 'Mopping',
      txtDesc: 'Wet cleaning hard floors',
      img: 'assets/general/4.png',
    ),
    CategoryModel(
      txtTitle: 'Polishing',
      txtDesc: 'Shining and buffing surfaces',
      img: 'assets/general/5.png',
    ),
    CategoryModel(
      txtTitle: 'Scrubbing',
      txtDesc: 'Deep cleaning tough stains',
      img: 'assets/general/6.png',
    ),
  ];

  List<CategoryModel> deep = [
    CategoryModel(
      txtTitle: 'Decluttering',
      txtDesc: 'Removing unnecessary items',
      img: 'assets/deep/1.png',
    ),
    CategoryModel(
      txtTitle: 'Grout',
      txtDesc: 'Cleaning grout lines in tiles',
      img: 'assets/deep/2.png',
    ),
    CategoryModel(
      txtTitle: 'Tile & Grout Sealing',
      txtDesc: 'Sealing tiles & grout to prevent future staining',
      img: 'assets/deep/3.png',
    ),
    CategoryModel(
      txtTitle: 'Pressure Washing',
      txtDesc:
      'Cleaning driveways, sidewalks, and siding\nwith a pressure washer',
      img: 'assets/deep/4.png',
    ),
  ];

  List<CategoryModel> sanitization = [
    CategoryModel(
      txtTitle: 'Sanitizing',
      txtDesc: 'Reducing germs and bacteria',
      img: 'assets/sanitization/1.png',
    ),
    CategoryModel(
      txtTitle: 'Disinfecting',
      txtDesc: 'Killing viruses and bacteria',
      img: 'assets/sanitization/2.png',
    ),
  ];

  List<CategoryModel> kitchen = [
    CategoryModel(
      txtTitle: 'Oven Cleaning',
      txtDesc: 'Removing grease and grime from oven\ninteriors',
      img: 'assets/kitchen/1.png',
    ),
    CategoryModel(
      txtTitle: 'Refrigerator Cleaning',
      txtDesc: 'Deep cleaning and organizing fridge shelves and drawers',
      img: 'assets/kitchen/2.png',
    ),
    CategoryModel(
      txtTitle: 'Cabinet Cleaning',
      txtDesc:
      'Cleaning and wiping down kitchen or bathroom cabinets, inside and out.',
      img: 'assets/kitchen/3.png',
    ),
    CategoryModel(
      txtTitle: 'Appliances',
      txtDesc: 'Cleaning kitchen and home appliances',
      img: 'assets/kitchen/4.png',
    ),
    CategoryModel(
      txtTitle: 'Dishes',
      txtDesc: 'Washing and drying dishes',
      img: 'assets/kitchen/5.png',
    ),
  ];

  List<CategoryModel> bathroom = [
    CategoryModel(
      txtTitle: 'Baseboard Cleaning',
      txtDesc: 'Cleaning and dusting baseboards throughout the home',
      img: 'assets/bathroom/1.png',
    ),
    CategoryModel(
      txtTitle: 'Bathroom',
      txtDesc: 'Cleaning toilets, sinks, and showers',
      img: 'assets/bathroom/2.png',
    ),
  ];

  List<CategoryModel> window = [
    CategoryModel(
      txtTitle: 'Windows',
      txtDesc: 'Cleaning and shining glass surfaces',
      img: 'assets/window/1.png',
    ),
    CategoryModel(
      txtTitle: 'Blinds/Shades Cleaning',
      txtDesc: 'Dusting and wiping down window blinds or shades',
      img: 'assets/window/2.png',
    ),
    CategoryModel(
      txtTitle: 'Light Fixture Cleaning',
      txtDesc: 'Dusting and cleaning ceiling lights and chandeliers',
      img: 'assets/window/3.png',
    ),
    CategoryModel(
      txtTitle: 'Ceiling Fan Cleaning',
      txtDesc: 'Dusting and cleaning ceiling fan blades and fixtures',
      img: 'assets/window/4.png',
    ),
  ];

  List<CategoryModel> furniture = [
    CategoryModel(
      txtTitle: 'Carpets',
      txtDesc: 'Deep cleaning and stain removal',
      img: 'assets/furniture/1.png',
    ),
    CategoryModel(
      txtTitle: 'Mattress Cleaning',
      txtDesc: 'Deep cleaning and sanitizing mattresses',
      img: 'assets/furniture/2.png',
    ),
    CategoryModel(
      txtTitle: 'Upholstery Cleaning',
      txtDesc: 'Vacuuming and cleaning fabric-covered furniture',
      img: 'assets/furniture/3.png',
    ),
    CategoryModel(
      txtTitle: 'Pet Area Cleaning',
      txtDesc:
      'Cleaning and sanitizing pet-specific areas, like litter boxes or kennels',
      img: 'assets/furniture/4.png',
    ),
  ];

  List<CategoryModel> outdoor = [
    CategoryModel(
      txtTitle: 'Outdoor Cleaning',
      txtDesc: 'Cleaning patios, decks, and exteriors',
      img: 'assets/outdoor/1.png',
    ),
    CategoryModel(
      txtTitle: 'Exterior Car Cleaning',
      txtDesc: 'Washing the exterior of vehicles',
      img: 'assets/outdoor/2.png',
    ),
    CategoryModel(
      txtTitle: 'Chimney Sweep',
      txtDesc: 'Cleaning and removing soot from chimneys',
      img: 'assets/outdoor/3.png',
    ),
    CategoryModel(
      txtTitle: 'Fireplace Cleaning',
      txtDesc: 'Cleaning and clearing ashes and soot from fireplaces',
      img: 'assets/outdoor/4.png',
    ),
    CategoryModel(
      txtTitle: 'Garage Organizing',
      txtDesc: 'Cleaning and organizing the garage space',
      img: 'assets/outdoor/5.png',
    ),
    CategoryModel(
      txtTitle: 'Estate Cleaning',
      txtDesc: 'Full property cleaning: deep clean, organize, remove items.',
      img: 'assets/general/6.png',
    ),
  ];

  List<CategoryModel> vehicle = [
    CategoryModel(
      txtTitle: 'Interior Car Cleaning',
      txtDesc: 'Vacuuming and cleaning the inside of vehicles',
      img: 'assets/vehicle/1.png',
    ),
    CategoryModel(
      txtTitle: 'Exterior Car Cleaning',
      txtDesc: 'Washing the exterior of vehicles',
      img: 'assets/vehicle/2.png',
    ),
  ];

}