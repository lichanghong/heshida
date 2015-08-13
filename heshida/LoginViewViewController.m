//
//  LoginViewViewController.m
//  heshida
//
//  Created by 李长鸿 on 8/9/15.
//  Copyright (c) 2015 李长鸿. All rights reserved.
//

#import "LoginViewViewController.h"

@interface LoginViewViewController ()
@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation LoginViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     // Do any additional setup after loading the view.
}

- (IBAction)didClickAction:(id)sender {
    if (self.loginButton == sender) {
        [self dismissViewControllerAnimated:YES completion:nil];
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
