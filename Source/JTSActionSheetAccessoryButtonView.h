//
//  JTSActionSheetAccessoryButtonView.h
//  Pods
//
//  Created by Patrick Zearfoss on 9/16/14.
//
//

#import "JTSActionSheetButtonView.h"

@interface JTSActionSheetAccessoryButtonView : JTSActionSheetButtonView

- (instancetype)initWithItem:(JTSActionSheetItem *)item
                isCancelItem:(BOOL)isCancelItem
                    delegate:(id <JTSActionSheetButtonViewDelegate>)delegate
                       theme:(JTSActionSheetTheme *)theme
                    position:(JTSActionSheetItemViewPosition)position
                   accessory:(UIView *)accessory;

@end
