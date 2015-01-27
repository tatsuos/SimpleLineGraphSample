//
//  BEMSimpleLineGraphDelegate.h
//  BEMSimpleLineGraphSample
//
//  Created by Tatsuo SAEKI on 2015/01/26.
//  Copyright (c) 2015年 Tatsuo SAEKI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BEMSimpleLineGraphView.h>

@interface BEMSimpleLineGraphDelegate : NSObject<BEMSimpleLineGraphDataSource, BEMSimpleLineGraphDelegate>

@property NSMutableArray *vales;
@property NSMutableArray *labels;

@end
