//
//  main.c
//  PetShop
//
//  Created by Boyoung on 2016-09-02.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include "Utilities.h"
#include "Person.h"
#include "Pet.h"

int main(int argc, const char * argv[])
{
    printf("##### PET SHOP #####\n");
    
    int petNumber = 0;
    
    Pet *dog = Pet_new();
    dog->kind = "Dog";
    dog->nickName = "Puppy";
    
    Pet *cat = Pet_new();
    cat->kind = "Cat";
    cat->nickName = "CoolCool";
    
    Pet *parrot = Pet_new();
    parrot->kind = "Parrot";
    parrot->nickName = "TomTom";
    
    Pet *turtle = Pet_new();
    turtle->kind = "Turtle";
    turtle->nickName = "SlowFast";
    
    Pet *petList[4];
    petList[0] = dog;
    petList[1] = cat;
    petList[2] = parrot;
    petList[3] = turtle;
    
    printf("== List of Pets\n");
    for (int i = 0 ; i < 4 ; i++)
    {
        printf("(%i) %s (nickname: %s)\n",
               i+1, petList[i]->kind, petList[i]->nickName);
    }

    printf("Enter your name, sinNumber and one pet you want to be with!(Ex. AAA 123456 1)\n");
    
    Person *peopleList[4];
    peopleList[0] = Person_new();
    peopleList[0]->name = malloc(sizeof(char) * 20);
    peopleList[1] = Person_new();
    peopleList[1]->name = malloc(sizeof(char) * 20);
    peopleList[2] = Person_new();
    peopleList[2]->name = malloc(sizeof(char) * 20);
    peopleList[3] = Person_new();
    peopleList[3]->name = malloc(sizeof(char) * 20);
    
    for (int j = 0 ; j < 4 ; j++)
    {
        printf("%i : ", j+1);
        scanf("%s %i %i",
              peopleList[j]->name,
              &peopleList[j]->sinNumber,
              &petNumber);
        
        if (petNumber == 1)
        {
            peopleList[j]->listPets.kind = petList[0]->kind;
            peopleList[j]->listPets.nickName = petList[0]->nickName;
        }
        
        else if (petNumber == 2)
        {
            peopleList[j]->listPets.kind = petList[1]->kind;
            peopleList[j]->listPets.nickName = petList[1]->nickName;
        }
        
        else if (petNumber == 3)
        {
            peopleList[j]->listPets.kind = petList[2]->kind;
            peopleList[j]->listPets.nickName = petList[2]->nickName;
        }
        
        else if (petNumber == 4)
        {
            peopleList[j]->listPets.kind = petList[3]->kind;
            peopleList[j]->listPets.nickName = petList[3]->nickName;
        }

    }
    
    printf("\n");
    printf("===== Final Result =====\n");
    printf("No. NAME(SinNo)   TYPE    NickName\n");
    
    for (int k = 0 ; k < 4 ; k++)
    {
        printf("%i      %s(%i)      %s      %s \n",
               k+1,
               peopleList[k]->name,
               peopleList[k]->sinNumber,
               peopleList[k]->listPets.kind,
               peopleList[k]->listPets.nickName);
    }
    
    for (int l = 0 ; l < 4 ; l++)
    {
        free(peopleList[l]->name);
        free(peopleList[l]);
        free(petList[l]);
    }
    
    return 0;
}