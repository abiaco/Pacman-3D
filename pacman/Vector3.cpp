/* 
 * File:   Vector3.cpp
 * Author: andrei
 * 
 * Created on 14 November 2013, 14:56
 */

#include "Vector3.h"
#include "GameObject.h"
#include <math.h>

Vector3::Vector3() {
    this->x = 0;
    this->y = 0;
    this->z = 0;
}

Vector3::Vector3(const Vector3& orig) {
    this->x = orig.x;
    this->y = orig.y;
    this->z = orig.z;
}

Vector3::Vector3(double x, double y, double z){
    this->x = x;
    this->y = y;
    this->z = z;
}

double Vector3::getx(){
    return this->x;
}
double Vector3::gety(){
    return this->y;
}
double Vector3::getz(){
    return this->z;
}

void Vector3::setx(double x){
    this->x = x;
}

void Vector3::sety(double y){
    this->y = y;
}

void Vector3::setz(double z){
    this->z = z;
}

double Vector3::abs(){
    return(sqrt(x*x + y*y + z*z));
}

Vector3 Vector3::operator+(const Vector3 &other){
    double t1 = this->x + other.x;
    double t2 = this->y + other.y;
    double t3 = this->z + other.z;
    return(Vector3(t1,t2,t3));
}

Vector3 Vector3::operator-(const Vector3 &other){
    double t1 = this->x - other.x;
    double t2 = this->y - other.y;
    double t3 = this->z - other.z;
    return(Vector3(t1,t2,t3));
}

Vector3 Vector3::operator*(double fact){
    double t1 = this->x * fact;
    double t2 = this->y * fact;
    double t3 = this->z * fact;
    return (Vector3(t1,t2,t3));
}

Vector3 Vector3::operator*(const Vector3 &other){
    double t1 = this->x * other.x;
    double t2 = this->y * other.y;
    double t3 = this->z * other.z;
    return(Vector3(t1,t2,t3));
}

void Vector3::operator=(const Vector3 &other){
    this->x = other.x;
    this->y = other.y;
    this->z = other.z;
}

double theta(Vector3 a, Vector3 b){
    return acos((a.x*b.x + a.y*b.y + a.z*b.z)/(a.abs() + b.abs()));
}

Vector3 Vector3::operator^(const Vector3 &other){
    Vector3 v = Vector3 (this->y * other.z - this->z * other.y, this->z * other.x - this->x * other.z, this->x*other.y - this->y*other.x);
    return v;
}