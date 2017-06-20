//
//  SESignInViewController.m
//  SmartEnergieTest
//
//  Created by facileit on 20/06/2017.
//  Copyright © 2017 warrenwalter. All rights reserved.
//

#import "SESignInViewController.h"
#import "SEProfil.h"
#import "UIAlertController+UIAlertController_extension.h"
#import <AFNetworking.h>

#define arrayTitle  @[@"Prénom",@"Nom",@"Email"]
#define indexFirstName 0
#define indexLastName 1
#define indexEmail 2

@interface SESignInViewController ()

@end

@implementation SESignInViewController
@synthesize myTableView,titleLabel;





- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [myTableView registerNib:[UINib nibWithNibName:@"SESignInTableViewCell" bundle:nil] forCellReuseIdentifier:reuseIdentifierSignIn];
    [myTableView registerNib:[UINib nibWithNibName:@"SEFooterSignInTableViewCell" bundle:nil] forCellReuseIdentifier:reuseIdentierFooterSignIn];

    [myTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [myTableView setDelegate:self];
    [myTableView setDataSource:self];
    [myTableView setRowHeight:74];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return arrayTitle.count + 1;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row < arrayTitle.count) {
        SESignInTableViewCell* cell = [myTableView dequeueReusableCellWithIdentifier:reuseIdentifierSignIn forIndexPath:indexPath];
        [cell SetupCellWithText:[arrayTitle objectAtIndex:indexPath.row]];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        return  cell;
        
    }
    
    SEFooterSignInTableViewCell* cell = [myTableView dequeueReusableCellWithIdentifier:reuseIdentierFooterSignIn forIndexPath:indexPath];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    cell.cancelBlock = ^{
        [self dismissViewControllerAnimated:true completion:nil];
    };
    
    cell.submitBlock = ^{
        [self submitForm];
    };
    
    return cell;
}

-(void)submitForm {
    NSString* firstName = [self getInputTextAt:[NSIndexPath indexPathForRow:indexFirstName inSection:0]];
    NSString* lastName = [self getInputTextAt:[NSIndexPath indexPathForRow:indexLastName inSection:0]];
    NSString* email = [self getInputTextAt:[NSIndexPath indexPathForRow:indexEmail inSection:0]];
    
    NSString* emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate* emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",emailRegex];
    
    if(![firstName isEqualToString:@""] && ![lastName isEqualToString:@""] &&[emailTest evaluateWithObject:email]) {
        
        NSString* username = [NSString stringWithFormat:@"%@%@",[lastName substringFromIndex:1],firstName];
        NSString* URLString = @"http://jsonplaceholder.typicode.com/users";
        NSDictionary* parameters = @{@"user":@{@"email":email,@"name":username}};
        
        //NSURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:URLString parameters:parameters error:nil];
        
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        
        [manager POST:URLString parameters:parameters progress:nil success:^(NSURLSessionTask *task, id responseObject) {
            NSLog(@"JSON: %@", responseObject);
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)task.response;
            if((long)httpResponse.statusCode == 201) {
                [SEProfil saveCurrentProfil:[[SEProfil alloc] initWithfirstName:firstName lastName:lastName email:email]];
                [self dismissViewControllerAnimated:NO completion:nil];

            } else {
                [UIAlertController showAlertWithTitle:@"Erreur" message:[NSString stringWithFormat:@"status code: %li", (long)httpResponse.statusCode] presentController:self];
            }
        } failure:^(NSURLSessionTask *operation, NSError *error) {
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)operation.response;

            [UIAlertController showAlertWithTitle:@"Erreur" message:[NSString stringWithFormat:@"status code: %li", (long)httpResponse.statusCode] presentController:self];
        }];
        

    }
    
}


-(NSString*)getInputTextAt:(NSIndexPath*)indexPath {
    if(indexPath.row < arrayTitle.count) {
        return [[((SESignInTableViewCell*)[myTableView cellForRowAtIndexPath:indexPath]) textField]text];
    }
    
    return @"";
}
@end
