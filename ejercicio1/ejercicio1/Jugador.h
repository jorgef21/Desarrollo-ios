//
//  Jugador.h
//  ejercicio1
//
//  Created by Jorge Flores on 2/5/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "Persona.h"
#import <Foundation/Foundation.h>

@interface Jugador : Persona
{
    int numero;
    int posicion;

    
}
-(id)init;
-(id)initConNumero:(int)num;
-(id)initConPosicion:(int)pos;
-(id)initconNumero:(int)num yconPosicion:(int)pos;
-(void)imprimeNumero;
//-(void)imprimePos;
@end
