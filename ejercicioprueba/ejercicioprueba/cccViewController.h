//
//  cccViewController.h
//  ejercicioprueba
//
//  Created by Jorge Flores on 2/27/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cccViewController : UIViewController
- (IBAction)procesar:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *texto;
@property (weak, nonatomic) IBOutlet UITextField *texto2;
@property (weak, nonatomic) IBOutlet UILabel *etiqueta;

@end
