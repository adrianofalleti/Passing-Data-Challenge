//
//  DetailViewController.m
//  Passing Data Challenge
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.labeL.text = self.stringa;
    self.textField2.delegate = self;
    
    
}




- (IBAction)update:(UIButton *)sender {
    self.labeL.text = self.textField2.text;
    [self.delegato didUpdateText:self.textField2.text];
    
    
   
}
#pragma mark UITextFieldDelegate
// questo metodo fa si che quando il bottone return è premuto noi possiamo far accadere qualcosa e in questo caso noi facciamo si che il metodo didUpdateText sia chiamato

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField2 resignFirstResponder];
    
    [self.delegato didUpdateText:self.textField2.text];
    return YES;
}
@end
