//
//  LoadMoreButton.h
//  Explorer
//
//  Created by Lanvige Jiang on 3/22/13.
//  Copyright (c) 2013 Lanvige Jiang. All rights reserved.
//

#import "VGLoadingIndicatorView.h"

@interface VGLoadMoreButton : UIButton
{
    VGLoadingIndicatorView *indicatorView;
    UILabel *moreLabel;
}

- (void)startLoading;
- (void)stopLoading;

@end
