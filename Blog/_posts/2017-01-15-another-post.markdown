---
layout: post
title:  "Another post"
date:   2017-01-15 23:27:34 -0600
categories: miscellaneous
---


```java
//Parent class
class A
{
public:
  int a;
};

//Derived class
class B : private A
{
  int b;
};

//Main function
int main()
{
  A obj1;
  obj1.a = 10;

  B obj2 = obj1;
  obj2.b = -127;

  return 0;
}
```