//
//  LoadMoreButton.m
//  Explorer
//
//  Created by Lanvige Jiang on 3/22/13.
//  Copyright (c) 2013 Lanvige Jiang. All rights reserved.
//

#import "VGLoadMoreButton.h"

@implementation VGLoadMoreButton


- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        indicatorView = [[VGLoadingIndicatorView alloc] initWithFrame:[self bounds]];
        [indicatorView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
        [indicatorView setHidden:YES];
        [indicatorView setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:indicatorView];

        moreLabel = [[UILabel alloc] initWithFrame:[self bounds]];
        moreLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        moreLabel.text = @"Load More...";
        moreLabel.textAlignment = NSTextAlignmentCenter;
        moreLabel.textColor = [UIColor grayColor];
        moreLabel.font = [UIFont systemFontOfSize:17.0f];
        [self addSubview:moreLabel];
    }

    return self;
}

- (void)startLoading
{
    [indicatorView setHidden:NO];
    [moreLabel setHidden:YES];
}

- (void)stopLoading
{
    [indicatorView setHidden:YES];
    [moreLabel setHidden:NO];
}

@end
