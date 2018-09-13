//
//  AddFriendViewController.m
//  ChatDemo
//
//  Created by Joker on 15/7/22.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import "AddFriendViewController.h"
#import "HLIMClient.h"

@interface AddFriendViewController ()

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@end

@implementation AddFriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addFriendClick:(id)sender {
     NSString *username = _usernameField.text;
    if (username.length <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"用户名未填写" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil];
        [alertView show];
        return;
    }

    [[HLIMClient shareClient] addUser:username reason:@"我认识你的哦"];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
