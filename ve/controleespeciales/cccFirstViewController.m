//
//  cccFirstViewController.m
//  controleespeciales
//
//  Created by Jorge Flores on 3/4/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "cccFirstViewController.h"

@interface cccFirstViewController ()

@end

@implementation cccFirstViewController
NSArray *unidades;
int tipoDeUnidades=0;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
	unidades=[NSArray arrayWithObjects:[NSArray arrayWithObjects:@"Longitud",@"Centimetros",@"Metro",@"Kilometro",@"pie", nil],[NSArray arrayWithObjects:@"Area",@"Hectareas",@"Metros cuadradps", nil],[NSArray arrayWithObjects:@"volumen",@"Litros",@"metros cubicos", nil],nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidUnload{
    unidades=nil;
    [super viewDidUnload];
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component==0)
        return [unidades count];
    
    return [[unidades objectAtIndex:tipoDeUnidades]count]-1;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component==0)
        if(tipoDeUnidades!=row){
            tipoDeUnidades=row;
            [pickerView reloadComponent:1];
        }
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component==0)
        return [[unidades objectAtIndex:row]objectAtIndex:0];
    return [[unidades objectAtIndex:tipoDeUnidades]objectAtIndex:row+1];
}
@end
