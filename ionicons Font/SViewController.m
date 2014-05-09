//
//  SViewController.m
//  ionicons Font
//
//  Created by shelley on 14-1-12.
//  Copyright (c) 2014 sanfriend.com.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//


#import "SViewController.h"
#import "IonIconsKit.h"


#define SD_SCREEN_WIDTH 	[[UIScreen mainScreen] bounds].size.width
#define SD_SCREEN_HEIGHT 	([[UIDevice currentDevice].systemVersion hasPrefix:@"7"] ? ([[UIScreen mainScreen] bounds].size.height) : ([[UIScreen mainScreen] bounds].size.height - 20))
#define SD_TOP_PADDING   	([[UIDevice currentDevice].systemVersion hasPrefix:@"7"] ? 24.f : 4.f)


@interface SViewController ()

@end

@implementation SViewController

@synthesize tableView = _tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *fontName = [[UILabel alloc] initWithFrame:CGRectMake(0, SD_TOP_PADDING + 5, SD_SCREEN_WIDTH, 30)];
    fontName.textAlignment = NSTextAlignmentCenter;
    fontName.text = @"ionicons Font List";
    [self.view addSubview:fontName];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,
                                                                   SD_TOP_PADDING + 40,
                                                                   SD_SCREEN_WIDTH,
                                                                   SD_SCREEN_HEIGHT-SD_TOP_PADDING-40)];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return IonIconXbox + 2;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 47;
}

- (UITableViewCell *)tableView:(UITableView *)theTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HistCell"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    if (indexPath.row > 0) // text label
    {
        NSString *iconName = [NSString nameForIonIcon:indexPath.row];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(30, 5, 290, 36)];
        label.textColor = [self getRandomColor];

        label.text = [NSString stringWithFormat:@"%@ %@",[NSString stringWithIonIcon:indexPath.row], iconName];
        label.font = [UIFont ioniconsFontOfSize:20.f];
        
        [cell.contentView addSubview:label];
    }
    else // spinner label
    {
        // loading a
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 5, 36, 36)];
        label.textColor = [self getRandomColor];
        label.text = [NSString stringWithIonIcon:IonIconLoadA];
        label.font = [UIFont ioniconsFontOfSize:38.f];
        [label runSpinnerViewWithDuration:20.f]; // in seconds
        [cell.contentView addSubview:label];
        
        // loading b
        UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(110, 5, 36, 36)];
        label2.textColor = [self getRandomColor];
        label2.text = [NSString stringWithIonIcon:IonIconLoadB];
        label2.font = [UIFont ioniconsFontOfSize:38.f];
        [label2 runSpinnerViewWithDuration:90.f];
        [cell.contentView addSubview:label2];
        
        // loading c
        UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(170, 5, 36, 36)];
        label3.textColor = [self getRandomColor];
        label3.text = [NSString stringWithIonIcon:IonIconLoadC];
        label3.font = [UIFont ioniconsFontOfSize:38.f];
        [label3 runSpinnerViewWithDuration:90.f];
        [cell.contentView addSubview:label3];
        
        // loading d
        UILabel *label4 = [[UILabel alloc] initWithFrame:CGRectMake(230, 5, 36, 36)];
        label4.textColor = [self getRandomColor];
        label4.text = [NSString stringWithIonIcon:IonIconLoadD];
        label4.font = [UIFont ioniconsFontOfSize:38.f];
        [label4 runSpinnerViewWithDuration:90.f];
        [cell.contentView addSubview:label4];
    }
    
    
    return cell;
}

- (UIColor *) getRandomColor
{
    NSArray *colors = [[NSArray alloc] initWithObjects:
                       [UIColor colorWithRed:0.72 green:0.28 blue:0.74 alpha:1.0f],
                       [UIColor colorWithRed:0.83 green:0.33 blue:0.23 alpha:1.0f],
                       [UIColor colorWithRed:0.53 green:0.76 blue:0.30 alpha:1.0f],
                       [UIColor colorWithRed:0.23 green:0.70 blue:0.32 alpha:1.0f],
                       [UIColor colorWithRed:0.65 green:0.25 blue:0.63 alpha:1.0f],
                       [UIColor colorWithRed:0.50 green:0.12 blue:0.14 alpha:1.0f],
                       [UIColor colorWithRed:0.21 green:0.47 blue:0.87 alpha:1.0f],
                       [UIColor colorWithRed:0.30 green:0.66 blue:0.81 alpha:1.0f],
                       [UIColor colorWithRed:0.04 green:0.26 blue:0.78 alpha:1.0f],
                       [UIColor colorWithRed:0.11 green:0.67 blue:0.78 alpha:1.0f],
                       [UIColor colorWithRed:0.19 green:0.62 blue:0.70 alpha:1.0f],
                       [UIColor colorWithRed:0.15 green:0.58 blue:0.03 alpha:1.0f],
                       [UIColor colorWithRed:0.18 green:0.46 blue:0.78 alpha:1.0f],
                       [UIColor colorWithRed:0.21 green:0.61 blue:0.87 alpha:1.0f],
                       [UIColor colorWithRed:0.56 green:0.24 blue:0.02 alpha:1.0f],
                       [UIColor colorWithRed:0.93 green:0.17 blue:0.45 alpha:1.0f],
                       [UIColor colorWithRed:0.97 green:0.16 blue:0.29 alpha:1.0f],
                       [UIColor colorWithRed:0.23 green:0.26 blue:0.63 alpha:1.0f],
                       [UIColor colorWithRed:0.01 green:0.65 blue:0.13 alpha:1.0f],
                       [UIColor colorWithRed:0.10 green:0.48 blue:0.27 alpha:1.0f],
                       [UIColor colorWithRed:0.79 green:0.39 blue:0.14 alpha:1.0f],
                       [UIColor colorWithRed:0.01 green:0.70 blue:0.89 alpha:1.0f],
                       [UIColor colorWithRed:0.51 green:0.51 blue:0.51 alpha:1.0f],
                       [UIColor colorWithRed:0.80 green:0.80 blue:0.80 alpha:1.0f],
                       [UIColor colorWithRed:0.40 green:0.40 blue:0.40 alpha:1.0f],
                       [UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.0f],
                       nil];
    
    return [colors objectAtIndex:rand()%colors.count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
