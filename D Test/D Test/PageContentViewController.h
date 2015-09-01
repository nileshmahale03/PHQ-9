//
//  PageContentViewController.h
//  D Test
//
//  Created by Nilesh Mahale on 8/27/15.
//  Copyright (c) 2015 Nilesh Mahale. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController {
    BOOL checkedOne;
    BOOL checkedTwo;
    BOOL checkedThree;
    BOOL checkedFour;
}


@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property NSUInteger pageIndex;
@property NSString *questionText;

@property (strong, nonatomic) IBOutlet UIButton *checkBoxButtonOne;
@property (strong, nonatomic) IBOutlet UIButton *checkBoxButtonTwo;
@property (strong, nonatomic) IBOutlet UIButton *checkBoxButtonThree;
@property (strong, nonatomic) IBOutlet UIButton *checkBoxButtonFour;

@property (strong, nonatomic) IBOutlet UILabel *textBoxLabelOne;
@property (strong, nonatomic) IBOutlet UILabel *textBoxLabelTwo;
@property (strong, nonatomic) IBOutlet UILabel *textBoxLabelThree;
@property (strong, nonatomic) IBOutlet UILabel *textBoxLabelFour;

@property (strong, nonatomic) IBOutlet UIButton *goToResultButton;

- (IBAction)checkBoxActionOne:(id)sender;
- (IBAction)checkBoxActionTwo:(id)sender;
- (IBAction)checkBoxActionThree:(id)sender;
- (IBAction)checkBoxActionFour:(id)sender;

- (IBAction)goToButtonAction:(id)sender;


@end
