//
//  MODetalleViewController.m
//  EjemploModalIntento2
//
//  Created by Jorge Flores on 3/28/14.
//  Copyright (c) 2014 Iniciales. All rights reserved.
//

#import "MODetalleViewController.h"

@interface MODetalleViewController ()

@end

@implementation MODetalleViewController
@synthesize delegate;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)done:(id)sender{
    [self.delegate AlumnoDetallesViewControllerDelegateDidSave:self];
}
-(IBAction)cancel:(id)sender{
    [self.delegate AlumnoDetallesViewControllerDelegateDidCancel:self];
}

@end
