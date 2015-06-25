//
//  ViewController.h
//  ExePraModulo4
//
//  Created by epacheco on 26/03/15.
//  Copyright (c) 2015 epacheco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *apelidoLabel;
@property (weak, nonatomic) IBOutlet UITextField *streetLabel;
@property (weak, nonatomic) IBOutlet UISwitch *switchColor;
@property (weak, nonatomic) IBOutlet UIButton *okButton;
@property (weak, nonatomic) IBOutlet UITextView *showResultsTextView;

-(void)setOn;
-(IBAction)save:(id)sender;


@end

