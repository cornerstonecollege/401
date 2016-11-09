//
//  Pet.c
//  PetShop
//
//  Created by Boyoung on 2016-09-02.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include "Pet.h"

Pet* Pet_new()
{
    return malloc(sizeof(Pet));
}