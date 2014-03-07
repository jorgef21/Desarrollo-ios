//
//  main.m
//  ejercicio5
//
//  Created by Jorge Flores on 2/12/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "conversiones.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
      
        conversiones *g=[[conversiones alloc]initConCentigrados:100];
        
        NSLog(@"Grados centigrados %d",g.centi);
        NSLog(@"Equivale a Faharenheit: %f",g.fare);
        NSLog(@"Equivale a Kelvin %f",g.kelvin);
        NSLog(@"f %f",g.fare);
    
        
    }
    return 0;
}

