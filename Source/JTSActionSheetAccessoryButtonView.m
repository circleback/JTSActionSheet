//
//  JTSActionSheetAccessoryButtonView.m
//  Pods
//
//  Created by Patrick Zearfoss on 9/16/14.
//
//

#import "JTSActionSheetAccessoryButtonView.h"

@interface JTSActionSheetAccessoryButtonView()
@property (nonatomic, strong) UIView *accessory;
@end

static const CGFloat kAccessoryRightPadding = 10.0;

@implementation JTSActionSheetAccessoryButtonView

- (instancetype)initWithItem:(JTSActionSheetItem *)item
                isCancelItem:(BOOL)isCancelItem
                    delegate:(id <JTSActionSheetButtonViewDelegate>)delegate
                       theme:(JTSActionSheetTheme *)theme
                    position:(JTSActionSheetItemViewPosition)position
                   accessory:(UIView *)accessory
{
    self = [super initWithItem:item
                  isCancelItem:isCancelItem
                      delegate:delegate
                         theme:theme
                      position:position];
    
    if (self)
    {
        if (accessory)
        {
            _accessory = accessory;
            
            _accessory.userInteractionEnabled = NO;
            
            CGRect accessoryFrame = _accessory.frame;
            accessoryFrame.origin.y = (self.bounds.size.height - _accessory.frame.size.height) / 2.0;
            accessoryFrame.origin.x = self.bounds.size.width - _accessory.frame.size.width - kAccessoryRightPadding;
            
            _accessory.frame = accessoryFrame;
            
            [self addSubview:_accessory];
        }
        
    }
    
    return self;
}



@end
