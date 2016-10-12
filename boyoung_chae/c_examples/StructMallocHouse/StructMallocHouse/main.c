//
//  main.c
//  StructMallocHouse
//
//  Created by Boyoung on 2016-08-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef char* string;

struct _House
{
    string style;
    string address;
    int rooms;
    char code;
};

typedef struct _House House;
House* new_house();

int main(int argc, const char * argv[])
{
    House *houseList = new_house();
    houseList->style = "Apartment";
    houseList->address = "W.Pender";
    houseList->rooms = 5;
    houseList->code = 'A';
    
    printf("Style: %s, Address: %s, Rooms: %i, Code: %c\n", houseList->style, houseList->address, houseList->rooms, houseList->code);
    
    return 0;
}

string new_string(int bytes)
{
    return (string) malloc(bytes);
}

House* new_house()
{
    return (House *) malloc(sizeof(House));
}
