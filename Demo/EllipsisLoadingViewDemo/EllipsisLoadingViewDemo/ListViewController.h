//
//  ListViewController.h
//  EllipsisLoadingViewDemo
//
//  Created by Odie Edo-Osagie on 09/06/2015.
//  Copyright (c) 2015 Odie Edo-Osagie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *listItems;
@property (nonatomic, strong) NSMutableArray *imageItems;

- (IBAction)rightBarButtonPressed:(id)sender;


@end
