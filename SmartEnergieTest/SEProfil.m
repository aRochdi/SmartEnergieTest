//
//  SEProfil.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "SEProfil.h"

@implementation SEProfil
@synthesize firstName,lastName,email;

-(id)initWithfirstName:(NSString *)fName
             lastName:(NSString*)lName
                email:(NSString*)nEmail {
    self = [super init];
    
    if(self) {
        self.firstName  = fName;
        self.lastName   = lName;
        self.email      = nEmail;
    }
    
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super init];
    
    if(self) {
        self.firstName  = [aDecoder decodeObjectForKey:keyLastName];
        self.lastName   = [aDecoder decodeObjectForKey:keyFirstName];
        self.email      = [aDecoder decodeObjectForKey:keyEmail];
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:firstName forKey:keyFirstName];
    [aCoder encodeObject:lastName forKey:keyLastName];
    [aCoder encodeObject:email forKey:keyEmail];
}

+(SEProfil*)currentProfil {
    
    NSData* data = [[NSUserDefaults standardUserDefaults]objectForKey:keyCurrentProfil];
    SEProfil*  currentProfil = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    
    return currentProfil;
}


+(void)clearCurrentProfil {
    [[NSUserDefaults standardUserDefaults]setObject:nil forKey:keyCurrentProfil];
}

+(void)saveCurrentProfil:(SEProfil *)profil {
    NSData* data = [NSKeyedArchiver archivedDataWithRootObject:profil];
    [[NSUserDefaults standardUserDefaults]setObject:data forKey:keyCurrentProfil];
}


@end
