//
//  ListViewController.m
//  EllipsisLoadingViewDemo
//
//  Created by Odie Edo-Osagie on 09/06/2015.
//  Copyright (c) 2015 Odie Edo-Osagie. All rights reserved.
//

#import "ListViewController.h"
#import "EllipsesLoadingView.h"

@interface ListViewController (){
    EllipsesLoadingView *loadingView;
}

@end

@implementation ListViewController


#pragma mark - View LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];

    _listItems = [NSMutableArray arrayWithArray:@[@"Anakin Skywalker", @"Obi-Wan Kenobi", @"Mace Windu", @"Ki-Adi Mundi", @"Aayla Secura", @"Qui-Gon Jinn", @"Anakin Skywalker", @"Obi-Wan Kenobi", @"Mace Windu", @"Ki-Adi Mundi", @"Aayla Secura", @"Qui-Gon Jinn", @"Anakin Skywalker", @"Obi-Wan Kenobi", @"Mace Windu", @"Ki-Adi Mundi", @"Aayla Secura", @"Qui-Gon Jinn", @"Anakin Skywalker", @"Obi-Wan Kenobi", @"Mace Windu", @"Ki-Adi Mundi", @"Aayla Secura", @"Qui-Gon Jinn"]];
    
    _imageItems = [NSMutableArray arrayWithArray:@[@"skywalker.jpg", @"kenobi.jpg", @"windu.jpg", @"mundi.jpg", @"secura.jpg", @"jinn.jpg", @"skywalker.jpg", @"kenobi.jpg", @"windu.jpg", @"mundi.jpg", @"secura.jpg", @"jinn.jpg", @"skywalker.jpg", @"kenobi.jpg", @"windu.jpg", @"mundi.jpg", @"secura.jpg", @"jinn.jpg", @"skywalker.jpg", @"kenobi.jpg", @"windu.jpg", @"mundi.jpg", @"secura.jpg", @"jinn.jpg"]];
    
    loadingView = [[EllipsesLoadingView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    loadingView.center = self.view.center;
    [[[UIApplication sharedApplication] keyWindow] addSubview:loadingView];
    loadingView.animationSpeed = 10;
    loadingView.layer.cornerRadius = 5.0;
    loadingView.backgroundColor = [UIColor darkGrayColor];
    loadingView.alpha = 0.4;
    loadingView.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [_listItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = _listItems[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:_imageItems[indexPath.row]];
    
    return cell;
}

#pragma mark - IBActions

- (IBAction)rightBarButtonPressed:(id)sender {
    loadingView.hidden = NO;
    [loadingView startLoadingIndicator];
}
@end
