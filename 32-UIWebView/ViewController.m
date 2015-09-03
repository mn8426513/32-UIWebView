//
//  ViewController.m
//  32-UIWebView
//
//  Created by Mac on 14-10-19.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()  <UISearchBarDelegate,UIWebViewDelegate>


/**
 需求分析
     1. 创建一个webview  并现实出来
     2. 创建一个searchBar 出来
     3. 实现前进后退
 

*/
@end

@implementation ViewController

-(UISearchBar *)searchBar{

    if(!_searchBar){
    
        _searchBar = [[UISearchBar alloc] init];
     }
 
    return _searchBar;
}
-(UIWebView *)webview{
 
    if(!_webview){
        _webview = [[UIWebView alloc] init];
      }
   return  _webview ;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupWebview];
    [self setupSearchBar];

}


-(void)setupSearchBar{
    self.searchBar.delegate = self;
}

-(void)setupWebview{


//    self.webview.delegate =self ;
    
    NSString *path = [NSString stringWithFormat:@"http://www.baidu.com"];
    
    NSURL *url = [NSURL URLWithString:path];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webview loadRequest:request];


}



-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
 
    NSString *searchText = searchBar.text;
    
    NSString *str = searchText;
    
    NSString *path = nil;
    NSURL *url = nil;
    
    if(![str hasPrefix:@"http//:"]){
      
        path = [NSString stringWithFormat:@"http://www.baidu.com/s?word=%@",str];
        url = [NSURL URLWithString:path];
    
    }else {
      
        url = [NSURL URLWithString:str];
    }
    
    NSURLRequest *request = [NSURLRequest requestWithURL: url];
  
    [_webview loadRequest:request];

}




-(void)webViewDidFinishLoad:(UIWebView *)webView{
 
      self.goBack.enabled = [_webview canGoBack];
    
      self.goForward.enabled = [_webview canGoForward];
  
}

@end
