//
//  ViewController.h
//  student datail
//
//  Created by Hibrise on 25/08/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "details.h"

@interface ViewController : UIViewController
{
    int tot,avg;
}
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *mark1;
@property (weak, nonatomic) IBOutlet UITextField *mark2;
@property (weak, nonatomic) IBOutlet UITextField *mark3;
@property (weak, nonatomic) IBOutlet UITextField *mark4;
@property (weak, nonatomic) IBOutlet UITextField *mark5;
@property (weak, nonatomic) IBOutlet UILabel *total;
@property (weak, nonatomic) IBOutlet UILabel *average;
@property (strong,nonatomic) NSMutableArray *report;
- (IBAction)save:(id)sender;
- (IBAction)calc:(id)sender;
- (IBAction)view:(id)sender;

@end
