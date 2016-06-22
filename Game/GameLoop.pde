class GameLoop {

    private ArrayList<Shape> shapes;
    private int quantity;

    /* Hard coded element size */
    private int default_width = 50;
    private int default_height = 50;

    /* Constructors */
    public GameLoop(int quantity){
        this.quantity = quantity;

        this.shapes = new ArrayList<Shape>(); 

        for(int i = 0; i < this.quantity; i++){
            this.shapes.add(randomShape());
        }
        
    }

    /* Methods */
    public void renewShape(){
        ArrayList toRemove = new ArrayList<Shape>();
        
        for (Shape shape : this.shapes) {
            if (shape.getY() >= height) {
                toRemove.add(shape);
            }
        }
        
        this.shapes.removeAll(toRemove);
        
        for (int i = 0; i < toRemove.size(); i++){
            this.shapes.add(randomShape());
        }
    }

    public void draw(){
        for (Shape shape : this.shapes){
            shape.draw();
        }
    }

    public void move(){
        for (Shape shape : this.shapes){
            shape.move(); 
        } 
    }

    /* Support Methods */
    private float randomY(){
        return (random(1, (height - 1)) + height) * -1; 
    }
    
    private float randomX(){
        return random(1, (width - 1));
    }

    private Shape randomShape(){
        Shape shape;
        switch((int)random(0, 3)){
            case 0:
                shape = new Ellipse(this.default_width, this.default_height, 50, 50, randomColor());
                break;
            case 1:
                shape = new Triangle(this.default_width, this.default_height, 50, 50, randomColor());
                break;
            default:
                shape = new Rectangle(this.default_width, this.default_height, 50, 50, randomColor());
        }
        
        shape.setX(randomX());
        shape.setY(randomY());
        
        return shape;
    }

    private color randomColor(){
        color cor; 

        switch((int)random(0, 11)){
            /* Red */
            case 0:
                cor = color(255, 0, 0); 
                break;
            /* Green */
            case 1:
                cor = color(0, 255, 0);
                break;
            /* Blue */
            case 2:
                cor = color(0, 0, 255);
                break;
            /* Pink */
            case 3:
                cor = color(255, 0, 255);
                break;
            /* Light blue */
            case 4:
                cor = color(0, 255, 255);
                break;
            /* Purple */
            case 5:
                cor = color(128, 0, 128);
                break;
            /* Gray */
            case 6:
                cor = color(128, 128, 128);
                break;
            /* Black */
            //case 7:
            //    cor = color(0, 0, 0);
            //    break;
            /* White */
            case 8:
                cor = color(255, 255, 255);
                break;
            /* Dark Green */
            case 9:
                cor = color(0, 128, 0);
                break;
            /* Yellow */
            default:
                cor = color(255, 255, 0); 
        }

        return cor;
    }
}