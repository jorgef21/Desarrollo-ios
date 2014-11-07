//
//  dado.h
//  akinomas
//
//  Created by Jorge Flores on 5/12/14.
//  Copyright (c) 2014 jorgeF. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BPMAteriales.h"

@interface dado : UITableViewController

@property int valor;
@property materiales material;

-(id)initWhitMaterial;



@end



//se tiene que hacer clic en cualquier coordenada para comprometer en el index al objeto que prometo se tienen que formar
// 4 dados en cualquier forma de  el plano existente con las coordenadas de referencia de el primer dado.