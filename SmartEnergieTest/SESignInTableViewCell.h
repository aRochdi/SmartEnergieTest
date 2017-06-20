//
//  SESignInTableViewCell.h
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import <UIKit/UIKit.h>
#define reuseIdentifierSignIn @"SESignInTableViewCell"


@interface SESignInTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *textFieldLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

-(void)SetupCellWithText:(NSString*)text;

@end
