PImage joystick;

void setup(){

size(800 , 400);
background( 255 );

joystick = loadImage("joystick4x4.jpg");

}

void draw(){
image(joystick,0 , 0 );
println( mouseX , mouseY);

strokeWeight (2);
stroke (0);

// jostick forma trasera


fill (255 , 0 ,0 ) ;


rect(472 , 102,  90 , 70);
rect(460, 97 , 50 , 70);
rect( 665 , 102 , 74 , 70);
rect( 690, 97 , 50 , 70);

// donde agarro el jostick

ellipse( 482, 228 , 100 , 195 );
ellipse( 720, 228, 100 , 195);
rect( 530, 102,140, 120 );
circle( 540 , 203 , 65 );
circle(660 , 203 , 65 );
circle(713 , 148 , 88 );
circle( 486 , 148 , 88 );

noFill();

// botones del jostick


fill ( 50);

// analogicos

circle( 660 , 203, 40 );
circle(540 , 203 , 40 );

stroke ( 120) ;

circle(540, 203 , 30);
circle( 660 , 203, 30);

noStroke();


// ps
circle( 600 , 200 ,25);

stroke ( 180);

circle (599, 200 , 15);

noStroke();

// circulo cuadrado equis triangulo


circle( 742 , 150 , 25 );
circle(685 , 150 , 25 );
circle(714 , 177 , 25 );
circle(714 , 120 , 25 ); 

// x
stroke( 0, 0 , 255) ;

line (720 , 183 , 706, 170);
line ( 705 , 183 , 721 , 170 );

noStroke ();

// triangulo
stroke ( 0 , 230 , 0 );

triangle ( 713 , 110 , 722 , 126 , 705 , 126 ) ;

noStroke ();

// circulo

stroke ( 255 , 0 , 0 );

circle (742 , 150 , 16 );

noStroke ();

// cuadradro

stroke ( 255 , 0 , 255 );

rect ( 677, 142 , 15 , 15 );

noStroke ();


// pantalla

fill(0);

rect( 545 , 102 , 110 , 62 );

noFill();

 
 // flechitas

fill (50); 

rect( 525 , 106  , 10 , 15 );
rect( 665 , 106 , 10 ,15 );
rect ( 478 , 160 ,17 , 17 );
rect ( 457 , 141 , 17 , 17);
rect ( 500 , 141 , 17 , 17);
rect ( 478 , 120 , 17 ,17);

noFill(); 
 
// linea devisioria
stroke (0);
strokeWeight (5);

line ( 400 , 0 , 400 , 400);


}
