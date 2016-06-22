class Triangle extends Shape {

    /* Constructor */
    public Triangle(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
    }

    /* Methods */
    /* Setting the behavior of draw for Ellipse */
    @Override
    public void draw(){
        fill(super.cor);
        /*
         * Triangle is draw by 3 points:
         * triangle(x1, y1, x2, y2, x3, y3);
         *
         * Based on width and height these points are calculated
         */
        triangle(
            super.x - (super.largura / 2),
            super.y + (super.altura / 2),
            super.x,
            super.y - (super.altura / 2),
            super.x + (super.largura / 2),
            super.y + (super.altura / 2)
        );
    }

    @Override
    public boolean checkCollision(Shape shape){
        return false;
    }
}