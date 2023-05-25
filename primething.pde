
int x, y;
int px, py;
int step = 1;
int state = 0;
int numSteps = 1;
int turnCounter = 1;

// Scale / resolution
int stepSize = 1;
int totalSteps;

// Function to test if number is prime
boolean isPrime(int value) {
  if (value == 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(value); i++) {
    if (value % i == 0) {
      return false;
    }
  }
  return true;
}

void setup() {
  size(19999, 19999);

  int cols = width / stepSize;
  int rows = height / stepSize;
  int totalSteps = cols * rows;
  x = width / 2;
  y = height / 2;
  background(0);


//void draw() {
while (step <= totalSteps) {
  //textSize(10);
  //textAlign(CENTER, CENTER);
  //fill(255);
  //stroke(255);
  //text(step-1, x, y);
    if (isPrime(step)) {
    fill(255);
    stroke(255);
    circle(x, y, stepSize * 0.5);
  }
    line(x, y, px, py);
  px = x;
  py = y;

  // Move according to state
  switch (state) {
  case 0:
    x += stepSize;
    break;
  case 1:
    y -= stepSize;
    break;
  case 2:
    x -= stepSize;
    break;
  case 3:
    y += stepSize;
    break;
  }

  // Change state
  if (isPrime(step)) {
    state = (state + 1) % 4;
  }
  step++;
  
}
save("primesnaketestfinal.png");
}
