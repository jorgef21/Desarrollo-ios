//
//  MOTableViewControllerAlumnos.m
//  EjemploModal
//
//  Created by Jorge Flores on 3/7/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "MOTableViewControllerAlumnos.h"

@interface MOTableViewControllerAlumnos ()



@end

@implementation MOTableViewControllerAlumnos

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


- (IBAction)cancel:(id)sender {
}

- (IBAction)done:(id)sender {
}
#pragma mark Protocolo de detalle
-(void)AlumnoDetallesViewControllerDelegateDidSave:(MODetalleViewController *) controller{

}
@end
