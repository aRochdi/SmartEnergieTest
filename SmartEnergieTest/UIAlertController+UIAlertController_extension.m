//
//  UIAlertController+UIAlertController_extension.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "UIAlertController+UIAlertController_extension.h"

@implementation UIAlertController (UIAlertController_extension)

+(void)showAlertWithTitle:(NSString*) title
                  message:(NSString*)msg
        presentController:(UIViewController*)pv{
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    [alertController addAction:okAction];
    
    [pv presentViewController:alertController animated:YES completion:nil];
    
}

@end
