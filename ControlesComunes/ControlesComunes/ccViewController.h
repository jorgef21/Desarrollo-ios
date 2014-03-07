//
//  ccViewController.h
//  ControlesComunes
//
//  Created by Jorge Flores on 2/18/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ccViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *texto;
@property (strong, nonatomic) IBOutlet UILabel *etiqueta;
- (IBAction)procesarinformacion:(id)sender;

@end
