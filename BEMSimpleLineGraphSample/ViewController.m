//
//  ViewController.m
//  BEMSimpleLineGraphSample
//
//  Created by Tatsuo SAEKI on 2015/01/26.
//  Copyright (c) 2015年 Tatsuo SAEKI. All rights reserved.
//

#import "ViewController.h"
#import "GraphView.h"
#import "BEMSimpleLineGraphDelegate.h"

@interface ViewController ()
{
    GraphView *cview;
    
    BEMSimpleLineGraphDelegate *graphDelegate;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    cview = (GraphView *)self.view;
    
    graphDelegate = [[BEMSimpleLineGraphDelegate alloc] init];
    cview._bemGraph.delegate = graphDelegate;
    cview._bemGraph.dataSource = graphDelegate;
 
    // データを作成する
    [self createValues];
}

// 表示前
- (void)viewWillAppear:(BOOL)animated
{
    // グラフの設定
    [self setLineGraphViewOptions];
    // データ表示
    [cview._bemGraph reloadGraph];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)createValues {
    
    graphDelegate.vales = [[NSMutableArray alloc] init];
    graphDelegate.labels = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 9; i++) {
        [graphDelegate.vales addObject:@([self getRandomInteger])];
        [graphDelegate.labels addObject:[NSString stringWithFormat:@"%@", [NSNumber numberWithInt:2000 + i]]];
    }
}

- (NSInteger)getRandomInteger {
    return (int)(arc4random() % 1000);
}


// グラフビューに値をセット
- (void)setLineGraphViewOptions {
    
    // グラフViewの上部の色
    cview._bemGraph.colorTop = [UIColor whiteColor];
    // グラフViewの下部の色
    cview._bemGraph.colorBottom = [UIColor whiteColor];
    // 各ポイントを結んだ線の色(線の色)
    cview._bemGraph.colorLine = [UIColor blackColor];
    
    // 線の透過度
    // グラフ上下の透過度
    // 点の大きさ
    // ラベルの色
    
    // X ラベルの背景色
//    cview._bemGraph.colorBackgroundXaxis = [UIColor blueColor];
    // X ラベルの色
    // X ラベルの背景透過度
    
    
    // X軸のラベルの文字の色
    cview._bemGraph.colorXaxisLabel = [UIColor blackColor];
    
    // Y軸のラベルの文字の色
    cview._bemGraph.colorYaxisLabel = [UIColor blackColor];
    
    // 各ポイントを結んだ線の太さ
    cview._bemGraph.widthLine = 1.0;

    
    // GraphViewのタッチイベントを取得するかどうか
    cview._bemGraph.enableTouchReport = NO;
    // 画面をタッチした時に値をポップアップで表示するか
    cview._bemGraph.enablePopUpReport = NO;
    
    
    // 各ポイントを結ぶ線を滑らかに表示するか
    cview._bemGraph.enableBezierCurve = YES;
    
    
    // X軸のラベルを表示するか
    cview._bemGraph.enableXAxisLabel = YES;
    // Y軸のラベルを表示するか
    cview._bemGraph.enableYAxisLabel = YES;
    
    // Y軸をViewの高さに合わせてスケールするか
    cview._bemGraph.autoScaleYAxis = YES;
    
    // 各ポイントを常に表示するか
    cview._bemGraph.alwaysDisplayDots = NO;
    
    // X, Y軸のフレーム（外枠）を表示するか
    cview._bemGraph.enableReferenceAxisFrame = YES;
    
    // X, Y軸の補助線を表示するか
    cview._bemGraph.enableReferenceYAxisLines = YES;
    cview._bemGraph.enableReferenceXAxisLines = YES;

    // 表示するときのアニメーション(0=Draw, 1=Fade, 2=None)
    cview._bemGraph.animationGraphStyle = 0;
    
    
    // 外装も合わせて色を変えてみる
    cview.backgroundColor = [UIColor yellowColor];
    cview.tintColor = [UIColor whiteColor];
    cview._bemGraph.backgroundColor = [UIColor blueColor];
    
}


@end
