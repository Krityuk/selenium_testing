class Global {
  static String destination = "";
  static String currentLocation = "";
  static String price = "";
  static String tripType = 'One Way';
  static String selectedCar = "Mini";
  static String distance = "100";
  static String name = "Harsh";
  static String pswd = "Pradyot";
  static bool loginStatus = false;

  static updateLoginStatus(bool status) {
    Global.loginStatus = status;
  }

  static String calculatePrice() {
    // Assuming price calculation based on distance and car type
    double basePrice = 10.0; // Base price per kilometer
    double distance = double.parse(Global.distance);
    double price = basePrice * distance;

    // Adjust the price based on the selected car type
    if (Global.selectedCar == 'Mini') {
      price *= 1.2; // Increase price by 20% for Mini
    } else if (Global.selectedCar == 'Prime Sedan') {
      price *= 1.5;
    } else if (Global.selectedCar == 'Prime SUV') {
      price *= 2.0; // Increase price by 100% for Prime SUV
    }
    if (Global.tripType == 'Round Trip') {
      price = price * 2;
    }
    //
    Global.price = price.toStringAsFixed(2); // Setting the calculated price
    return Global.price;
  }
}
