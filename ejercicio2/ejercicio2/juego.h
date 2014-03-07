//
//  juego.h
//  ejercicio2
//
//  Created by Jorge Flores on 2/7/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

@interface juego : NSObject{
    int nj;
    NSString *tipo;
    float timea;
    NSString *nombrejuego;
}
-(id)init;
-(id)initConNumeros:(int)num yeste:(int)tiempo;
-(id)initConLetras:(NSString*)tipode yesta:(NSString*)nombredejuego;
-(id)initconnumeros:(int)num yeste:(int)timmpo yconletras:(NSString*)tipode yesta:(NSString*)nombredejuego;
-(void)imprime;
@end
