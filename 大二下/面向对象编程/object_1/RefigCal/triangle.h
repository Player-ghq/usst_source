#ifndef TRIANGLE_H
#define TRIANGLE_H


class Triangle
{
public:
    Triangle();
    Triangle(double bottom,double height);

    double TriangleArea();
private:
    double triangleBottom,triangleHeight,triangleArea;

};







#endif // TRIANGLE_H
