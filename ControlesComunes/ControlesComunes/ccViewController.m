//
//  ccViewController.m
//  ControlesComunes
//
//  Created by Jorge Flores on 2/18/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "ccViewController.h"

@interface ccViewController ()

@end

@implementation ccViewController

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

- (IBAction)procesarinformacion:(id)sender {
    NSUInteger longitud=[_texto.text length];
    NSMutableString *rtr=[NSMutableString stringWithCapacity:longitud];
    rtr=_texto.text;
    _etiqueta.text=rtr;
    
}
@end
