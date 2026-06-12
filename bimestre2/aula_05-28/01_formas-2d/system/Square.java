package system;

import java.awt.Color;
import util.Shape;

public class Square extends Rectangle {
    public Square(double side, Color color, boolean filled) {
        super(side, side, color, filled);
    }

    public String toString() {
        if (this.filled) {
            return "Um quadrado com lado " + this.getWidth() + ", preenchido com a cor " + this.getColor() + ".";
        } else {
            return "Um quadrado com lado " + this.getWidth() + ", não preenchido.";
        }
    }
}