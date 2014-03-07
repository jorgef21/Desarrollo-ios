//
//  Jugador.m
//  ejercicio1
//
//  Created by Jorge Flores on 2/5/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "Jugador.h"
#import <Foundation/Foundation.h>


@implementation Jugador

-(id)init{
    return [self initconNumero:5 yconPosicion:0];
}





-(id)initConNumero:(int)num{
    return [self initconNumero:num yconPosicion:0];
}

-(id)initConPosicion:(int)pos{
    return [self initconNumero:5 yconPosicion:pos];
}


-(id)initconNumero:(int)num yconPosicion:(int)pos{
    id obj=[super init];
    if(obj){
        numero=num;
        posicion=pos;
    }
    return obj;
}

-(void)imprimeNumero{
    NSLog(@"El numero es %d",numero);
    if(posicion==0||posicion==1||posicion==2||posicion==3){
    switch (posicion) {
        case 0:
            NSLog(@"La posicion es portero");
            break;
        case 1:
            NSLog(@"La posicion es defensa");
            break;
        case 2:
            NSLog(@"La posicion es medio");
            break;
        case 3:
            NSLog(@"La posicion es delantero");
            break;
        
    }
    }else{
        NSLog(@"La posicion no existe");
    }
}



@end
