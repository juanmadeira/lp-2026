package util;

import java.awt.Color;

public class Shape {
    protected Color color;
    protected boolean filled;
    
    public Shape(Color color, boolean filled) {
        this.color = color;
        this.filled = filled;
    }

    public void setFilled(boolean filled) {
        this.filled = filled;
    }

    public boolean isFilled() {
        return this.filled;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Color getColor() {
        return this.color;
    }

    public double getArea() {
        return 0;
    }

    public double getPerimeter() {
        return 0;
    }

    public String toString() {
        if (this.filled) {
            return "A forma está preenchida com a cor " + this.getColor() + ".";
        } else {
            return "A forma não está preenchida.";
        }
    }

}