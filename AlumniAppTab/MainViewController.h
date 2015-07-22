//
//  MainViewController.h
//  AlumniAppTab
//
//  Created by RamaSubbaiya on 20/07/15.
//  Copyright (c) 2015 RamaSubbaiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController{
    IBOutlet UIWebView *webUI;
}

@property (weak, nonatomic) IBOutlet UIWebView *registerWeb;

@property(nonatomic) BOOL pageLoaded;


@end
