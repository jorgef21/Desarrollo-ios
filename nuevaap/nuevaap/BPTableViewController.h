//
//  BPTableViewController.h
//  nuevaap
//
//  Created by Jorge Flores on 6/3/14.
//  Copyright (c) 2014 jorgeF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BPTableViewController : UITableViewController

@property (copy) NSMutableArray *ciudades;
-(void)obtejerJson;
@end
