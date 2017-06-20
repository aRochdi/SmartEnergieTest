//
//  SEHomeViewController.h
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SEHomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *HomeLabel;

@property (weak, nonatomic) IBOutlet UIButton *logInButton;
@property (weak, nonatomic) IBOutlet UIButton *signInButton;

@property (weak, nonatomic) IBOutlet UIButton *aboutElecWButton;
@property (weak, nonatomic) IBOutlet UIButton *engieAccountButton;

@property (weak, nonatomic) IBOutlet UILabel *contactLabel;

@end
