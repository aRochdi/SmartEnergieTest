//
//  SEProfil.h
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import <Foundation/Foundation.h>


#define keyFirstName        @"keyFirstName"
#define keyLastName         @"keyLastName"
#define keyEmail            @"keyEmail"
#define keyAdress           @"keyAdress"
#define keyCurrentProfil    @"keyCurrentProfil"

@interface SEProfil : NSObject<NSCoding>

@property (nonatomic,strong) NSString *firstName;
@property (nonatomic,strong) NSString *lastName;
@property (nonatomic,strong) NSString *email;

-(id)initWithfirstName:(NSString*)fName
     lastName:(NSString*)lName
        email:(NSString*)nEmail;

+(SEProfil*)currentProfil;

+(void)clearCurrentProfil;

+(void)saveCurrentProfil:(SEProfil*)profil;


@end


