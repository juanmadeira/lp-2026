package system;

import java.awt.Color;
import util.Shape;

public class Main {
    public static void showInfo(Shape shape) {
        System.out.println("Informações da forma:");
        System.out.println(shape.toString());
    }

	public static void main(String[] args) {
        Circle circle = new Circle(7, Color.BLUE, true);
        showInfo(circle);
        System.out.println("Área: " + circle.getArea());
        System.out.println("Perímetro: " + circle.getPerimeter());

        System.out.println();

        Square square = new Square(5, null, false);
        showInfo(square);
        System.out.println("Área: " + square.getArea());
        System.out.println("Perímetro: " + square.getPerimeter());

        System.out.println();

        Rectangle rectangle = new Rectangle(3, 6, Color.BLACK, true);
        showInfo(rectangle);
        System.out.println("Área: " + rectangle.getArea());
        System.out.println("Perímetro: " + rectangle.getPerimeter());

        System.out.println();

        Shape shape = new Shape(Color.GREEN, true);
        showInfo(shape);

        System.out.println();

        rectangle.setFilled(false);
        showInfo(rectangle);
    }
}