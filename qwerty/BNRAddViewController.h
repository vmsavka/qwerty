//
//  BNRAddViewController.h
//  qwerty
//
//  Created by Oleksiy on 8/1/14.
//  Copyright (c) 2014 Oleksiy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRCity;
@class BNRAddViewController;

@protocol BNRAddViewControllerDelegate <NSObject>

- (void)AddViewController:(BNRAddViewController *)controller didAddCity:(NSDictionary *)city;

@end

@interface BNRAddViewController : UIViewController

@property (nonatomic, weak) id <BNRAddViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UISearchBar *search;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *adButton;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;

@end
