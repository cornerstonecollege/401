//
//  Person.h
//  PetShop
//
//  Created by Boyoung on 2016-09-02.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#ifndef Person_h
#define Person_h

#include "Utilities.h"
#include "Pet.h"

// Creates person

struct _Person
{
    string name;
    int sinNumber;
    Pet listPets;
};

typedef struct _Person Person;

// Function prototypes

Person* Person_new();

#endif /* Person_h */