//
//  CAEstadosViewController.m
//  controleespeciales
//
//  Created by Jorge Flores on 3/5/14.
//  Copyright (c) 2014 Jorge Flores. All rights reserved.
//

#import "CAEstadosViewController.h"
#import "CACiudadesViewController.h"

@interface CAEstadosViewController ()

@end

@implementation CAEstadosViewController
NSArray* estados;
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

  estados=[NSArray arrayWithObjects:[NSArray arrayWithObjects:@"Sinaloa",@"Los Mochis",@"Culiacan",@"Mazatlan", nil],
           [NSArray arrayWithObjects:@"Sonora",@"Obregon",@"Hermosillo",@"Nogales", nil],[NSArray arrayWithObjects:@"Chihuaha",@"Chihuahua",@"Parral",@"Ciudad Juarez", nil],nil];
}
-(void)viewDidUnload{
    estados=nil;
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [estados count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Estado";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text=[[estados objectAtIndex:indexPath.row]objectAtIndex:0];
    return cell;
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
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
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


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"MuestraDetalle"]){
        NSIndexPath *selectedRowIndex=[self.tableView indexPathForSelectedRow];
        CACiudadesViewController *detailViewController=[segue destinationViewController];
        detailViewController.ciudades=[[estados objectAtIndex:selectedRowIndex.row]subarrayWithRange:NSMakeRange(1,[estados count]-1)];
    }
    
}

 

@end
