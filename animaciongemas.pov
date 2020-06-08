#include "colors.inc" 
#include "textures.inc"
#include "glass.inc" 

  camera {
    location <0, 3, 12>
    look_at <0, 0, 0>
    
  }

  light_source { <20, 20, 20> color White }

  plane {
    y, -1
    texture { Sapphire_Agate }
   
    finish {     
	reflection 0.4
        ambient 0.5
        diffuse 0.5
        }
  }    
   plane {
    z, -100
    texture { Starfield }
   
    finish {     
	reflection 0
        ambient .2
        diffuse 0
        }
  }
  
#declare AgataAzul= union {
  cone {
     <0,0,0> 3, <6,0,0> 1
     texture { Blue_Agate }
    finish {  phong 5 }

  }
  cone {
     <0,0,0> 3, <0,6,0> 1
     texture { Blue_Agate }
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,0,6> 1
     texture {Blue_Agate }
    finish {  phong 5 }
  }   
  cone {
     <0,0,0> 3, <0,-6,0> 1
     texture {Blue_Agate }
    finish {  phong 5 }
  }
  scale<0.2,0.2,0.2>
}

#declare CristalVerde= union {
  cone {
     <0,0,0> 3, <6,0,0> 1
     pigment { Col_Glass_Dark_Green }
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,6,0> 1
     pigment { Col_Glass_Dark_Green }
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,0,6> 1
     pigment { Col_Glass_Dark_Green}
    finish {  phong 5 }
  }   
   cone {
     <0,0,0> 3, <-6,0,0> 1
     pigment { Col_Glass_Dark_Green }
    finish {  phong 5 }
  }
  scale<0.2,0.2,0.2>
}

#declare CristalAmarillo= union {
  cone {
     <0,0,0> 3, <6,0,0> 1
     pigment {Col_Glass_Yellow}
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,6,0> 1
     pigment {Col_Glass_Yellow }
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,0,6> 1
     pigment { Col_Glass_Yellow }
    finish {  phong 5 }
  }  
  cone {
     <0,0,0> 3, <0,0,-6> 1
     pigment { Col_Glass_Yellow }
    finish {  phong 5 }
  }   
  cone {
     <0,0,0> 3, <-6,0,0> 1
     pigment { Col_Glass_Yellow }
    finish {  phong 5 }
  }  
  cone {
     <0,0,0> 3, <0,-6,0> 1
     pigment { Col_Glass_Yellow }
    finish {  phong 5 }
  } 
  scale<0.2,0.2,0.2>
}

#declare Luna = union{ 
sphere{ <-3,5,2>,1 
texture { Sandalwood }
    finish   {phong 5 }
  }
}
#declare BolaOro = union{ 
sphere{ <0,3,0>,.5 
texture { Gold_Nugget }
    finish   {phong 5 }
  }
}
#declare CristalRubi= union {
  cone {
     <0,0,0> 3, <6,0,0> 1
     pigment {Col_Glass_Ruby}
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,6,0> 1
     pigment { Col_Glass_Ruby }
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,0,6> 1
     pigment { Col_Glass_Ruby }
    finish {  phong 5 }
  }  
  cone {
     <0,0,0> 3, <0,0,-6> 1
      pigment {Col_Glass_Ruby }
    finish {  phong 5 }
  }
  scale<0.2,0.2,0.2>
}
#declare Jade= union {
  cone {
     <0,0,0> 3, <6,0,0> 1
     texture { Jade }
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,6,0> 1
     texture { Jade }
    finish {  phong 5 }
  }
  cone {
     <0,0,0> 3, <0,0,6> 1
      texture { Jade }
    finish {  phong 5 }
  }  
  cone {
     <0,0,0> 3, <-6,0,0> 1
      texture { Jade }
    finish {  phong 5 }
  }
  scale<0.2,0.2,0.2>
}

object {
   CristalVerde
    rotate <0, 0, clock*2>
    translate <3,0,0>
  }

object {
   CristalAmarillo
    rotate <0, clock*2, 0>
    translate <-3,0,0>
  }
object {
   AgataAzul
    rotate <clock*2, 0>
}

object {
   Luna
    translate <7.5,0,0>
    rotate <0, clock*4, 0>
 }
object {
   BolaOro
    translate <-5.5,0,0>
    rotate <0, clock, 0>
}
object {
   CristalRubi
    rotate <0, -clock*4, 0>
    translate <0,0,5.5>
    rotate <0, clock, 0>
}

object {
   Jade
    rotate <0, -clock*4, 0>
    rotate <45,0,0>
    translate <0,2,5.5>
    rotate <0, -clock/2, 0>
}