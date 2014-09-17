//
//  JTSActionAccessoryItem.m
//  
//
//  Created by Patrick Zearfoss on 9/16/14.
//
//

#import "JTSActionSheetAccessoryItem.h"

@interface JTSActionSheetAccessoryItem()
@property (nonatomic, strong, readwrite) UIView *accessoryView;
@end

@implementation JTSActionSheetAccessoryItem

+ (instancetype)itemWithTitle:(NSString *)title
                       action:(JTSActionBlock)actionBlock
                isDestructive:(BOOL)isDestructive
                    accessory:(UIView *)accessoryView
{
    JTSActionSheetAccessoryItem *item = [self itemWithTitle:title action:actionBlock isDestructive:isDestructive];
    item.accessoryView = accessoryView;
    
    return item;
}

@end
