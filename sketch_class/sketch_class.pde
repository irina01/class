class Kvadrat {
    float x, y, s;
    Kvadrat(float _x, float _y, float _s) {
        this.x = _x;
        this.y = _y;
        this.s = _s;

    }


    void right(float _s) {
        this.x += _s;
    }
}

Square[] k_array;



class Square extends Kvadrat {
    Square(float _x, float _y, float _s) {
        super(_x, _y, _s);
    }
    void draw() {
        fill(random(0, 255), random(0, 255), random(0, 255));
        rect(this.x, this.y, this.s, this.s);

    }
}

void setup() {
    size(600, 600);
    k_array = new Square[10];
    for (int i = 0; i < 10; i++) {
        k_array[i] = new Square(random(width), random(height), 100.0);


    }
}

void draw() {
    background(0);
    for (int i = 0; i < 10; i++) {
        k_array[i].draw();
        k_array[i].right(random(8));

    }
}