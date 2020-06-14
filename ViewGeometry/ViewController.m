//
//  ViewController.m
//  ViewGeometry
//
//  Created by Alexey Baryshnikov on 25.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 300, 100)];
    view1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    view1.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(80, 80, 80, 200)];
    view2.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.5];
    view2.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(30, 130, 30, 30)];
    view3.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.8];
    view3.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
//    [self.view addSubview:view3];
    [view2 addSubview:view3];
    
    
    
//    [self.view bringSubviewToFront:view1];
//    NSLog(@"%@", [self.view subviews]);

}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"\nframe: %@\nbounds: %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
    
    CGPoint origin = CGPointZero;
    origin = [self.view convertPoint:origin toView:self.view.window];
    NSLog(@"\norigin: %@", NSStringFromCGPoint(origin));
    
    CGRect r = self.view.bounds;
    r.origin.y = 0;
    r.origin.x = CGRectGetWidth(r) - 100;
    r.size = CGSizeMake(100, 100);
    
    UIView *v = [[UIView alloc] initWithFrame:r];
    v.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:v];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

@end
