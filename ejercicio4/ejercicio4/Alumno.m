//
//  Alumno.m
//  ejercicio4
//
//  Created by Jorge Flores on 2/9/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "Alumno.h"

@implementation Alumno

-(void)setCalif:(int)calif{
    
if (calif>=0&&calif<=10){
        _calif=calif;
    
    if(calif>=7){
        _estado=@"Aprobado";
    }
    else {
        _estado=@"Reprobado";
    }
    }
    else{
        NSLog(@"Introduzca un acalificacion valida");
        _estado=@"Estado desconocido";
    }
 
}

-(int)calif{
    return _calif ;
}

-(NSString *)estado{
 
    return _estado;
}


@end
