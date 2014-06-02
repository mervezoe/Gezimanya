//
//  GeziNotlariViewController.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 26/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "GeziNotlariViewController.h"
#import "LeftViewController.h"
#import "Config.h"
#import <Parse/Parse.h>
#import "gezimanyaiphoneViewController.h"
#import "gezimanyaiphoneAppDelegate.h"
#import "MMDrawerBarButtonItem.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@interface GeziNotlariViewController ()

@end

@implementation GeziNotlariViewController
@synthesize linkG,titleG;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Gezi notları sayfası");
    
    dispatch_async(kBgQueue, ^{
        NSData* data = [NSData dataWithContentsOfURL:
                        kGEZINOT_URL];
        [self performSelectorOnMainThread:@selector(fetchedData:)
                               withObject:data waitUntilDone:YES];
    });
    
/*
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:kGEZINOT_URL] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *reponse, NSData *data, NSError *connectionError) {
        if(!connectionError){
            NSArray *geziNotlar = [NSJSONSerialization JSONObjectWithData:data options:nil error:nil];
            
            for (NSDictionary *d in geziNotlar) {
               
                titleG = [d objectForKey:@"title"];
                linkG = [d objectForKey:@"link"];
                
                
                NSLog(@"%@,%@", titleG,linkG);
            }
            
        }else{
            NSLog(@"connection error");
        }
    }];
    */
    
    gezimanyaiphoneAppDelegate *kod = [[gezimanyaiphoneAppDelegate alloc] init];
    kod.drawerController = [[MMDrawerController alloc] init];
    
    MMDrawerBarButtonItem *leftBtn = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(btnTappedLeft:)];
    [self.navigationItem setLeftBarButtonItem:leftBtn animated:YES];
    
    MMDrawerBarButtonItem *rightBtn = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(btnTappedRight:)];
    [self.navigationItem setRightBarButtonItem:rightBtn animated:YES];
	// Do any additional setup after loading the view.
}

- (void)fetchedData:(NSData *)responseData {
    //parse out the json data
    NSError* error;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          
                          options:kNilOptions
                          error:&error];
    
    NSArray* cities = [json objectForKey:@"title"]; //2
    
    NSLog(@"title: %@", cities); //3
    NSDictionary *titles = [cities objectAtIndex:0];
    
    NSNumber *cityID = [titles objectForKey:@"id"];
    titleG = [titles objectForKey:@"title"];
    
}

-(void)btnTappedLeft:(id)sender {
    
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
        NSLog(@"sol menu animasyonu bitti");
    }];
}
-(void)btnTappedRight:(id)sender {
    
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:^(BOOL finished) {
        NSLog(@"sağ menu animasyonu bitti");
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
