package system;

import java.awt.Color;
import util.Shape;

public class Circle extends Shape {
    private double radius;

    public Circle(double radius, Color color, boolean filled) {
        super(color, filled);
        this.radius = radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public double getRadius() {
        return this.radius;
    }

    public double getArea() {
        return Math.PI * Math.pow(this.radius, 2);
    }

    public double getPerimeter() {
        return 2 * Math.PI * this.radius;
    }

    public String toString() {
        if (this.filled) {
            return "Um círculo com raio " + this.radius + ", preenchido com a cor " + this.getColor() + ".";
        } else {
            return "Um círculo com raio " + this.radius + ", não preenchido.";
        }
    }
}