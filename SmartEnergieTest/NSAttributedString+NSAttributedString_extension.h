//
//  NSAttributedString+NSAttributedString_extension.h
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSAttributedString (NSAttributedString_extension)


+ (NSAttributedString *)attributedString:(NSString*)string
                                   color:(UIColor*)sColor
                                    font:(UIFont*)Font;

+ (NSAttributedString *)attributedStringFirstString:(NSString*)fString
                                       secondString:(NSString*)sString
                                         firstColor:(UIColor*)fColor
                                        secondColor:(UIColor*)sColor
                                          firstFont:(UIFont*)fFont
                                         secondFont:(UIFont*)sFont;

@end
