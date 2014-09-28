//
//  MyContactsKeyboardViewController.h
//  MyContactsKeyboard
//
//  Created by Michael Forsberg on 9/27/14.
//  Copyright (c) 2014 Maria Vergel De Dios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyContactsKeyboardViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *btnBack;
- (IBAction)btnBack:(id)sender;
@property (strong, nonatomic) IBOutlet UITextView *txtData;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
@property (strong, nonatomic) IBOutlet UITextField *txtFirst;
@property (strong, nonatomic) IBOutlet UITextField *txtLast;
@property (strong, nonatomic) IBOutlet UITextField *txtaddress;
@property (strong, nonatomic) IBOutlet UITextField *txtcity;
@property (strong, nonatomic) IBOutlet UITextField *txtstate;
@property (strong, nonatomic) IBOutlet UITextField *txtzip;
@property (strong, nonatomic) IBOutlet UITextField *txtphone;
@property (strong, nonatomic) IBOutlet UITextField *txtemail;
- (IBAction)btnSave:(id)sender;


-(IBAction) doneEditing:(id) sender;


@end