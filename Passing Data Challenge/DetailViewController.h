//
//  DetailViewController.h
//  Passing Data Challenge
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <UIKit/UIKit.h>
//creo un protocollo con un metodo per far si che ciò che sia scritto sul textField sia riportato indietro nel primo viewController
@protocol DetailViewControllerDelegate <NSObject>

@required
-(void)didUpdateText:(NSString *)testo;

@end

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong,nonatomic) NSString *stringa;

@property (weak, nonatomic) IBOutlet UILabel *labeL;

@property (strong, nonatomic) IBOutlet UITextField *textField2;

@property (weak,nonatomic) id <DetailViewControllerDelegate> delegato;

- (IBAction)update:(UIButton *)sender;

@end
