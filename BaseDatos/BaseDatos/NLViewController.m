//
//  NLViewController.m
//  BaseDatos
//
//  Created by Jorge Flores on 4/2/14.
//
//

#import "NLViewController.h"

@interface NLViewController ()

@end

@implementation NLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self copiaBD];
}

-(void)copiaBD{
    NSString* documentsPath=[NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory,NSUserDomainMask,YES)objectAtIndex:0];
    NSString *rutaResource=[[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"mibd"];
    NSFileManager *administradorArchivos=[NSFileManager defaultManager];
    
    NSError *error=nil;
    if(![administradorArchivos copyItemAtPath:rutaResource toPath:bd error:error:&error]){
        UIAlertView *mensajeError=[[UIAlertView alloc]initWithTitle:@"!Cuiudado¡" message:@"No puede copiar la bd" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [mensajeError show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
