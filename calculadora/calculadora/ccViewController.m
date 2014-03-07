//
//  ccViewController.m
//  calculadora
//
//  Created by Jorge Flores on 2/19/14.
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

-(IBAction)buttonDigitPressed:(id)sender{
    currentNumber = currentNumber *10 + (int)[sender tag] ;
    //imprimir en pantalla
    pantalla.text = [NSString stringWithFormat:@"%d",currentNumber];
}

//generar funciones de calculadora

-(IBAction)buttonOperationPressed:(id)sender{
    if (currentOperation == 0) resultado = currentNumber;
    else{
        switch (currentOperation) {
            case 1 :
                resultado = resultado + currentNumber;
                break;
            case 2 :
                resultado = resultado - currentNumber;
                break;
            case 3 :
                resultado = resultado * currentNumber;
                break;
            case 4 :
                if(currentNumber!=0){
                resultado = resultado / currentNumber;
                }
                else{
                    resultado=0;
                    
                }
                break;
            case 5 :
                currentNumber=0;
                break;
        }
    }
    currentNumber = 0;
    
    pantalla.text = [NSString stringWithFormat:@"%.2f",resultado];
    //creamos esta función para saber si se a ingresado un cero en nuestra funcion
    if ([sender tag]==0) resultado =0;
    currentOperation = [sender tag];
    
    
}
// esta es la función para el boton c que seteara nuestra calculadora
-(IBAction) cancelInput{
    currentNumber = 0;
    pantalla.text=@"0";
}
// esta es la función para el boton c que seteara las funciones de nuestra calculadora
-(IBAction)cancelOperation{
    currentNumber =0;
    pantalla.text = @"0";
    currentOperation=0;
}
@end
