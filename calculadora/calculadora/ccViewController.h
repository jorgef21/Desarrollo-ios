//
//  ccViewController.h
//  calculadora
//
//  Created by Jorge Flores on 2/19/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ccViewController : UIViewController{
    float resultado;
    IBOutlet UILabel *pantalla;
    
    int currentOperation;
    int currentNumber;
}

-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)cancelInput;
-(IBAction)cancelOperation;



@end
