public class RectangularPrism extends Shape {
    private double a;
    private double b;
    private double c;

    public RectangularPrism(double a, double b, double c) {
        super("RectangularPrism");
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public double area() {
        return 2*(a*b) + 2*(a*c) + 2*(b*c);
    }

    public String toString() {
        return super.toString() + " a=" + a + " b=" + b + " c=" + c;
    }
}
