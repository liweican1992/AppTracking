//
//  RootViewControll.m
//  AppTracking
//
//  Created by CC on 17/1/16.
//  Copyright (c) 2017年 cc412. All rights reserved.
//

#import "RootViewControll.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVKit/AVKit.h>
static NSString *token;
@interface RootViewControll ()
@end
typedef int (^GlobalBlock)(int, int,NSString *);
@implementation RootViewControll

- (void)viewDidLoad{
    [super viewDidLoad];
}

/**
 *  静态TableView 并且Cell跳转用的是Segue 需要实现didSelectRowAtIndexPath:: 方法才能拦截
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //nothing
}
@end
