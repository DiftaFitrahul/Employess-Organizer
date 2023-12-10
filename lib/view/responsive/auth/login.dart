double spaceHeaderLogin(double screenHeight) {
  if (screenHeight <= 600) {
    return 10;
  } else if (screenHeight < 700) {
    return 20;
  } else if (screenHeight < 800) {
    return 50;
  } else if (screenHeight <= 900) {
    return 100;
  } else {
    return 120;
  }
}

double spacetitleLogin(double screenHeight) {
  if (screenHeight <= 600) {
    return 10;
  } else if (screenHeight < 700) {
    return 20;
  } else if (screenHeight < 800) {
    return 30;
  } else if (screenHeight <= 900) {
    return 50;
  } else {
    return 100;
  }
}
