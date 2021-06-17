ArrayList <String> listchuoi = new ArrayList<String>(); //Khai bao variable arraylist



float x;
float y =  50;

float dx = 1;
float dy = 1;

float w;
float h = -17;



float size = 20;

boolean hover;

int n = 0;
String text1;

void setup () {
  size (1200, 1000);
  x = random(0, width); //Position would be based on user's screen size

  //Adding Strings in to Array list
  listchuoi.add("Mr. Josh"); //0
  listchuoi.add("Samuel Dinh"); //1
  listchuoi.add("Bruce"); //2
  listchuoi.add("Jasmine"); //3
  listchuoi.add("Jarvis"); //4
  listchuoi.add("Great!"); //5
  
}


void draw () {


  String text1 = listchuoi.get(n); //Get data from the Array List

  background (255, 255, 255);

  //Create an invisible button

  noStroke();
  noFill();
  w = textWidth(text1); 

  rect (x, y, w, h);


  fill(0, 0, 0);

  textSize(size);
  text (text1, x, y);

  x = x + dx;
  y = y + dy;

  //Keep the name on the screen
  if (x <= 0 || x+120 >= width) {
    dx = -dx;
  }

  if (y - 50 <= 0 || y + 50 >= height) {
    dy = -dy;
  }


  if (mouseX >= x && mouseX <= x + w && mouseY <= y && mouseY >= (y+h)) {
    hover = true;
  } else {
    hover = false;
  }
}
void mousePressed () {
  if (hover == true && mousePressed == true) {

    n = n + 1;

    if (n >= listchuoi.size()) { // phần .size là kích thước của List, ở đây đang là 6 cái tên

      n = 0;
    }
  }
}



void keyPressed () {
  if (key =='z') {
    n = 0;
  }
  if (key =='x') {
    n = 1;
  }
  if (key =='c') {
    n = 2;
  }
  if (key =='v') {
    n = 3;
  }
  if (key =='b') {
    n = 4;
  }





  if (key == 'r') {
    n=0;
  }
  if (key == '1') {
    w = 120;
    h = -17;

    size = 20;
  }
  if (key == '2') {
    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.1;
    w = w + w*0.1;
    h = h + h*0.1;
  }
  if (key == '3') {
    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.2;
    w = w + w*0.2;
    h = h + h*0.2;
  }
  if (key == '4') {
    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.3;
    w = w + w*0.3;
    h = h + h*0.3;
  }
  if (key == '5') {
    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.4;
    w = w + w*0.4;
    h = h + h*0.4;
  }
  if (key == '6') {
    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.5;
    w = w + w*0.5;
    h = h + h*0.5;
  }
  if (key == '7') {            
    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.6;
    w = w + w*0.6;
    h = h + h*0.6;
  }
  if (key == '8') {

    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.7;
    w = w + w*0.7;
    h = h + h*0.7;
  }
  if (key == '9') {
    w = 120;
    h = -17;
    size = 20;
    size = size + size*0.8;
    w = w + w*0.8;
    h = h + h*0.8;
  }
}
