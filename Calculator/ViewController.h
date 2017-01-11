//
//  ViewController.h
//  Calculator
//
//  Created by Alec Harrison on 1/11/17.
//  Copyright © 2017 Alec Harrison. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)Divide:(id)sender;
- (IBAction)Subtract:(id)sender;
- (IBAction)Multiply:(id)sender;
- (IBAction)Add:(id)sender;
- (IBAction)Equals:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *Numbers;

@end

