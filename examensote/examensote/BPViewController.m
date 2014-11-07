//
//  BPViewController.m
//  examensote
//
//  Created by Jorge Flores on 6/3/14.
//  Copyright (c) 2014 jorgeF. All rights reserved.
//

#import "BPViewController.h"

@interface BPViewController ()

@end

@implementation BPViewController
-(void)obtejerJson{
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfiguration.HTTPAdditionalHeaders=@{@"Accept"  :   @"application/json"};
    NSURLSession *session= [NSURLSession sessionWithConfiguration:sessionConfiguration];
    NSURL *url =[NSURL URLWithString:@"http://www.photowe.com.mx/ciudades.php"];
    
    NSURLSessionDataTask *datatask= [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSHTTPURLResponse *HTTPResponse=(NSHTTPURLResponse *)response;
        if(HTTPResponse.statusCode==200){
            
            
            if (!error) {
                NSError *JSONError;
                NSMutableDictionary *json =[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
                
                if (!JSONError) {
                    self.ciudades =[[NSMutableArray alloc]initWithObjects:json[@"Ciudades"], nil];
                    dispatch_async(dispatch_get_main_queue(),^{
                        [self.tableView reloadData];
                    }
                                   );
                }
                else{
                    NSAssert(NO,@"Error en la conversion");
                }
            } else{
                NSAssert(NO,@"Error al obtener las notas del servidor");
                
            }
        }
        
        
    }];
    [datatask resume];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
