double spaceHeaderRegister(double screenHeight) {
  if (screenHeight <= 600) {
    return 10;
  } else if (screenHeight < 700) {
    return 20;
  } else if (screenHeight < 800) {
    return 40;
  } else if (screenHeight <= 900) {
    return 60;
  } else {
    return 80;
  }
}

double spacetitleRegister(double screenHeight) {
  if (screenHeight <= 600) {
    return 10;
  } else if (screenHeight < 700) {
    return 20;
  } else if (screenHeight < 800) {
    return 30;
  } else if (screenHeight <= 900) {
    return 40;
  } else {
    return 70;
  }
}

double spaceBottomRegister(double screenHeight) {
  if (screenHeight <= 600) {
    return 40;
  } else if (screenHeight < 700) {
    return 40;
  } else if (screenHeight < 800) {
    return 50;
  } else if (screenHeight <= 900) {
    return 60;
  } else {
    return 100;
  }
}
