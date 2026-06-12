package system;

import java.awt.Color;
import util.Shape;

public class Rectangle extends Shape {
    private double width;
    private double height;

    public Rectangle(double width, double height, Color color, boolean filled) {
        super(color, filled);
        this.width = width;
        this.height = height;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getWidth() {
        return this.width;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getHeight() {
        return this.height;
    }

    public double getArea() {
        return this.width * this.height;
    }

    public double getPerimeter() {
        return 2 * (this.width + this.height);
    }

    public String toString() {
        if (this.filled) {
            return "Um retângulo com largura " + this.width + " e comprimento " + this.height + ", preenchido com a cor " + this.getColor() + ".";
        } else {
            return "Um retângulo com largura " + this.width + " e comprimento " + this.height + ", não preenchido.";
        }
    }
}