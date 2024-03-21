// widget class for buttons on screen - ANNA

class Widget {
  int x, y, width, height;
  String label;
  int event;
  color widgetColor, labelColor, lineColor;
  PFont widgetFont;
  
<<<<<<< Updated upstream
  Widget(int x, int y, int width, int height, String label, color widgetColor, PFont widgetFont, int event){
    this.x = x; this.y = y; this.width = width; this.height = height; 
    this.label = label; this.event = event; 
    this.widgetColor = widgetColor; this.widgetFont = widgetFont;
    this.labelColor = color(0); this.lineColor = color(0);
=======
  static final int EVENT_NULL = 0; // Define EVENT_NULL
  
  Widget(int x, int y, int width, int height, String label, color widgetColor, PFont widgetFont, int event){
    this.x = x; 
    this.y = y; 
    this.width = width; 
    this.height = height;
    this.label = label; 
    this.event = event; 
    this.widgetColor = widgetColor; 
    this.widgetFont = widgetFont;
    this.labelColor = color(0); // Initialize labelColor
    this.lineColor = color(0);  // Initialize lineColor
>>>>>>> Stashed changes
  }
   
  void draw(){
    fill(widgetColor);
    stroke(lineColor);
    rect(x, y, width, height);
    fill(labelColor);
    textAlign(LEFT, BOTTOM);
    textSize(16);
    text(label, x + 10, y + height - 10);
  }
  
  void mouseOver() { 
    labelColor = color(255);
    lineColor = color(255);
  }
  
  void mouseNotOver() {
    labelColor = color(0); 
    lineColor = color(0);
  }
  
  int getEvent(int mX, int mY){
     if (mX > x && mX < x + width && mY > y && mY < y + height){
        return event;
     }
     return EVENT_NULL;
  }
}
