//
//  juego.m
//  ejercicio2
//
//  Created by Jorge Flores on 2/7/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "juego.h"

@implementation juego


-(id)init{
    return [self initconnumeros:1 yeste:5.0 yconletras:@"cartas" yesta:@"poker"];
}
-(id)initConNumeros:(int)num yeste:(int)tiempo{
    return [self initconnumeros:num yeste:tiempo yconletras:@"cartas" yesta:@"poker"];
}
-(id)initConLetras:(NSString *)tipode yesta:(NSString *)nombredejuego{
    return [self initconnumeros:1 yeste:5.0 yconletras:tipode yesta:nombredejuego];
}

-(id)initconnumeros:(int)num yeste:(int)tiempo yconletras:(NSString *)tipode yesta:(NSString *)nombredejuego{
    id obj=[super init];
    
    if(obj){
        nj=num;
        timea=tiempo;
        tipo=tipode;
        nombrejuego=nombredejuego;
    }
    
    
    return obj;
}

-(void)imprime{
    NSLog(@"El numero de jugadores es %d",nj);
    NSLog(@"El tipo de juego es %@",tipo);
    NSLog(@"El tiempo aprox es %f",timea);
    NSLog(@"El nombre del juego es %@",nombrejuego);
}



@end
