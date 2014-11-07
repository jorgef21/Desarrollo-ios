//
//  CAEstadosViewController.h
//  controleespeciales
//
//  Created by Jorge Flores on 3/5/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CAEstadosViewController : UITableViewController

-(void)parsear:(NSData *)urlData;
//@property estados;
-(void)generarJSON:(id)sender;
@end
