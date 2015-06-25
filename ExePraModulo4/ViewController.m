//
//  ViewController.m
//  ExePraModulo4
//
//  Created by epacheco on 26/03/15.
//  Copyright (c) 2015 epacheco. All rights reserved.
//
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, assign) BOOL switchOn;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    self.showResultsTextView.layer.cornerRadius = 0.5f;
    [self.showResultsTextView setEditable:NO];
    
    [self.switchColor setOn:NO animated:YES];
    [self.switchColor addTarget:self
                         action:@selector(setOn)
               forControlEvents:UIControlEventValueChanged];
    
    [self.nameLabel setReturnKeyType:UIReturnKeyDone];
    [self.nameLabel addTarget:self
                       action:@selector(hideKeyboard:)
             forControlEvents:UIControlEventEditingDidEndOnExit];
    
    [self.apelidoLabel setReturnKeyType:UIReturnKeyDone];
    [self.apelidoLabel addTarget:self
                       action:@selector(hideKeyboard:)
             forControlEvents:UIControlEventEditingDidEndOnExit];
    
    [self.streetLabel setReturnKeyType:UIReturnKeyDone];
    [self.streetLabel addTarget:self
                       action:@selector(hideKeyboard:)
             forControlEvents:UIControlEventEditingDidEndOnExit];
   
    [self.okButton addTarget:self
                      action:@selector(save:)
            forControlEvents:UIControlEventTouchUpInside];
    
    [super viewDidLoad];
}

-(void)setOn
{
    if(!self.switchOn){
        [self.switchColor setOn:YES animated:YES];
        [self.view setBackgroundColor:[UIColor grayColor]];
        
        self.switchOn = YES;
    }else
    {
        [self.switchColor setOn:NO animated:YES];
        [self.view setBackgroundColor:UIColorFromRGB(0xe6e6e6)];
        self.switchOn = NO;
    }
}

-(IBAction)save:(id)sender
{
    NSString *result;
    NSString *nameResult = self.nameLabel.text;
    NSString *apelidoResult = self.apelidoLabel.text;
    NSString *streetResult = self.streetLabel.text;
    if(self.switchOn)
    {
        self.showResultsTextView.textColor = [UIColor blueColor];
    }
    
    result = [NSString stringWithFormat:@"%@ %@ lives in: %@",nameResult, apelidoResult, streetResult];
    self.showResultsTextView.text = result;
}

-(IBAction)hideKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

@end
