//
//  ViewController.m
//  Four in a Row
//
//  Created by Brad Phillips on 5/16/15.
//  Copyright (c) 2015 bradphillips. All rights reserved.
//

#import "ViewController.h"
#import "BPHostGameViewController.h"

@interface ViewController ()

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

- (IBAction)hostGame:(id)sender {
    // Initialize Host Game View Controller
    BPHostGameViewController *vc = [[BPHostGameViewController alloc] initWithNibName:@"BPHostGameViewController" bundle:[NSBundle mainBundle]];
    
    // Initialize Navigation Controller
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    // Present Navigation Controller
    [self presentViewController:nc animated:YES completion:nil];
}


- (IBAction)joinGame:(id)sender {
}

@end
