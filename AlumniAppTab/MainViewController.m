//
//  MainViewController.m
//  AlumniAppTab
//
//  Created by RamaSubbaiya on 20/07/15.
//  Copyright (c) 2015 RamaSubbaiya. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController




- (void)viewDidLoad {
    NSLog(@"Loading");

    [super viewDidLoad];
    
    //------loading the registration page ------------
    NSURL *url = [NSURL URLWithString:@"http://www.lambtoncollege.ca/About_Us/Alumni_Association/Registration/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_registerWeb loadRequest:request];
    
    
    
    //---------------to evaluate javascript------------
    [_registerWeb stringByEvaluatingJavaScriptFromString:@"document.styleSheets[0].addRule(\".active\", \"pointer-events: none;\");document.styleSheets[0].addRule(\".active\", \"cursor: default;\")"];
    
    NSLog(@"finish loading");

    
    //-------------- after all your stuff--------------
    self.pageLoaded = YES;
    
    NSLog(@"%c",self.pageLoaded);
}



- (void)viewDidLayoutSubviews {
    _registerWeb.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}


- (void)webViewDidFinishLoad:(UIWebView *)webView {
    

}



- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
       NSLog(@"finish loading");
    
    if (navigationType ==UIWebViewNavigationTypeFormSubmitted ) {
        NSLog(@"UIWebViewNavigationTypeFormSubmitted");
       
   //------Here to call the another view controller------
        

        return YES;
    }
    else{
        NSLog(@"Form NOT Submitted");
        return ! self.pageLoaded;
    }
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
