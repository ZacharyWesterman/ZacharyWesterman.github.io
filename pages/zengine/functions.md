---
title: Script Functions
keywords: functions
summary: "This page contains descriptions of the various built-in script functions, with examples to demonstrate proper usage."
sidebar: zengine_sidebar
permalink: zengine_functions.html
folder: zengine
---

## Introduction

    Although users may write their own functions, many mathematical functions are already built into the script parser. these functions can be placed in any regular expression, for example `(10*log(1000)/2) + " is fifteen"` is a perfectly valid expression (the result will be `15 is fifteen`). Naturally you can write nested function calls, such as `sqrt(irand(1,100))`. You can even define your own functions, however on this page only the built-in functions will be discussed.


## General Math Functions


### Absolute Value

The function for absolute value is `abs()`, where `abs(x)` returns the absolute value of `x`.

**Example script**

```
main
  print abs(-5.04)
  print abs(10)
endmain
```

**Output**

```
5.04
10
```


### Logarithms

Unlike other functions, the `log()` function can take 1 *or* 2 parameters. If given one parameter, the base is assumed to be 10. If it is given two parameters however, then the first parameter is the base.  
  
`log(x)` returns log<sub>10</sub> of `x`.  
`log(n,x)` returns log<sub>n</sub> of `x`.

**Example script**

```
main
  #these two lines are equivalent
  print log(1000)
  print log(10, 1000)

  print ""

  #1024 is 2 to what power?
  print log(2, 1024)
endmain
```

**Output**

```
3
3

10
```


### Rounding

There are 3 built-in functions for rounding numbers: `round()`, `ceil()`, and `floor()`.  
  
`round(x)` gives the **nearest integer** to `x` (round down if `x < 0.5`, up if `x >= 0.5`).  
`ceil(x)` gives the **ceiling** of `x` (always round up).  
`floor(x)` gives the **floor** of `x` (always round down).  

**Example script**

```
main
  print round(12.3)
  print ceil (12.3)
  print floor(12.3)

  print ""

  print round(12.5)
  print ceil (12.5)
  print floor(12.5)
endmain
```

**Output**

```
12
13
12

13
13
12
```


### Angles

All of the built-in trigonometric functions assume that angles are in radians. Thus, if you want to use degrees, you will have to perform some conversions. To save you some time with that, there are two built-in functions for converting angles:
  
`deg(x)` assumes that `x` is an angle in radians, and converts it to degrees.  
`rad(x)` assumes that `x` is an angle in degrees, and converts it to radians.

**Example script**

```
main
  #approximately pi, so answer won't be exact
  pi = 3.141592654

  #pi/4 radians should be 45 degrees 
  print deg(pi/4)

  #the sine of 45 degrees should be about 0.7071
  print sin( rad(45) )
endmain
```

**Output**

```
45.000000035
0.707106781
```


### Square Root

Although it is entirely possible to type the square root of a number `x` as `x^(1/2)`, it does have its own function. It can be called using `sqrt()`.  
  
`sqrt(x)` gives the square root of `x`.

**Example script**

```
main
  print 25^(1/2)
  print sqrt(25)
endmain
```

**Output**

```
5
5
```


## Trigonometric Functions

### Sine, Cosine and Tangent

These functions can be called with `sin()`, `cos()` and `tan()` respectively. It is important to note that all angles are assumed to be in radians, so be sure to convert if you're using degrees.  
  
`sin(x)` gives the sine of the angle `x`.
`cos(x)` gives the cosine of the angle `x`.
`tan(x)` gives the tangent of the angle `x`.

**Example script**

```
main
  #approximation of pi, answers won't be exact
  pi = 3.141592654

  print sin(pi/2)  ; #should be 1,
  print cos(pi/3)  ; #0.5,
  print tan(-pi/4); #-1
endmain
```

**Output**

```
1
0.5
-1.000000001
```


### Inverse Sine, Cosine, and Tangent

Also called arc sine, arc cosine, and arc tangent, these functions can be called with `arcsin()`, `arccos()` and `arctan()` respectively. These functions do the opposite of sine, cosine and tangent, converting values back into an angle. It is important to note that angles are assumed to be in radians, so be sure to convert if you want to use degrees.  
  
`arcsin(x)` gives the sine of the angle `x`.
`arccos(x)` gives the cosine of the angle `x`.
`arctan(x)` gives the tangent of the angle `x`.

**Example script**

```
main
  #approximation of pi, answers won't be exact
  pi = 3.141592654

  print arcsin(1)/pi  ; #should be 1/2 (0.5),
  print arccos(0.5)/pi; #1/3 (0.333...),
  print arctan(-1)/pi ; #-1/4 (-0.25)
endmain
```

**Output**

```
0.5
0.333333333
-0.25
```


## Randomization Functions
There are two built-in functions for randomization: `irand()` and `frand()`. Each of them takes two parameters, lower and upper bound, and returns a random value between the bounds, inclusive.  
  
`irand(x,y)` gives a random integer with a value ranging from `x` to `y`.  
`frand(x,y)` gives a random real number ranging from `x` to `y`, inclusive.  

**Example script**

```
main
  print irand(0,10)
  print frand(0,10)
endmain
```

**Possible output**

```
6
2.679503956
```


## Color Functions

### Setting Color Values

Colors can be created using either `rgb()` or `rgba()`. Color values are just 4-byte integers with byte 1 assigned to red, byte 2 to blue, 3 to green, and 4 to the alpha (transparency) value. It is important to note that `rgba()` will give the same value as `rgb()`, if alpha is set to 255. It is also important to note that that the individual color components (e.g. alpha or red) should be integers ranging from 0-255 inclusive, but the program won't complain if you give it numbers that don't follow these rules.  
  
`rgb(r,g,b)` will construct a color from the given red, green, and blue components (`r`, `g`, and `b` respectively).  

`rgba(r,g,b,a)` will construct a color from the given red, green, blue, and transparency components (`r`, `g`, `b`, and `a` respectively).

**Example script**

```
main
  #set the background color to red
  set background color rgb(255, 0, 0)

  #wait 1 second
  delay 1000

  #set the background color to green
  set background color rgba(0, 255, 0, 255)
endmain
```

If you were to run the above example, you would see the background start red, then after 1 second it would switch to green.


### Getting Individual Color Values

After a color is created, you may want to get one of the individual components of that color. You can do that with `red()`, `green()`, `blue()`, and `alpha()`. These return the color component that each name implies.  
  
`red(c)` gives the red component of the color `c`.  
`green(c)` gives the green component of the color `c`.  
`blue(c)` gives the blue component of the color `c`.  
`alpha(c)` gives the transparency of the color `c`.  


**Example script**

```
main
  #make some color
  C = rgba(100, 92, 154, 255)

  #print the individual components of the color
  print red(C)
  print green(C)
  print blue(C)
  print alpha(C)
endmain
```

**Output**

```
100
92
154
255
```


## General Program Functions

### Window Frames Per Second

In some cases, you may want to know what the current framerate of your program is (for example, to display a warning if it drops below 5 frames per second). This can be done by calling `fps()`.  
  
`fps()` returns the window's current frames per second.

**Example script**
```
main

  #refresh the window title with the current fps
  do
    set window title fps() + " frames per second"
  loop; #repeat indefinitely

endmain
```

If you run the above script, the window will constantly display the current framerate (about 60 fps, unless specified otherwise).


{% include links.html %}