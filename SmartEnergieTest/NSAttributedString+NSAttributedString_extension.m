//
//  NSAttributedString+NSAttributedString_extension.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "NSAttributedString+NSAttributedString_extension.h"
#import <UIKit/UIKit.h>

@implementation NSAttributedString (NSAttributedString_extension)

+ (NSAttributedString *)attributedString:(NSString*)string
                                              color:(UIColor*)color
                                               font:(UIFont*)font
                                          {
    
    NSMutableAttributedString* mutableString = [[NSMutableAttributedString alloc]initWithString:string];
    [mutableString addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, mutableString.length)];
    [mutableString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, mutableString.length)];
    
    
    return mutableString;
}

+ (NSAttributedString *)attributedStringFirstString:(NSString*)fString
                                       secondString:(NSString*)sString
                                         firstColor:(UIColor*)fColor
                                        secondColor:(UIColor*)sColor
                                          firstFont:(UIFont*)fFont
                                         secondFont:(UIFont*)sFont {

    NSMutableAttributedString* mutablefString = [[NSMutableAttributedString alloc]initWithString:fString];
    [mutablefString addAttribute:NSForegroundColorAttributeName value:fColor range:NSMakeRange(0, mutablefString.length)];
    [mutablefString addAttribute:NSFontAttributeName value:fFont range:NSMakeRange(0, mutablefString.length)];
    
    NSMutableAttributedString* mutablesString = [[NSMutableAttributedString alloc]initWithString:sString];
    [mutablesString addAttribute:NSForegroundColorAttributeName value:sColor range:NSMakeRange(0, mutablesString.length)];
    [mutablesString addAttribute:NSFontAttributeName value:sFont range:NSMakeRange(0, mutablesString.length)];
    
    NSMutableAttributedString* finalString = [[NSMutableAttributedString alloc]initWithAttributedString:mutablefString];
    
    [finalString appendAttributedString:mutablesString];
    
    return finalString;
}

@end
