//
//  QuestionViewController.h
//  D Test
//
//  Created by Nilesh Mahale on 8/29/15.
//  Copyright (c) 2015 Nilesh Mahale. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"
#import "ResultViewController.h"

@interface QuestionViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *questionTitles;

@end
