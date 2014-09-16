//
//  JTSActionAccessoryItem.h
//  Pods
//
//  Created by Patrick Zearfoss on 9/16/14.
//
//

#import "JTSActionSheetItem.h"

@interface JTSActionSheetAccessoryItem : JTSActionSheetItem

@property (nonatomic, strong, readonly) UIView *accessoryView;

+ (instancetype)itemWithTitle:(NSString *)title
                       action:(JTSActionBlock)actionBlock
                isDestructive:(BOOL)isDestructive
                    accessory:(UIView *)accessoryView;

@end
