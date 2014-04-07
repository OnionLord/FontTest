//
//  fontViewController.m
//  FontTest
//
//  Created by apple06 on 2014. 4. 1..
//  Copyright (c) 2014년 COMP420. All rights reserved.
//

#import "fontViewController.h"

@interface fontViewController ()
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)Pressed:(UIButton *)sender;

@end

@implementation fontViewController



- (IBAction)Pressed:(UIButton *)sender {

    float fontsize = self.myLabel.font.pointSize;
    
    NSRange r = {0,1};
    NSMutableAttributedString *labelText = [self.myLabel.attributedText mutableCopy];
    
    UIFont *bodyfont = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    
    UIFontDescriptor *eDescriptor = [bodyfont fontDescriptor];
    
    
    switch((int)(fontsize/10)%4)
    {
        case 1:
            [labelText setAttributes : @{NSFontAttributeName:[UIFont fontWithName:@"Helvetica-BoldOblique" size:fontsize+10]} range:r];
            self.myLabel.textColor =[UIColor brownColor];
            //self.myLabel.font = [UIFont boldSystemFontOfSize:16.0f];
            break;
        case 2:
            [labelText setAttributes : @{NSFontAttributeName:[UIFont fontWithName:@"TimesNewRomanPSMT" size:fontsize+10]} range:r];
            self.myLabel.textColor =[UIColor redColor];
            //self.myLabel.font = [UIFont italicSystemFontOfSize:16.0f];
            break;
        case 3:
            [labelText setAttributes : @{NSFontAttributeName:[UIFont fontWithName:@"TimesNewRomanPSMT" size:fontsize+10]} range:r];
            self.myLabel.textColor =[UIColor blueColor];
            break;
        case 4:
            [labelText setAttributes : @{NSFontAttributeName:[UIFont fontWithName:@"HelveticaNeue-Bold" size:fontsize+10]} range:r];
            self.myLabel.textColor =[UIColor blackColor];
            break;
        default:
            [labelText setAttributes : @{NSFontAttributeName:[UIFont fontWithName:@"Helvetica-BoldOblique" size:fontsize+10]} range:r];
            self.myLabel.textColor =[UIColor blackColor];
    }

    
    
    self.myLabel.attributedText = labelText;
    
    
}
@end
