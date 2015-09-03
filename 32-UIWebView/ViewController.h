//
//  ViewController.h
//  32-UIWebView
//
//  Created by Mac on 14-10-19.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong,nonatomic) IBOutlet UIWebView *webview;
@property (strong,nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UIButton *goBack;

@property (weak, nonatomic) IBOutlet UIButton *goForward;


@end

