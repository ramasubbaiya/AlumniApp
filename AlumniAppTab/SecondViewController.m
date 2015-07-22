//
//  SecondViewController.m
//  AlumniAppTab
//
//  Created by RamaSubbaiya on 18/07/15.
//  Copyright (c) 2015 RamaSubbaiya. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"http://www.lambtoncollege.ca/About_Us/Alumni_Association/Alumni_Benefits/Events/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_eventsWeb loadRequest:request];
}

- (void)viewDidLayoutSubviews {
    _eventsWeb.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
