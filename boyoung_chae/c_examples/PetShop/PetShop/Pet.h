//
//  Pet.h
//  PetShop
//
//  Created by Boyoung on 2016-09-02.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#ifndef Pet_h
#define Pet_h

#include "Utilities.h"

// Creates person

struct _Pet
{
    string kind;
    string nickName;
};

typedef struct _Pet Pet;

// Function prototypes

Pet* Pet_new();

#endif /* Pet_h */
