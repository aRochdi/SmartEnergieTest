//
//  SESignInViewController.h
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SESignInTableViewCell.h"
#import "SEFooterSignInTableViewCell.h"




@interface SESignInViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@end
