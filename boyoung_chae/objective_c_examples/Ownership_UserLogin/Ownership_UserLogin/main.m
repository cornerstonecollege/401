//
//  main.m
//  Ownership_UserLogin
//
//  Created by Boyoung on 2016-09-09.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // Login process
        char email[100], password[100];
        int teamCode;
        
        NSLog(@"%@", @"===== AAA Company : SIGN IN =====");
        
        NSLog(@"%@", @"Email:");
        scanf("%s", email);
        NSString *emailStr = [NSString stringWithUTF8String:email];
        
        NSLog(@"%@", @"Password:");
        scanf("%s", password);
        NSString *passwordStr = [NSString stringWithUTF8String:password];
        
        NSLog(@"%@", @"Your Team Code:");
        scanf("%i", &teamCode);
        NSInteger nsTeamCode = teamCode;
        

        User *user = [[User alloc] init];
        [user setName:@"June"];
        [user setData:@""];
        [user setTeamCode:nsTeamCode];
 
        
        // Team Members
        User *member1 = [[User alloc] init];
        [member1 setName:@"April"];
        [member1 setTeamCode:1];
        
        User *member2 = [[User alloc] init];
        [member2 setName:@"May"];
        [member2 setTeamCode:1];
        
        User *member3 = [[User alloc] init];
        [member3 setName:@"July"];
        [member3 setTeamCode:2];
        
        User *member4 = [[User alloc] init];
        [member4 setName:@"Summer"];
        [member4 setTeamCode:3];
        
        User *member5 = [[User alloc] init];
        [member5 setName:@"Spring"];
        [member5 setTeamCode:1];
        
        // weak objects inside strong array
        NSMutableArray *arr = [NSMutableArray array];
        
        __weak User *wMember1 = member1;
        [arr addObject:wMember1];
        
        __weak User *wMember2 = member2;
        [arr addObject:wMember2];
        
        __weak User *wMember3 = member3;
        [arr addObject:wMember3];
        
        __weak User *wMember4 = member4;
        [arr addObject:wMember4];
        
        __weak User *wMember5 = member5;
        [arr addObject:wMember5];
        
        
        [user setTeamMember:arr];
        
        
        if ([user checkEmail:emailStr andPassword:passwordStr])
        {
            NSLog(@"%@", user);
        
            for (int i = 0 ; i < user.teamMember.count ; i++)
            {
                if (user.teamCode == user.teamMember[i].teamCode)
                {
                    NSLog(@"%@ %@", @"Team Member: ", user.teamMember[i].name);
                }
            }
        }
        
        else if (![user checkEmail:emailStr andPassword:passwordStr])
        {
            NSLog(@"%@", @"\nSorry, try again!");
        }
    }
    
    return 0;
}
