/* 
 * File:   GameObject.h
 * Author: andrei
 *
 * Created on 13 November 2013, 22:22
 */

#ifndef GAMEOBJECT_H
#define	GAMEOBJECT_H

class GameObject {
public:
    GameObject();
    GameObject(const GameObject& orig);
    virtual ~GameObject();
private:
    double x;
    double y;
    double z;
    

};

#endif	/* GAMEOBJECT_H */

