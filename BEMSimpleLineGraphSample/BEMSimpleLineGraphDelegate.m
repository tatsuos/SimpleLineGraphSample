//
//  BEMSimpleLineGraphDelegate.m
//  BEMSimpleLineGraphSample
//
//  Created by Tatsuo SAEKI on 2015/01/26.
//  Copyright (c) 2015年 Tatsuo SAEKI. All rights reserved.
//

#import "BEMSimpleLineGraphDelegate.h"

@implementation BEMSimpleLineGraphDelegate


#pragma mark SimpleLineGraph Data Source

// グラフに表示するポイント数
- (NSInteger)numberOfPointsInLineGraph:(BEMSimpleLineGraphView *)graph {
    return self.vales.count;
}

// 各ポイントの値
- (CGFloat)lineGraph:(BEMSimpleLineGraphView *)graph valueForPointAtIndex:(NSInteger)index {
    return [[self.vales objectAtIndex:index] floatValue];
}

// ラベル
- (NSString *)lineGraph:(BEMSimpleLineGraphView *)graph labelOnXAxisForIndex:(NSInteger)index {
    NSString *label = [self.labels objectAtIndex:index];
    return [label stringByReplacingOccurrencesOfString:@" " withString:@"\n"];
}

#pragma mark -
#pragma mark SimpleLineGraph Delegate
// ラベルの表示スキップ数
- (NSInteger)numberOfGapsBetweenLabelsOnLineGraph:(BEMSimpleLineGraphView *)graph {
    return 2;
}

- (NSInteger)numberOfYAxisLabelsOnLineGraph:(BEMSimpleLineGraphView *)graph {
    return 3;
}

- (void)lineGraph:(BEMSimpleLineGraphView *)graph didTouchGraphWithClosestIndex:(NSInteger)index {
    NSLog(@"lineGraph:(BEMSimpleLineGraphView *)graph didTouchGrapWithClosesstIndex:(NSInteger)index");
}

- (void)lineGraph:(BEMSimpleLineGraphView *)graph didReleaseTouchFromGraphWithClosestIndex:(CGFloat)index {
    NSLog(@"lineGraph:(BEMSimpleLineGraphView *)graph didReleaseTouchFromGraphWithClosestIndex:(CGFloat)index");
}

- (void)lineGraphDidBeginLoading:(BEMSimpleLineGraphView *)graph {
    NSLog(@"lineGraphDidBeginLoading:(BEMSimpleLineGraphView *)graph");
}

- (void)lineGraphDidFinishLoading:(BEMSimpleLineGraphView *)graph {
    NSLog(@"lineGraphDidFinishLoading:(BEMSimpleLineGraphView *)graph");
}


@end
