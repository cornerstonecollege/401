//
//  ViewController.m
//  pierwsza
//
//  Created by SG on 2016-09-14.
//  Copyright © 2016 SG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *etykieta;
@property (weak, nonatomic) IBOutlet UIButton *przycisk;
@property (weak, nonatomic) IBOutlet UITextField *poletekstowe;
- (IBAction)klik:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)klik:(id)sender {
    
    NSString *wczytanytext = self.poletekstowe.text;
    NSString *powitanie = [NSString stringWithFormat:@"Hello %@ !",wczytanytext];
    
    self.etykieta.text = powitanie;
}
@end
