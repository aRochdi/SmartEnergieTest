//
//  SEMainViewController.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "SEMainViewController.h"
#import "SEProfil.h"
#import <SWRevealViewController.h>

@interface SEMainViewController ()

@end

@implementation SEMainViewController
@synthesize  lastNameLabel,firstNameLabel,emailLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SEProfil* profil = [SEProfil currentProfil];
    
    [firstNameLabel setText:[profil firstName]];
    [lastNameLabel setText:[profil lastName]];
    [emailLabel setText:[profil email]];
    
    [self customSetup];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)customSetup
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.revealButtonItem setTarget: self.revealViewController];
        [self.revealButtonItem setAction: @selector( revealToggle: )];
        [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
