//
//  Table22ViewController.m
//  student datail
//
//  Created by Hibrise on 27/08/14.
//  Copyright (c) 2014 Hibrise. All rights reserved.
//

#import "Table22ViewController.h"
#import "details.h"
#import "ViewController.h"

@interface Table22ViewController ()
{
    ViewController *obj1;
    Table22ViewController *tab;
}

@end

@implementation Table22ViewController
@synthesize newarray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    obj1=[[ViewController alloc]init];
    
    [super viewDidLoad];
    NSLog(@"%@",newarray);
    //newarray=[NSMutableArray arrayWithArray:obj1.marks];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [newarray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
   cell.textLabel.text = [newarray objectAtIndex:indexPath.row];
    
     
    return cell;
}
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
