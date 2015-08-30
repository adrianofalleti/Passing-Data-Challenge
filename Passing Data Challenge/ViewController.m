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
    self.textField.delegate = self;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([sender isKindOfClass:[UIButton class]]) {
        [self.textField resignFirstResponder];
        
        if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]) {
            
            DetailViewController *viewController = segue.destinationViewController;
            
            viewController.stringa = self.textField.text;
            
            viewController.delegato = self;
            
            
        }
        
        
        
        
        
    }
    
    
    
    
}

#pragma mark DetailViewControllerDelegate metodo

-(void)didUpdateText:(NSString *)testo {
    
    self.textField.text = testo;
    
}
#pragma mark UITextFieldDelegate metodo
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
