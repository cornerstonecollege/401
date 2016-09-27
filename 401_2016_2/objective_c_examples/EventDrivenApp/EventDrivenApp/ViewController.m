//
//  ViewController.m
//  EventDrivenApp
//
//  Created by Luiz on 2016-09-14.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"View will load");
    self.view.backgroundColor = [UIColor redColor];
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(fireTimer) userInfo:nil repeats:YES];
}

- (void) fireTimer
{
    int red = arc4random_uniform(256);
    int blue = arc4random_uniform(256);
    int green = arc4random_uniform(256);
    
    self.view.backgroundColor = [UIColor colorWithRed:red/256.0 green:green/256.0 blue:blue/256.0 alpha:1.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender {
    NSLog(@"Click");
}


@end
