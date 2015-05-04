//
//  ViewController.m
//  Customplusbutton
//
//  Created by Souvik on 04/05/15.
//  Copyright (c) 2015 Souvik. All rights reserved.
//

#import "ViewController.h"
#import "CustomPlusButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CustomPlusButton *button = [[CustomPlusButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-50.0f, self.view.frame.size.height/2-50.0f, 100.0f, 100.0f)];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
