//
//  main.m
//  ejercicio4
//
//  Created by Jorge Flores on 2/9/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Alumno.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Alumno *obj=[[Alumno alloc]init];
        obj.calif=11;
        
        NSLog(@"La calificacion es:  %d",obj.calif);
        NSLog(@"El estado de el alumno es: %@",obj.estado);
    
        
        
    }
    return 0;
}

