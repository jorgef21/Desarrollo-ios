//
//  persona.h
//  ejercico3
//
//  Created by Jorge Flores on 2/7/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface persona : NSObject{
    int _edad;
}
@property int edad;
@property (readonly)int meses;
@property int chocolate;
-(void)setEdad:(int)n;
-(int)edad;
-(int)meses;
@end
