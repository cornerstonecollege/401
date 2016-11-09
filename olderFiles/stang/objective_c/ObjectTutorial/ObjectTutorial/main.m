//
//  main.m
//  ObjectTutorial
//
//  Created by SG on 2016-09-12.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maids.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //szukamy klasy przypisujemy ja do pamieci poprzez zalokowanie i nadajemy nazwe i nastepnie inicjalizujemy nastepnie wolamy dana klase i metode /akcje ktora ma wykonac
        Maids *suzy = [[Maids alloc] init];
        
        
        [suzy setCleaningBills:50];

        [suzy cleanKitchen];
        [suzy billing];
        
        
        
    }
    return 0;
}
