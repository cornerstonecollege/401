//
//  ViewController.m
//  first
//
//  Created by SG on 2016-09-14.
//  Copyright © 2016 SG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;

@end

@implementation ViewController

- (IBAction) Enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Mark";
    NSString *msg;
    
    
    if ([yourName length] == 0){
    yourName = @"HelloWorld";
    }
    
    if ([yourName isEqualToString:myName]){
        msg = [NSString stringWithFormat:@"Hello %@, we have same name",yourName];
    } else {
        msg = [NSString stringWithFormat:@"Hello %@", yourName];
    
    }
    
    self.messageLabel.text = msg;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
