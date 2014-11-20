//
//  LAWInnerCollectionViewCell.h
//  [UICollectionView]RearrangeableCollectionView
//
//  Created by Lawrence on 11/20/14.
//  Copyright (c) 2014 Lawrence. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LAWNormalCollectionViewCell.h"

@interface LAWInnerCollectionViewCell : LAWNormalCollectionViewCell<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *innerArr;
@end
