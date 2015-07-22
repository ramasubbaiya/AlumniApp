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
    [eventsWeb loadRequest:request];
    [eventsWeb setDelegate:self];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Did finish load");
    NSString* code = @"document.getElementsByTagName('header')[0].style.display = 'none'; document.getElementsByTagName('footer')[0].style.display = 'none'; var leftsideBar = document.getElementById('leftside-bar'); if (leftsideBar != null) leftsideBar.style.display = 'none'; var wrapper = document.getElementById('wrapper'); if (wrapper != null) wrapper.style.display = 'none'; var content = document.getElementById('main-content'); var topLevel = content.parentNode.parentNode.parentNode; content = topLevel.parentNode.insertBefore(content, topLevel); topLevel.style.display = 'none';";
    [eventsWeb stringByEvaluatingJavaScriptFromString: code];
    //[super webViewDidFinishLoad:];
}


- (void)viewDidLayoutSubviews {
    eventsWeb.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
