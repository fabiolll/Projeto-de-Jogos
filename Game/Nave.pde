class Nave extends Shape {
    
    /* Constructor */
    public Nave(float largura, float altura, float x, float y, color cor){
         super(largura, altura, x, y, cor);
    }
  
    /* Methods */
    
    @Override
    public ArrayList<Point> getVertices(){
        ArrayList<Point> points = new ArrayList<Point>();

        Point p1 = new Point(
            super.x - (super.largura / 2),
            super.y + (super.altura / 2)
        );
        Point p2 = new Point(
            super.x,
            super.y - (super.altura / 2)
        );
        Point p3 = new Point(
            super.x + (super.largura / 2),
            super.y + (super.altura / 2)
        );
        
        points.add(p1);
        points.add(p2);
        points.add(p3);
        
        return points;
    }
    
    @Override
    public boolean isInside(ArrayList<Point> points){
        Point p1 = new Point(
            super.x - (super.largura / 2),
            super.y + (super.altura / 2)
        );
        Point p2 = new Point(
            super.x,
            super.y - (super.altura / 2)
        );
        Point p3 = new Point(
            super.x + (super.largura / 2),
            super.y + (super.altura / 2)
        );
        
        for (Point p : points){
            boolean b1, b2, b3;
        
            b1 = sign(p, p1, p2) < 0.0f;
            b2 = sign(p, p2, p3) < 0.0f;
            b3 = sign(p, p3, p1) < 0.0f;
        
            if(((b1 == b2) && (b2 == b3))){
                return true;
            }
        }
        
        return false;
    }
    
    private float sign (Point p1, Point p2, Point p3){
        return (p1.x - p3.x) * (p2.y - p3.y) - (p2.x - p3.x) * (p1.y - p3.y);
    }
    
    @Override
    public boolean checkCollision(Shape shape){
        return this.isInside(shape.getVertices());
    }
    
    @Override
    public void draw(){
        fill(super.cor);
        
        triangle(
            super.x - (super.largura / 2),
            super.y + (super.altura / 2),
            super.x,
            super.y - (super.altura / 2),
            super.x + (super.largura / 2),
            super.y + (super.altura / 2)
        );
    }
}