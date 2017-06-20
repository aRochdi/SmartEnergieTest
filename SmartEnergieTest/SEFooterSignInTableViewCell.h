//
//  SEFooterSignInTableViewCell.h
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import <UIKit/UIKit.h>

#define reuseIdentierFooterSignIn @"SEFooterSignInTableViewCell"

typedef void(^ActionBlock)();

@interface SEFooterSignInTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;

@property (nonatomic,copy) ActionBlock cancelBlock;
@property (nonatomic,copy) ActionBlock submitBlock;

-(void)setupCell;

@end

