//
//  BPHostGameViewController.m
//  Four in a Row
//
//  Created by Brad Phillips on 5/16/15.
//  Copyright (c) 2015 bradphillips. All rights reserved.
//

#import "BPHostGameViewController.h"
#import <CocoaAsyncSocket/GCDAsyncSocket.h>

@interface BPHostGameViewController ()

@property (strong, nonatomic) NSNetService *service;
@property (strong, nonatomic) GCDAsyncSocket *socket;

@end

@implementation BPHostGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [super viewDidLoad];
    
    // Setup View
    [self setupView];
    
    // Start Broadcast
    [self startBroadcast];
}

- (void)startBroadcast {
    // Initialize GCDAsyncSocket
    self.socket = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
    
    // Start Listening for Incoming Connections
    NSError *error = nil;
    if ([self.socket acceptOnPort:0 error:&error]) {
        // Initialize Service
        self.service = [[NSNetService alloc] initWithDomain:@"local." type:@"_fourinarow._tcp." name:@"" port:[self.socket localPort]];
        
        // Configure Service
        [self.service setDelegate:(id)self];
        
        // Publish Service
        [self.service publish];
        NSLog(@"NSNetService successfully published!");
        
    } else {
        NSLog(@"Unable to create socket. Error %@ with user info %@.", error, [error userInfo]);
    }
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
