//
//  AcknowledgementsViewController.m
//  ZinniaSample
//
//  Created by Morten Bertz on 3/4/15.
//  Copyright (c) 2015 Morten Bertz. All rights reserved.
//

#import "AcknowledgementsViewController.h"

@interface AcknowledgementsViewController ()

@end

@implementation AcknowledgementsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BOOL on=[[NSUserDefaults standardUserDefaults]boolForKey:@"autoLookup"];
    [self.autoLookupSwitch setOn:on animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)dismiss:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


-(IBAction)switchToggled:(id)sender{
    UISwitch *lookupSwitch=sender;
    
    [[NSUserDefaults standardUserDefaults]setBool:lookupSwitch.on forKey:@"autoLookup"];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
