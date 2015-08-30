//
//  ViewController.h
//  Passing Data Challenge
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ViewController : UIViewController <DetailViewControllerDelegate,UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *textField;






@end

