//
//  JBStartViewController.m
//  BurbankGameHack
//
//  Created by Joaquin Beltran on 5/3/14.
//  Copyright (c) 2014 Joaquin. All rights reserved.
//

#import "JBStartViewController.h"

@interface JBStartViewController ()
- (IBAction)start:(id)sender;

@end

@implementation JBStartViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)start:(id)sender {
    [self performSegueWithIdentifier:@"start" sender:self];
}

@end
