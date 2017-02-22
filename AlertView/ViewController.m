//
//  ViewController.m
//  AlertView
//
//  Created by test on 2/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)allert:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"sign in" message:@"Enter details" preferredStyle:UIAlertControllerStyleAlert];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        UITextField *txt1 = [[UITextField alloc]init];
        txt1.placeholder = @"Enter name";
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        UITextField *txt1 = [[UITextField alloc]init];
        txt1.placeholder = @"password";
    }];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        UITextField *txt1 = [[UITextField alloc]init];
        txt1.placeholder = @"hint";
        txt1.backgroundColor = [UIColor whiteColor];
    }];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        [self dismissViewControllerAnimated:YES completion:nil  ];
    }];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
        [self dismissViewControllerAnimated:YES completion:nil  ];
    }];
    [alert addAction:action1];
    [alert addAction:action2];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (IBAction)sheet:(id)sender {
}
@end
