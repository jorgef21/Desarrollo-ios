//
//  persona.m
//  ejercico3
//
//  Created by Jorge Flores on 2/7/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "persona.h"

@implementation persona

-(void)setEdad:(int)n{
    if(n>=18){
    _edad =n;
    NSLog(@"Estoy poniendole la edad");
    }
    else{
        NSLog(@"Edad no aceptada");
    }
}
-(int)edad{
    return _edad;
}
-(int)meses{
    return _edad*12;
}

@synthesize chocolate;

@end
