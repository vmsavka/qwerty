//
//  BNRAddViewController.m
//  qwerty
//
//  Created by Oleksiy on 8/1/14.
//  Copyright (c) 2014 Oleksiy. All rights reserved.
//

#import "BNRAddViewController.h"

@interface BNRAddViewController ()

@end

@implementation BNRAddViewController

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
- (IBAction)addCity:(id)sender {
    
    NSNumber * lat = [NSNumber numberWithDouble:[self.latitudeLabel.text doubleValue]];
    NSNumber * lon = [NSNumber numberWithDouble:[self.longitudeLabel.text doubleValue]];
    NSString * str = self.search.text;
    NSDictionary * city = [[NSDictionary alloc] initWithObjectsAndKeys:str,@"city",lat,@"lat",lon,@"long", nil];
    [self.delegate AddViewController:self didAddCity:city];
}

@end
