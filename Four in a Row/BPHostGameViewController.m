//
//  BPHostGameViewController.m
//  Four in a Row
//
//  Created by Brad Phillips on 5/16/15.
//  Copyright (c) 2015 bradphillips. All rights reserved.
//

#import "BPHostGameViewController.h"

@interface BPHostGameViewController ()

@end

@implementation BPHostGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [super viewDidLoad];
    
    // Setup View
    [self setupView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupView {
    // Create Cancel Button
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];
}

- (void)cancel:(id)sender {
    // Cancel Hosting Game
    // TODO
    
    // Dismiss View Controller
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
