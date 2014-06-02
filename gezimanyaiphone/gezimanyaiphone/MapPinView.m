//
//  MapPinView.m
//  gezimanyaiphone
//
//  Created by Merve Engur on 09/12/13.
//  Copyright (c) 2013 Merve Engur. All rights reserved.
//

#import "MapPinView.h"
#import <Parse/Parse.h>
#import <QuartzCore/QuartzCore.h>

@implementation MapPinView

@synthesize fbID;
@synthesize annotation;

- (id)initWithAnnotation:(id )nt
{
    self = [super initWithAnnotation:nt reuseIdentifier:@"CustomId"];
    if (self)
    {
        UIImage* theImage = [UIImage imageNamed:@"pin.png"];
        annotation = nt;
        
        if (!theImage)
            return nil;
        
        NSLog(@"hello");
        
        self.image = theImage;
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    //[super setSelected:selected animated:animated];
    
    if(selected)
    {
        UIView *v = [[UIView alloc] initWithFrame:CGRectMake(-40, -40, 200, 40)];
        [v setBackgroundColor:[UIColor redColor]];
        v.tag = 3000;
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, v.frame.size.width, v.frame.size.height);
        [btn addTarget:self action:@selector(btnTapped:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:annotation.title forState:UIControlStateNormal];
        [v addSubview:btn];
        
        [self addSubview:v];
        NSLog(@"selected");
    }
    else
    {
        NSLog(@"not selected");
        UIView *v = [self viewWithTag:3000];
        [v removeFromSuperview];
    }
}

- (void) btnTapped:(id)sender
{
    NSLog(@"btn tapped");
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
