//
//  ThridViewController.m
//  AlumniAppTab
//
//  Created by RamaSubbaiya on 20/07/15.
//  Copyright (c) 2015 RamaSubbaiya. All rights reserved.
//

#import "ThridViewController.h"

@interface ThridViewController ()

@end

@implementation ThridViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSURL *url = [NSURL URLWithString:@"http://www.lambtoncollege.ca/About_Us/Alumni_Association/Alumni_Benefits/Other/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [dealsWeb loadRequest:request];
    [dealsWeb setDelegate:self];
}

- (void)viewDidLayoutSubviews {
    dealsWeb.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}



- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Did finish load");
    NSString* code = @"document.getElementsByTagName('header')[0].style.display = 'none'; document.getElementsByTagName('footer')[0].style.display = 'none'; var leftsideBar = document.getElementById('leftside-bar'); if (leftsideBar != null) leftsideBar.style.display = 'none'; var wrapper = document.getElementById('wrapper'); if (wrapper != null) wrapper.style.display = 'none'; var content = document.getElementById('main-content'); var topLevel = content.parentNode.parentNode.parentNode; content = topLevel.parentNode.insertBefore(content, topLevel); topLevel.style.display = 'none';";
    [dealsWeb stringByEvaluatingJavaScriptFromString: code];
    //[super webViewDidFinishLoad:];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
