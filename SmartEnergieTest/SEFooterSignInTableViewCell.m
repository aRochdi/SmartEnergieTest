//
//  SEFooterSignInTableViewCell.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "SEFooterSignInTableViewCell.h"

@implementation SEFooterSignInTableViewCell
@synthesize cancelBlock,submitBlock,cancelButton,submitButton;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self setupCell];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupCell {
    [cancelButton setTitle:@"Annuler" forState:UIControlStateNormal];
    [cancelButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [[cancelButton layer]setCornerRadius:5];
    [cancelButton setBackgroundColor:[UIColor blueColor]];
    
    [submitButton setTitle:@"Valider" forState:UIControlStateNormal];
    [submitButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [[submitButton layer]setCornerRadius:5];
    [submitButton setBackgroundColor:[UIColor blueColor]];
}



- (IBAction)cancelAction:(id)sender {
    cancelBlock();
}
- (IBAction)submitAction:(id)sender {
    submitBlock();
}

@end
