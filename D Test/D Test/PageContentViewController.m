//
//  PageContentViewController.m
//  D Test
//
//  Created by Nilesh Mahale on 8/27/15.
//  Copyright (c) 2015 Nilesh Mahale. All rights reserved.
//

#import "PageContentViewController.h"
#import "ResultViewController.h"

@interface PageContentViewController ()


@end

@implementation PageContentViewController
@synthesize checkBoxButtonOne;
@synthesize checkBoxButtonTwo;
@synthesize checkBoxButtonThree;
@synthesize checkBoxButtonFour;

@synthesize textBoxLabelOne;
@synthesize textBoxLabelTwo;
@synthesize textBoxLabelThree;
@synthesize textBoxLabelFour;

@synthesize goToResultButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.questionLabel.text = self.questionText;
    
    checkedOne = NO;
    checkedTwo = NO;
    checkedThree = NO;
    checkedFour = NO;
    
    goToResultButton.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)checkBoxActionOne:(id)sender {
    if (!checkedOne) {
        [checkBoxButtonOne setImage:[UIImage imageNamed:@"MarkedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonTwo setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonThree setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonFour setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        checkedOne = YES;
        textBoxLabelOne.textColor = [UIColor colorWithRed:231.0/255.0 green:95.0/255.0 blue:53.0/255.0 alpha:1];
        textBoxLabelTwo.textColor = [UIColor lightGrayColor];
        textBoxLabelThree.textColor = [UIColor lightGrayColor];
        textBoxLabelFour.textColor = [UIColor lightGrayColor];
    } else {
        [checkBoxButtonOne setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        checkedOne = NO;
        textBoxLabelOne.textColor = [UIColor lightGrayColor];
    }
    
    if (self.pageIndex == 8) {    // how to calculate 8 programatically
        self.goToResultButton.hidden = NO;
    }
}

- (IBAction)checkBoxActionTwo:(id)sender {
    if (!checkedTwo) {
        [checkBoxButtonOne setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonTwo setImage:[UIImage imageNamed:@"MarkedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonThree setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonFour setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        checkedTwo = YES;
        textBoxLabelOne.textColor = [UIColor lightGrayColor];
        textBoxLabelTwo.textColor = [UIColor colorWithRed:231.0/255.0 green:95.0/255.0 blue:53.0/255.0 alpha:1];
        textBoxLabelThree.textColor = [UIColor lightGrayColor];
        textBoxLabelFour.textColor = [UIColor lightGrayColor];
    } else {
        [checkBoxButtonTwo setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        checkedTwo = NO;
        textBoxLabelTwo.textColor = [UIColor lightGrayColor];
    }
    
    if (self.pageIndex == 8) {    // how to calculate 8 programatically
        self.goToResultButton.hidden = NO;
    }
}

- (IBAction)checkBoxActionThree:(id)sender {
    if (!checkedThree) {
        [checkBoxButtonOne setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonTwo setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonThree setImage:[UIImage imageNamed:@"MarkedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonFour setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        checkedThree = YES;
        textBoxLabelOne.textColor = [UIColor lightGrayColor];
        textBoxLabelTwo.textColor = [UIColor lightGrayColor];
        textBoxLabelThree.textColor = [UIColor colorWithRed:231.0/255.0 green:95.0/255.0 blue:53.0/255.0 alpha:1];
        textBoxLabelFour.textColor = [UIColor lightGrayColor];
    } else {
        [checkBoxButtonThree setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        checkedThree = NO;
        textBoxLabelThree.textColor = [UIColor lightGrayColor];
    }
    
    if (self.pageIndex == 8) {    // how to calculate 8 programatically
        self.goToResultButton.hidden = NO;
    }
}

- (IBAction)checkBoxActionFour:(id)sender {
    if (!checkedFour) {
        [checkBoxButtonOne setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonTwo setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonThree setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        [checkBoxButtonFour setImage:[UIImage imageNamed:@"MarkedCheckBox.png"] forState:UIControlStateNormal];
        checkedFour = YES;
        textBoxLabelOne.textColor = [UIColor lightGrayColor];
        textBoxLabelTwo.textColor = [UIColor lightGrayColor];
        textBoxLabelThree.textColor = [UIColor lightGrayColor];
        textBoxLabelFour.textColor = [UIColor colorWithRed:231.0/255.0 green:95.0/255.0 blue:53.0/255.0 alpha:1];
    } else {
        [checkBoxButtonFour setImage:[UIImage imageNamed:@"BlankedCheckBox.png"] forState:UIControlStateNormal];
        checkedFour = NO;
        textBoxLabelFour.textColor = [UIColor lightGrayColor];
    }
    
    if (self.pageIndex == 8) {    // how to calculate 8 programatically
        self.goToResultButton.hidden = NO;
    }
}

- (IBAction)goToButtonAction:(id)sender {
    NSLog(@"button pressed");
    UIViewController *destinationViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultViewController"];
    [destinationViewController setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentViewController:destinationViewController animated:YES completion:nil];
//    [UIView transitionFromView:self.parentViewController.view toView:destinationViewController.view duration:0.9 options:UIViewAnimationOptionTransitionFlipFromLeft completion:nil];
}


@end











