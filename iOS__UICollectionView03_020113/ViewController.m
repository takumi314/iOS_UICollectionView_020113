//
//  ViewController.m
//  iOS__UICollectionView03_020113
//
//  Created by  西岡 康平 on 2016/04/25.
//  Copyright © 2016年 KoheiNshioka. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *dataArray;
@property (strong, nonatomic) NSArray *imageArray;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // ラベルに表示させるデータを格納
    self.dataArray = @[@"日本料理",@"中華料理",@"イタリア料理",@"スペイン料理",@"イギリス料理"];
    self.imageArray = @[@[@"Sushi.jpg",@"Udon.jpg"],
                        @[@"Ramen.jpg",@"Mabotofu.jpg",@"FriedRice.jpg"],
                        @[@"Pizza.jpg",@"Pasta.jpg"],
                        @[@"Paella.jpg",@"Ham.jpg"],
                        @[@"Fish&Chips.jpg",@"BritishBreakfast.jpg"]
                        ];
}


- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return _dataArray.count;
}


- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _dataArray.count;
}


- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    Cell *aCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    
    NSArray *images = self.imageArray[indexPath.section];
    
//    aCell.myImage.image = [UIImage imageNamed:images[indexPath.row]];
    
    NSLog(@"%@ - %@", self.dataArray[indexPath.section] , images);
    
    return aCell;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
