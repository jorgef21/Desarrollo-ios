//
//  main.m
//  ejercico3
//
//  Created by Jorge Flores on 2/7/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "persona.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        persona *p=[[persona alloc]init];
       // [p ponleEdad:7];
        //NSLog(@"La edad es %d",[p valoerEdad]);
        p.edad=18;
        NSLog(@"la edad es %d",p.edad);
        NSLog(@"la edad en meses es %d",p.meses);
    }
    return 0;
}

