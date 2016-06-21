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
    public void draw(){
        for (Shape shape : this.shapes){
            shape.draw();
        }
    }

    /* Support Methods */
    private Shape randomShape(){
        Shape shape;
        switch((int)random(0, 1)){
            case 0:
                shape = new Ellipse(this.default_width, this.default_height, 50, 50, randomColor());
                break;
            default:
                shape = new Generic(this.default_width, this.default_height, 50, 50, randomColor());
        }
        
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
            case 7:
                cor = color(0, 0, 0);
                break;
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
