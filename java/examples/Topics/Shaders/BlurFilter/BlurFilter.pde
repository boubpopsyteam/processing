/**
 * Blur Filter
 * 
 * Change the default shader to apply a simple, custom blur filter.
 * 
 * Press the mouse to switch between the custom and default shader.
 */

PShader blur;
boolean isDefault = true;

void setup() {
  size(640, 360, P2D);
  blur = loadShader("blur.glsl"); 
  stroke(255, 0, 0);
  rectMode(CENTER);
}

void draw() {
  if (!isDefault) { filter(blur); }
  rect(mouseX, mouseY, 150, 150); 
  ellipse(mouseX, mouseY, 100, 100);
}

void mousePressed() {
  isDefault = !isDefault;
}

