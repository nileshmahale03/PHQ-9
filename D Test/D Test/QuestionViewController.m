//
//  QuestionViewController.m
//  D Test
//
//  Created by Nilesh Mahale on 8/29/15.
//  Copyright (c) 2015 Nilesh Mahale. All rights reserved.
//

#import "QuestionViewController.h"
#import "PageContentViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create the data model
    _questionTitles = @[@"You find it easy to introduce yourself to other people.",
                        @"You often get so lost in thoughts that you ignore or forget your surroundings.",
                        @"You try to respond to your e-mails as soon as possible and cannot stand a messy inbox.",
                        @"You find it easy to stay relaxed and focused even when there is some pressure.",
                        @"You don't usually initiate conversations.",
                        @"You feel a constant need for something new.",
                        @"You have numerous and varied interests rather than several specific ones.",
                        @"Being adaptable is more important to you than being organized.",
                        //                    @"Solving practical problems interests you more than finding answers to existential questions.",
                        //                    @"Winning a debate is more important to you than making sure no one gets upset.",
                        //                    @"You often feel as if you have to justify yourself to other people.",
                        //                    @"Your home and work environments are quite tidy.",
                        //                    @"You do not mind being at the center of attention.",
                        //                    @"You would rather call yourself pragmatic than visionary.",
                        //                    @"You rarely get mood swings.",
                        //                    @"Your travel plans are usually well thought out.",
                        //                    @"It is often difficult for you to relate to other people’s feelings.",
                        //                    @"Your mood can change very quickly.",
                        //                    @"In a discussion, truth should be more important than people’s sensitivities.",
                        //                    @"You rarely worry about how your actions affect other people.",
                        //                    @"Your work style is closer to random energy spikes than to a methodical approach.",
                        //                    @"You are often envious of others.",
                        //                    @"An interesting book or a video game is often better than a social event.",
                        @"Being able to develop a plan and stick to it is the most important part of every project."];
    
    // Create the page view controller
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    PageContentViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    // change the size of the page view controller
    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startWalkThrough:(id)sender {
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger index = ((PageContentViewController *) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index --;

    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = ((PageContentViewController *) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index ++;
    
    // After last question go to result page
    if (index == [self.questionTitles count]) {
        NSLog(@"This is last page");
    }
    
    //self.pageContentViewController.pageIndex = index;
    return [self viewControllerAtIndex:index];
}

- (PageContentViewController *)viewControllerAtIndex:(NSUInteger)index {
    if (([self.questionTitles count] == 0) || (index >= [self.questionTitles count])) {
        return nil;
    }
    
    // create a new view controller and pass suitable data
    PageContentViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentController"];
    pageContentViewController.questionText = self.questionTitles[index];
    pageContentViewController.pageIndex = index;
    
    return pageContentViewController;
}


- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return [self.questionTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}


@end
