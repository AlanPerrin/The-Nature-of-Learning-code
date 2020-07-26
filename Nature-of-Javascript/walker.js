class Walker{
    constructor(x,y){
	this.pos = createVector(x,y);
	this.vel = createVector(1,-1);
    }
    update(){
	this.pos.x = this.pos.x + this.vel.x;//random(-1, 1);
	this.pos.y = this.pos.y + this.vel.y;//random(-1, 1);
    }
    show(){
	stroke(255, 100);
	strokeWeight(2);
	ellipse(this.pos.x, this.pos.y, 32);
	//point(this.pos.x, this.pos.y);
    }
}
