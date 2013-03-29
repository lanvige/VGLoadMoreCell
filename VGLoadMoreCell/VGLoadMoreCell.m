//
//  LoadMoreCell.m
//  Explorer
//
//  Created by Lanvige Jiang on 3/22/13.
//  Copyright (c) 2013 Lanvige Jiang. All rights reserved.
//

#import "VGLoadMoreCell.h"

@implementation VGLoadMoreCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
        self.button = [[VGLoadMoreButton alloc] initWithFrame:self.bounds];
        self.button.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.button];
    }

    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
