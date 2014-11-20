//
//  LAWInnerCollectionViewCell.m
//  [UICollectionView]RearrangeableCollectionView
//
//  Created by Lawrence on 11/20/14.
//  Copyright (c) 2014 Lawrence. All rights reserved.
//

#import "LAWInnerCollectionViewCell.h"
@interface LAWInnerCollectionViewCell()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation LAWInnerCollectionViewCell

-(void)awakeFromNib{
    [self.tableView setEditing:YES];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _innerArr.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableCell"];
    cell.textLabel.text = _innerArr[indexPath.row];
    cell.indentationLevel = 1;
    cell.indentationWidth = 20;
    return cell;
}

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    if (sourceIndexPath != destinationIndexPath) {
        id movingObject = _innerArr[sourceIndexPath.row];
        [_innerArr removeObjectAtIndex:sourceIndexPath.row];
        [_innerArr insertObject:movingObject atIndex:destinationIndexPath.row];
    }
    NSLog(@"After reorder: %@",_innerArr);
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleNone;
}

-(BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath{
    return NO;
}
@end
