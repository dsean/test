//
//  ViewController.m
//  test
//
//  Created by 楊 德忻 on 2014/8/7.
//  Copyright (c) 2014年 德忻 楊. All rights reserved.
//

#import "ViewController.h"
#import "CKCalendarView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    CKCalendarView *calendar = [[CKCalendarView alloc] init];
    [self.view addSubview:calendar];
    calendar.delegate = self;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (BOOL)calendar:(CKCalendarView *)calendar willSelectDate:(NSDate *)date {
    // don't let people select dates in previous/next month
    return [calendar dateIsInCurrentMonth:date];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
