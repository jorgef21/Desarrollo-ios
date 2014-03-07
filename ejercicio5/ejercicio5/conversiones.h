//
//  conversiones.h
//  ejercicio5
//
//  Created by Jorge Flores on 2/12/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface conversiones : NSObject{
    int _centi;
    double _fare;
    double _kelvin;
}
@property double fare;
@property double kelvin;
@property int centi;

-(id)initConCentigrados:(int)cent;
-(void)setFare:(double)fare;
-(void)setKelvin:(double)kelvin;
-(void)setCenti:(int)centi;

-(double)kelvin;
-(double)fare;

-(void)imprime;

@end
