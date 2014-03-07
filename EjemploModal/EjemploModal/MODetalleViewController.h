//
//  MODetalleViewController.h
//  EjemploModal
//
//  Created by Jorge Flores on 3/7/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MODetalleViewController;
@protocol AlumnoDetallesViewControllerDelegate <NSObject>

-(void)AlumnoDetallesViewControllerDelegateDidSave:(MODetalleViewController *) controller;
-(void)AlumnoDetallesViewControllerDelegateDidCancel:(MODetalleViewController *)controller;

@end


@interface MODetalleViewController : UITableViewController <AlumnoDetallesViewControllerDelegate>

@property (nonatomic,weak)id <AlumnoDetallesViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;

- (IBAction)done:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nombre;

@end
