//
//  MODetalleViewController.h
//  EjemploModalIntento2
//
//  Created by Jorge Flores on 3/28/14.
//  Copyright (c) 2014 Iniciales. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MODetalleViewController;
@protocol AlumnoDetallesViewControllerDelegate <NSObject>

-(void)AlumnoDetallesViewControllerDelegateDidSave:(MODetalleViewController *) controller;
-(void)AlumnoDetallesViewControllerDelegateDidCancel:(MODetalleViewController *)controller;

@end

@interface MODetalleViewController : UITableViewController
@property (nonatomic,weak)id<AlumnoDetallesViewControllerDelegate> delegate;
-(IBAction)done:(id)sender;
-(IBAction)cancel:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *nombre;

@end
