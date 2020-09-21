//
// ktLED1
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;

d1 = 7+1;
d2 = 12-1;
d3 = 2.1+0.4;
h1 = 9.6-2;
h2 = 2.1+0.4;
th1 = 5.1;
th2 = 2;
r1 = 20;
x1 = 16;

A = 1;
B = 1;

if(A)
{
    right();
}

if(B)
{
    
    translate( [-10, 0, -10] )
    rotate([0, 180, 0])
    {
    difference()
    {
        mirror( v=[0, 0, 1] )
        translate( [0, 0, 10] )
        right();
        
        translate( [10, 5.5, -10-5.8-gap1] )
        rotate( [0, 0, 20] )
        cube( [10, 3, 5.8+gap2+1] );
        translate( [10, 5.5, -10-5.8-gap1] )
        rotate( [0, 0, -10] )
        cube( [22, 3, 5.8+gap2+1] );
        translate( [15, 6.65, -10-5.8-gap1] )
        rotate( [0, 0, -10] )
        cube( [22, 3, 5.8+gap2+1] );
    }
            translate( [32*cos(r1)-2, 0, -10-5.8] )
            cube( [2, 8, 5.8+1] );
    }
}


module right()
{
    rotate( [0, 0, r1] )
    {
        difference()
        {
            union()
            {
                translate( [0, 0, -1] )
                cube( [32, 6.35, 5.8+1] );
                translate( [0, -15, -1] )
                cube( [32, 15, 5.8+1] );
            }
            translate( [(32-25)/2, 6.35/2, 0] )
            {
                translate( [0, 0, 3.3/2] )
                cylinder( h=3.3+gap2+2, r=2.7/2, center=true, $fn=30 );
                translate( [0, 0, 3.3+2.5/2] )
                cylinder( h=2.5+gap2, r1=2.7/2, r2=5.4/2, center=true, $fn=30 );
                translate( [25, 0, 3.3/2] )
                cylinder( h=3.3+gap2+2, r=2.7/2, center=true, $fn=30 );
                translate( [25, 0, 3.3+2.5/2] )
                cylinder( h=2.5+gap2, r1=2.7/2, r2=5.4/2, center=true, $fn=30 );
            }
            rotate( [0, 0, -r1] )
            {
                translate( [0, -15, 0-gap1-1] )
                cube( [50, 15, 5.8+gap2+1] );
                translate( [32*cos(r1), -gap1, 0-gap1-1] )
                cube( [10, 15, 5.8+gap2+1] );
            }
        }
    }
    
    translate( [-(6.35*cos(90-r1))+8, 0, 0] )
    difference()
    {
        union()
        {
            translate( [0, 0, 0] )
            cube( [x1, 6.35*cos(r1), 5.8] );
            translate( [0, 0, 5.8] )
            cube( [x1, h1+th1, d1] );
            translate( [0, h1, 5.8+d1] )
            cube( [x1, th1, d2] );
            translate( [0, 0, 5.8+d1+d2] )
            cube( [x1, h1+th1, th2] );
        }
        translate( [-gap1, h1-gap1, 5.8+d1] )
        cube( [32+gap2, h2, d3] );

        translate( [-gap1, 6.35+5-2, 5.8+d1+d2+th2] )
        rotate( [-45, 0, 0] )
        cube( [x1+gap2, 10, 10] );
    }
}