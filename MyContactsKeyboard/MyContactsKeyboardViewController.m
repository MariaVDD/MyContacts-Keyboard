//
//  MyContactsKeyboardViewController.m
//  MyContactsKeyboard
//
//  Created by Michael Forsberg on 9/27/14.
//  Copyright (c) 2014 Maria Vergel De Dios. All rights reserved.
//

#import "MyContactsKeyboardViewController.h"

@interface MyContactsKeyboardViewController ()

@end

@implementation MyContactsKeyboardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    
    
    
    
    [self.view addGestureRecognizer:tap];
}

-(void)dismissKeyboard {
    // add textfields and textviews
    //[Nameofoutletlikeatextfield resignFirstResponder];
    
    [self.txtFirst resignFirstResponder];
    [self.txtLast resignFirstResponder];
    [self.txtaddress resignFirstResponder];
    [self.txtcity resignFirstResponder];
    [self.txtstate resignFirstResponder];
    [self.txtzip resignFirstResponder];
    [self.txtphone resignFirstResponder];
    [self.txtemail resignFirstResponder];
    [self.txtData resignFirstResponder];
    
    
}


//right-click drag textfield to fileowner select delegate

-(IBAction) doneEditing:(id) sender {
    

    [sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (CGSize)getScreenSize
{
    //Get Screen size
    CGSize size;
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height > [[UIScreen mainScreen] bounds].size.width) {
        // in Landscape mode, width always higher than height
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height < [[UIScreen mainScreen] bounds].size.width) {
        // in Portrait mode, height always higher than width
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else {
        // otherwise it is normal
        size.height = [[UIScreen mainScreen] bounds].size.height;
        size.width = [[UIScreen mainScreen] bounds].size.width;
    }
    return size;
}

- (IBAction)btnBack:(id)sender {
    
       [self.scrollview setContentOffset:CGPointZero animated:YES];
}
- (IBAction)btnSave:(id)sender {
    [self dismissKeyboard];
    
    //save
    //format
    if ([self.txtData.text  isEqual:@""])
    {
        self.txtData.text = @"MyContacts";
    }
    self.txtData.text = [NSString stringWithFormat:@"%@\n\nFirst:%@\nLast:%@\naddress:%@\ncity:%@\nstate:%@\nzip:%@\nphone:%@\nEmail:%@",
                         self.txtData.text,self.txtFirst.text,self.txtLast.text,self.txtemail.text];
    
    self.txtFirst.text = @"";
    self.txtLast.text = @"";
    self.txtaddress.text = @"";
    self.txtcity.text = @"";
    self.txtstate.text = @"";
    self.txtzip.text = @"";
    self.txtphone.text = @"";
    self.txtemail.text = @"";
    
    
    CGPoint scrollPoint = CGPointMake(0, self.btnBack.frame.origin.y);
    [self.scrollview  setContentOffset:scrollPoint animated:YES];
}
    



- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.scrollview setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [self.scrollview setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [self.scrollview setContentOffset:CGPointZero animated:YES];
}
@end



