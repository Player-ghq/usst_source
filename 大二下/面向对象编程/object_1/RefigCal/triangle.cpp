#include "triangle.h"

Triangle::Triangle()
{

}
Triangle::Triangle(double bottom,double height)
{
    triangleBottom = bottom;
    triangleHeight = height;

}

double Triangle::TriangleArea()
{
    triangleArea = 0.5*triangleBottom*triangleHeight;
    return triangleArea;
}
