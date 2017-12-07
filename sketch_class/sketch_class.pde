class Kvadrat {
    float x, y, s;
    color a;
    Kvadrat(float _x, float _y, float _s, color _a) {
        this.x = _x;
        this.y = _y;
        this.s = _s;
        this.a = _a;
    }

    void draw() {
        rect(this.x, this.y, this.s, this.s);
        fill(this.a);
    }
    void right(float _s) {
        this.x += _s;
    }
}

Kvadrat[] k_array;

void setup() {
    size(600, 600);
    k_array = new Kvadrat[10];
    for (int i = 0; i < 10; i++) {
        k_array[i] = new Kvadrat(random(width), random(height), 100.0, color(random(255), random(255), random(255)));

    }
}

void draw() {
    background(0);
    for (int i = 0; i < 10; i++) {
        k_array[i].draw();
        k_array[i].right(random(8));

    }
}