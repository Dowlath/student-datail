//
//  ViewController.m
//  student datail
//
//  Created by Hibrise on 25/08/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "details.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize name,mark1,mark2,mark3,mark4,mark5,total,average,report;

- (void)viewDidLoad
{
    [super viewDidLoad];
    report=[[NSMutableArray alloc]init];
    details *obj=[[details alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}
- (IBAction)save:(id)sender
{
    details *obj=[[details alloc]init];
    obj.name=name.text;
    obj.marks=[[NSMutableArray alloc]init];
//    [obj.marks addObject:mark1.text];
//     [obj.marks addObject:mark2.text];
//     [obj.marks addObject:mark3.text];
//     [obj.marks addObject:mark4.text];
//     [obj.marks addObject:mark5.text];
//    [obj.marks addObject:total.text];
//    [obj.marks addObject:average.text];
   obj.mark1=mark1.text;
   obj.mark2=mark2.text;
   obj.mark3=mark3.text;
    obj.mark4=mark4.text;
   obj.mark5=mark5.text;
    obj.total=total.text;
   obj.average=average.text;
    [report addObject:obj];

    
    
}
- (IBAction)calc:(id)sender
{
    int input1,input2,input3,input4,input5;
    float avg;
    input1=[[mark1 text]intValue];
     input2=[[mark2 text]intValue];
     input3=[[mark3 text]intValue];
     input4=[[mark4 text]intValue];
     input5=[[mark5 text]intValue];
    tot=input1+input2+input3+input4+input5;
    avg=tot/5;
    [total setText:[NSString stringWithFormat:@"%d",tot]];
    [average setText:[NSString stringWithFormat:@"%f",avg]];
    }
- (IBAction)view:(id)sender
{
    //TableViewController *tab=[[TableViewController alloc]init];
    
    
}


@end
