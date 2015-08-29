//
//  ViewController.m
//  Passing Data Challenge
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([sender isKindOfClass:[UIButton class]]) {
        [self.textField resignFirstResponder];
        
        if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]) {
            
            DetailViewController *viewController = segue.destinationViewController;
            
            viewController.stringa = self.textField.text;
            
            
            
            
        }
        
        
        
        
        
    }
    
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
