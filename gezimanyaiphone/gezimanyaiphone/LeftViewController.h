//
//  LeftViewController.h
//  gezimanyaiphone
//
//  Created by Merve Engur on 21/11/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface LeftViewController : UIViewController <UISearchBarDelegate> {
    IBOutlet UITextField *searchText;
    
    
}

@property (nonatomic,retain) UITextField *searchText;

@end
