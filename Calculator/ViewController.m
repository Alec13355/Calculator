//
//  ViewController.m
//  Calculator
//
//  Created by Alec Harrison on 1/11/17.
//  Copyright © 2017 Alec Harrison. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//Second is random number that probably won't come up normally. Primary is declared operation is declared and prime is assigned as false to begin.
float second =60001;
float primary;
bool prime = false;
int operation = 0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)Clear:(id)sender {
    //Sets all feilds to starting values to reest the program
    second = 60001;
    primary = 0;
    _Numbers.text= @"";
    operation=0;
    prime = false;
}

- (IBAction)Divide:(id)sender {
    //Divides just updates second if first time through.
    primary=[[self.Numbers text] floatValue];
    if(second==60001){
        second=primary;
        
    }
    else{
        second= second/primary;
    }
    _Numbers.text= @"";
    operation=1;
}

- (IBAction)Subtract:(id)sender {
    //Subtracts just updates second if first time.
    primary=[[self.Numbers text] floatValue];
    if(second==60001){
        second=primary;
        
    }
    else{
        second= second- primary;
    }
    _Numbers.text= @"";
    operation=2;
}

- (IBAction)Multiply:(id)sender {
    //Does multiplying updates second if first time through.
    primary=[[self.Numbers text] floatValue];
    if(second==60001){
        second=primary;
        
    }
    else{
        second*= primary;
    }
    _Numbers.text= @"";
    operation=3;
}

- (IBAction)Add:(id)sender {
    //This does the adding Incase it's the first time it only updates the field second.
    primary=[[self.Numbers text] floatValue];
        if(second==60001){
            second=primary;
            
        }
        else{
            second+= primary;
        }
    _Numbers.text= @"";
    operation=4;
}

- (IBAction)Equals:(id)sender {
    //This is being used incase people add only once then want the next number to be added to it.
    primary=[[self.Numbers text] floatValue];
    if(operation==1){
        second = second /primary;
    }
   else if(operation==2){
        second = second -primary;
    }
    else if(operation==3){
        second = second *primary;
    }
    else if(operation==4){
        second = second +primary;
    }
    else{
        
    }
    NSString *Numbers = [NSString stringWithFormat:@"%f",second];
    self.Numbers.text=Numbers;
}

- (IBAction)Prime:(id)sender {
    primary=[[self.Numbers text] floatValue];
    int a = (int)primary;
    bool prime2=false;
    for(int i=2; i <a-1;i++){
        if(a % i==0){
            prime2=true;
        }
    }
    if(prime2==false){
        prime=true;
        NSString *Numbers= @"True";
        self.Numbers.text=Numbers;
    }
    else{
        NSString *Numbers= @"False";
        self.Numbers.text=Numbers;

    }
    
}
@end
