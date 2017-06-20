//
//  UIAlertController+UIAlertController_extension.h
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (UIAlertController_extension)

+(void)showAlertWithTitle:(NSString*) title
                  message:(NSString*)msg
        presentController:(UIViewController*)pv;


@end
