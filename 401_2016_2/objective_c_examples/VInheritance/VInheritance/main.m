//
//  main.m
//  VInheritance
//
//  Created by Luiz on 2016-09-12.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Snake.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Human *human = [[Human alloc] init];
        human.colorEyes = @"black";
        
        Animal *anAnimal = human;
        NSLog(@"%@",anAnimal.description);
        
        [anAnimal move];
        
        if ([anAnimal isKindOfClass:[Human class]])
        {
            [((Human *)anAnimal) run];
        }
        
        Snake *snake = [[Snake alloc] init];
        snake.poisoness = 80;
        
        NSArray<Animal *> *animals = @[human, snake];
        for (Animal *animal in animals)
        {
//            if ([animal isKindOfClass:[Human class]])
//            {
//                NSLog(@"Its a human!");
//                [((Human *) animal) run];
//            }
//            else if ([animal isKindOfClass:[Snake class]])
//            {
//                NSLog(@"Its a snake!");
//                [((Snake *) animal) slither];
//            }
            
            [animal move];
        }
        
    }
    return 0;
}
