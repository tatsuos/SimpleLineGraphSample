//
//  graphView.h
//  BEMSimpleLineGraphSample
//
//  Created by Tatsuo SAEKI on 2015/01/26.
//  Copyright (c) 2015年 Tatsuo SAEKI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BEMSimpleLineGraphDelegate.h"

@interface GraphView : UIView

@property (weak, nonatomic) IBOutlet BEMSimpleLineGraphView *_bemGraph;

@end
