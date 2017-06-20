//
//  SESignInTableViewCell.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "SESignInTableViewCell.h"


@implementation SESignInTableViewCell
@synthesize textFieldLabel,textField;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)SetupCellWithText:(NSString *)text{
    [textFieldLabel setFont:[UIFont systemFontOfSize:14.0 weight:UIFontWeightSemibold]];
    [textFieldLabel setText:[NSString stringWithFormat:@"%@ :",text]];
    [textFieldLabel setTextColor:[UIColor blackColor]];
    [textField setFont:[UIFont systemFontOfSize:14.0]];
    [textField setBackgroundColor:[UIColor grayColor]];
    
}

@end
