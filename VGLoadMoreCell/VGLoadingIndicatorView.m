//
//  LoadingIndicatorView.m
//  Explorer
//
//  Created by Lanvige Jiang on 3/22/13.
//  Copyright (c) 2013 Lanvige Jiang. All rights reserved.
//

#import "VGLoadingIndicatorView.h"

@implementation VGLoadingIndicatorView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]) != nil) {
        self.container = [[UIView alloc] init];
        self.container.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;

        self.spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        [self.spinner startAnimating];
        [self.container addSubview:self.spinner];

        self.label = [[UILabel alloc] init];
        self.label.font = [UIFont systemFontOfSize:17.0f];
        self.label.backgroundColor = [UIColor clearColor];
        self.label.textColor = [UIColor grayColor];
        // [label_ setShadowColor:[UIColor whiteColor]];
        // [label_ setShadowOffset:CGSizeMake(0, 1)];
        self.label.text = @"Loading...";
        [self.container addSubview:self.label];

        CGSize viewsize = frame.size;
        CGSize spinnersize = [self.spinner bounds].size;
        CGSize textsize = [[self.label text] sizeWithFont:[self.label font]];
        float bothwidth = spinnersize.width + textsize.width + 5.0f;

        CGRect containrect = {CGPointMake(floorf((viewsize.width / 2) - (bothwidth / 2)), floorf((viewsize.height / 2) - (spinnersize.height / 2))),
            CGSizeMake(bothwidth, spinnersize.height)};
        CGRect textrect = {CGPointMake(spinnersize.width + 5.0f, floorf((spinnersize.height / 2) - (textsize.height / 2))),
            textsize};
        CGRect spinrect = {CGPointZero, spinnersize};

        self.container.frame = containrect;
        self.spinner.frame = spinrect;
        self.label.frame = textrect;
        [self addSubview:self.container];
    }

    return self;
}

@end
