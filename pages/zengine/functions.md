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
The following example script and its output have been color-coded to help clarify what each function outputs.

**Example script**

```
main
  print <span class="red">round</span>(12.3)
  print <span class="green">ceil</span> (12.3)
  print <span class="blue">floor</span>(12.3)

  print ""

  print <span class="red">round</span>(12.5)
  print <span class="green">ceil</span> (12.5)
  print <span class="blue">floor</span>(12.5)
endmain
```

**Output**

```
<span class="red">12</span>
<span class="green">13</span>
<span class="blue">12</span>

<span class="red">13</span>
<span class="green">13</span>
<span class="blue">12</span>
```



### Angles


### Square Root


## Trigonometric Functions

### Sine, Cosine and Tangent


### Inverse Sine, Cosine, and Tangent


## Randomization Functions



## Color Functions

### Setting Color Values


### Getting Individual Color Values



{% include links.html %}