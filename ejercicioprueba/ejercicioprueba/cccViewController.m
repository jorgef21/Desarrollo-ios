//
//  cccViewController.m
//  ejercicioprueba
//
//  Created by Jorge Flores on 2/27/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "cccViewController.h"

@interface cccViewController ()

@end

@implementation cccViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@synthesize texto;
@synthesize texto2;
@synthesize etiqueta;
- (IBAction)procesar:(id)sender {
    
    
    int x=texto.text;
    int y=texto2.text;
    
    int suma=x+y;
    
    etiqueta.text=[NSString stringWithFormat:@"%d",suma];
    
    
    
    
    
    
}
@end
