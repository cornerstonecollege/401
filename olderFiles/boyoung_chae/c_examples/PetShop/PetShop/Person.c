//
//  Person.c
//  PetShop
//
//  Created by Boyoung on 2016-09-02.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include "Person.h"

Person* Person_new()
{
    return malloc(sizeof(Person));
}