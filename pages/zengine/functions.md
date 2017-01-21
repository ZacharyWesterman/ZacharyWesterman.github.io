---
title: Script Functions
keywords: functions
summary: "This page contains descriptions of the various built-in script functions, with examples to demonstrate proper usage."
sidebar: zengine_sidebar
permalink: zengine_functions.html
folder: zengine
---

## Introduction

Here I will write some introduction about functions. Something has to go here to prep the reader, but I will get the basic page structure down first before I figure out what that is.


## General Math Functions


### Absolute Value


### Logarithms


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

All of the built-in trigonometric functions assume that angles are in radians. Thus, if you want to use degrees, you will have to perform some conversions. To save you some time with that, there are two built-in functions for converting angles: `deg()` and `rad()`.  
  
`deg(x)` assumes that `x` is an angle in radians, and converts it to degrees.  
`rad(x)` assumes that `x` is an angle in degrees, and converts it to radians.


### Square Root


## Trigonometric Functions

### Sine, Cosine and Tangent


### Inverse Sine, Cosine, and Tangent


## Randomization Functions



## Color Functions

### Setting Color Values


### Getting Individual Color Values



{% include links.html %}