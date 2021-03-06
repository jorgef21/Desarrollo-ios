//
//  MOTableViewControllerAlumnos.m
//  EjemploModalIntento2
//
//  Created by Jorge Flores on 3/28/14.
//  Copyright (c) 2014 Iniciales. All rights reserved.
//

#import "MOTableViewControllerAlumnos.h"

@interface MOTableViewControllerAlumnos ()

@end

@implementation MOTableViewControllerAlumnos
NSMutableArray *alumnos;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    alumnos =[NSMutableArray array];

}
-(void)viewDidUnload{
    [super viewDidUnload];
    alumnos=nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

   
    return [alumnos count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
static NSString *CellIdentifier=@"Alumno";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell.textLabel.text=[alumnos objectAtIndex:indexPath.row];
    return cell;
}

#pragma Protocolo de detalle
-(void)AlumnoDetallesViewControllerDelegateDidSave:(MODetalleViewController *) controller{
    [self dismissViewControllerAnimated:YES completion:nil];
    [alumnos addObject:controller.nombre.text];
    [self.tableView reloadData];
}
-(void)AlumnoDetallesViewControllerDelegateDidCancel:(MODetalleViewController *)controller{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"transicion"]){
        UINavigationController *navigationController=segue.destinationViewController;
        MODetalleViewController *moDetalleViewController=[[navigationController viewControllers]objectAtIndex:0];
        moDetalleViewController.delegate=self;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
