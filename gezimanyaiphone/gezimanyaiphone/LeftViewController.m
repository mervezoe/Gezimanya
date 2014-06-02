//
//  LeftViewController.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 21/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "LeftViewController.h"
#import "gezimanyaiphoneViewController.h"
#import "GeziNotlariViewController.h"


@interface LeftViewController ()


@end

@implementation LeftViewController
@synthesize searchText;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)btnClicked:(id)sender{
    
    UIButton *btn = (UIButton *) sender;
    [searchText resignFirstResponder];
    
    if (btn.tag == 0) {
      
        [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished) {
            NSLog(@"Anasayfaya döndük");
        }];
    }
    if (btn.tag == 1) {
        
        [self.mm_drawerController closeDrawerAnimated:YES completion:^(BOOL finished){
            NSLog(@"Gezi Notları");
            
            GeziNotlariViewController *geziNotlari = [[GeziNotlariViewController alloc] init];
            
            [self presentViewController:geziNotlari animated:YES completion:nil];
            [[self navigationController]pushViewController:geziNotlari animated:YES];
            
        }];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create request for user's Facebook data
    FBRequest *request = [FBRequest requestForMe];
    
    // Send request to Facebook
    [request startWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
        if (!error) {
            // result is a dictionary with the user's Facebook data
            NSDictionary *userData = (NSDictionary *)result;
  /*
            NSString *facebookID = userData[@"id"];
            NSString *name = userData[@"name"];
            NSString *location = userData[@"location"][@"name"];
            NSString *gender = userData[@"gender"];
            NSString *birthday = userData[@"birthday"];
            NSString *relationship = userData[@"relationship_status"];
            
           NSURL *pictureURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=large&return_ssl_resources=1", facebookID]];
    */        
            // Now add the data to the UI elements
            // ...
        }
        NSLog(@"left vc viewdidload");
    }];

    searchText = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 150, 20)];
    searchText.borderStyle= UITextBorderStyleRoundedRect;
    searchText.font = [UIFont systemFontOfSize:13];
   // searchText.font = [[UIFont alloc] fontWithSize:13];
    [self.view addSubview:searchText];
    
    UIButton *gezi = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    gezi.frame = CGRectMake(10,12,150, 20);
    [gezi addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [gezi setTitle:@"Gezimanya" forState:UIControlStateNormal];
    [gezi setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    gezi.titleLabel.font = [UIFont systemFontOfSize:20];
    gezi.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:gezi];
    
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(10,80,100, 40);
    [btn1 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 setTitle:@"Gezi Notları" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn1.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(10,125,200, 40);
    [btn2 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 setTitle:@"Ben de gittim!" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn2.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn2.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn3.frame = CGRectMake(10,170,200, 40);
    [btn3 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 setTitle:@"Forum" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn3.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn3.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn3];
    
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn4.frame = CGRectMake(10,215,200, 40);
    [btn4 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn4 setTitle:@"Etkinlikler" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn4.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn4];
    
    UIButton *btn5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn5.frame = CGRectMake(10,260,200, 40);
    [btn5 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn5 setTitle:@"Seyahat Çantam" forState:UIControlStateNormal];
    [btn5 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn5.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn5];
    
    UIButton *btn6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn6.frame = CGRectMake(10,305,200, 40);
    [btn6 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn6 setTitle:@"Biliyor muydunuz?" forState:UIControlStateNormal];
    [btn6 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn6.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn6];
    
    UIButton *btn7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn7.frame = CGRectMake(10,350,200, 40);
    [btn7 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn7 setTitle:@"Turlar" forState:UIControlStateNormal];
    [btn7 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn7.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn7.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn7];
    
    UIButton *btn8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn8.frame = CGRectMake(10,395,200, 40);
    [btn8 addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn8 setTitle:@"Kampanyalar" forState:UIControlStateNormal];
    [btn8 setTitleColor:[UIColor whiteColor] forState: UIControlStateNormal];
    btn8.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn8.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:btn8];
    
    gezi.tag=0;
    btn1.tag=1;
    btn2.tag=2;
    btn3.tag=3;
    btn4.tag=4;
    btn5.tag=5;
    btn6.tag=6;
    btn7.tag=7;
    btn8.tag=8;
    
    
	// Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [searchText resignFirstResponder];
    
}
-(void) viewDidDisappear:(BOOL)animated {
    [searchText resignFirstResponder];
    [self.searchText setText:@" "];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
