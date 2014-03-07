//
//  main.m
//  ejercicio1
//
//  Created by Jorge Flores on 2/5/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jugador.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Jugador *j=[[Jugador alloc]initconNumero:6 yconPosicion:0];
        //Jugador *jjj=[[Jugador alloc]initSinParametros];
        //Jugador *jj=[[Jugador alloc]initConNumero:8];
       
        [j imprimeNumero];
        
    
        
        
    }
    return 0;
}

