//
//  ccViewController.h
//  practica4
//
//  Created by Jorge Flores on 2/18/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ccViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *texto;
@property (weak, nonatomic) IBOutlet UILabel *etiqueta;
- (IBAction)procesarinformacion:(id)sender;
- (IBAction)click:(id)sender;

@end
