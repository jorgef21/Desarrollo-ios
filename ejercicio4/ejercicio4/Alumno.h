//
//  Alumno.h
//  ejercicio4
//
//  Created by Jorge Flores on 2/9/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Alumno : NSObject{
    int _calif;
    NSString *_estado;
}
@property int Calif;


-(void)setCalif:(int)calif;
-(int)calif;
-(NSString*)estado;

@end
