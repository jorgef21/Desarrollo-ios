//
//  conversiones.m
//  ejercicio5
//
//  Created by Jorge Flores on 2/12/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "conversiones.h"


@implementation conversiones


-(id)initConCentigrados:(int)cent{
    self=[super init];
    if(self){
        _centi=cent;
    }
    return self;
}


-(void)setFare:(double)fare{
    _fare=fare;
    return [self setKelvin:fare];
    return [self setCenti:fare];
    
}



-(double)fare{
    return _fare=(1.8)*_centi+32;
}

-(void)setKelvin:(double)kelvin{
    _kelvin=kelvin;
}

-(double)kelvin{
    return _kelvin=_centi+273;
}

-(void)imprime{
    
}




@end
