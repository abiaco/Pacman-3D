/* 
 * File:   Vector3.h
 * Author: andrei
 *
 * Created on 14 November 2013, 14:56
 */

#ifndef VECTOR3_H
#define	VECTOR3_H

class Vector3 {
public:
    Vector3();
    Vector3(double x, double y, double z);
    Vector3(const Vector3& orig);
    virtual ~Vector3();
    double getx();
    double gety();
    double getz();
    void setx(double x);
    void sety(double y);
    void setz(double z);
    double abs();
    Vector3 operator+(const Vector3 &other);
    Vector3 operator-(const Vector3 &other);
    friend double theta(Vector3 one, Vector3 two);
    Vector3 operator*(double fact);
    //* = dot product, ^ = cross product
    Vector3 operator*(const Vector3 &other);
    //v x w = ( x, y, z ) x ( a, b, c ) = |v| * |w| * sin(phi) * n
    Vector3 operator^(const Vector3 &other);
    void operator=(const Vector3 &other);
private:
    double x;
    double y;
    double z;
};
//cos(phi) = ( x*a + y*b + z*c ) / ( |v| * |w| )
//double theta(Vector3 one, Vector3 two);
#endif	/* VECTOR3_H */

