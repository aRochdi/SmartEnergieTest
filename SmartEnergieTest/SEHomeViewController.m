//
//  SEHomeViewController.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "SEHomeViewController.h"
#import "SESignInViewController.h"
#import "SEProfil.h"
#import "NSAttributedString+NSAttributedString_extension.h"

@interface SEHomeViewController ()

@end

@implementation SEHomeViewController
@synthesize HomeLabel,logInButton,signInButton,aboutElecWButton,engieAccountButton,contactLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSAttributedString* homeText = [NSAttributedString attributedStringFirstString:@"Bienvenue sur l'application dédiée aux clients de l'offre " secondString:@"Elec Weekend+" firstColor:[UIColor blackColor] secondColor:[UIColor blackColor] firstFont:[UIFont systemFontOfSize:12.0] secondFont:[UIFont systemFontOfSize:12.0 weight:UIFontWeightMedium]];
    [HomeLabel setAttributedText:homeText];
    [HomeLabel setTextAlignment:NSTextAlignmentCenter];
    
    NSAttributedString* logInText = [NSAttributedString attributedStringFirstString:@"JE SUIS DÉJÀ CLIENT " secondString:@"ELEC WEEKEND+" firstColor:[UIColor whiteColor] secondColor:[UIColor whiteColor] firstFont:[UIFont systemFontOfSize:13.0] secondFont:[UIFont systemFontOfSize:13.0 weight:UIFontWeightHeavy]];
    [[logInButton layer]setCornerRadius:5];
    [logInButton setBackgroundColor:[UIColor purpleColor]];
    [logInButton setAttributedTitle:logInText forState:UIControlStateNormal];
  
    
    NSAttributedString* signInText = [NSAttributedString attributedStringFirstString:@"JE NE SUIS PAS CLIENT " secondString:@"ELEC WEEKEND+" firstColor:[UIColor whiteColor] secondColor:[UIColor whiteColor] firstFont:[UIFont systemFontOfSize:13.0] secondFont:[UIFont systemFontOfSize:13.0 weight:UIFontWeightHeavy]];
    [[signInButton layer]setCornerRadius:5];
    [signInButton setBackgroundColor:[UIColor purpleColor]];
    [signInButton setAttributedTitle:signInText forState:UIControlStateNormal];
    
    NSAttributedString* aboutELECWText = [NSAttributedString attributedStringFirstString:@"DÉCOUVRIR L'OFFRE " secondString:@"ELEC WEEKEND+" firstColor:[UIColor whiteColor] secondColor:[UIColor whiteColor] firstFont:[UIFont systemFontOfSize:13.0] secondFont:[UIFont systemFontOfSize:13.0 weight:UIFontWeightHeavy]];
    [[aboutElecWButton layer]setCornerRadius:5];
    [aboutElecWButton setBackgroundColor:[UIColor blueColor]];
    [aboutElecWButton setAttributedTitle:aboutELECWText forState:UIControlStateNormal];
    
    NSAttributedString* engieAccountText = [NSAttributedString attributedStringFirstString:@"ACCÉDER À MON ESPACE CLIENT " secondString:@"ENGIE" firstColor:[UIColor whiteColor] secondColor:[UIColor whiteColor] firstFont:[UIFont systemFontOfSize:13.0] secondFont:[UIFont systemFontOfSize:13.0 weight:UIFontWeightHeavy]];
    [[engieAccountButton layer]setCornerRadius:5];
    [engieAccountButton setBackgroundColor:[UIColor blueColor]];
    [engieAccountButton setAttributedTitle:engieAccountText forState:UIControlStateNormal];
    
    
    
     NSAttributedString* firstcontactText = [NSAttributedString attributedStringFirstString:@"Contacter un conseiller au " secondString:@"09 69 399 93" firstColor:[UIColor blackColor] secondColor:[UIColor blackColor] firstFont:[UIFont italicSystemFontOfSize:8.0] secondFont:[UIFont systemFontOfSize:9.0 weight:UIFontWeightHeavy]];
    NSAttributedString* secondContactText = [NSAttributedString attributedString:@"\n(appel non surtaxé)" color:[UIColor blackColor] font:[UIFont italicSystemFontOfSize:6.0]];
    
    NSMutableAttributedString* finalContactText = [[NSMutableAttributedString alloc]initWithAttributedString:firstcontactText];
    [finalContactText appendAttributedString:secondContactText];
    
    [contactLabel setAttributedText:finalContactText];
    [contactLabel setNumberOfLines:0];
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    UIViewController* vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SWRevealViewController"];

    if([[self presentedViewController]isKindOfClass:[SESignInViewController class]] && [SEProfil currentProfil] != nil) {
        [self presentViewController:vc animated:YES completion:nil];
    }
    
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

@end
