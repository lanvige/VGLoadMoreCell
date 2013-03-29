//
//  LoadingIndicatorView.h
//  Explorer
//
//  Created by Lanvige Jiang on 3/22/13.
//  Copyright (c) 2013 Lanvige Jiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VGLoadingIndicatorView : UIView {
}

@property (nonatomic, strong) UIActivityIndicatorView *spinner;
@property (nonatomic, strong) UIView *container;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicatorView;

@end
