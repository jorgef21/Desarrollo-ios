//
//  MODetalleViewController.m
//  EjemploModal
//
//  Created by Jorge Flores on 3/13/14.
//  Copyright (c) 2014 Iniciales. All rights reserved.
//

#import "MODetalleViewController.h"

@interface MODetalleViewController ()

@end

@implementation MODetalleViewController

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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@synthesize delegate;
-(IBAction)done:(id)sender{
    [self.delegate AlumnoDetallesViewControllerDelegateSave:self];
    
}
-(IBAction)cancel:(id)sender{
    [self.delegate AlumnoDetallesViewControllerDelegateCancel:self];
}

@end
