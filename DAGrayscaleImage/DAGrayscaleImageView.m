//
//  GAGrayscaleImageView.m
//  DAGrayscaleImage
//
//  Created by Dejan on 01/06/14.
//  Copyright (c) 2014 Dejan. All rights reserved.
//

#import "DAGrayscaleImageView.h"

@interface DAGrayscaleImageView () {
    UIImageView *originalImage_;
}

@end

@implementation DAGrayscaleImageView


#pragma mark - Initialization

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        originalImage_ = [[UIImageView alloc] initWithFrame:frame];
        [self initialize];
    }
    return self;
}

- (id)initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        originalImage_ = [[UIImageView alloc] initWithImage:image];
        [self initialize];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        originalImage_ = [[UIImageView alloc] initWithCoder:aDecoder];
        [self initialize];
    }
    return self;
}

- (void)initialize {
    if (originalImage_) {
        originalImage_.alpha = 1.0;
        [self addSubview:originalImage_];
        [self setImage:self.image];
    }
}


#pragma mark - Setters

- (void)setImage:(UIImage *)image {
    [super setImage:[self grayscaleImage:[image copy]]];
    originalImage_.image = image;
}

- (void)setSaturation:(float)ratio {
    originalImage_.alpha = ratio;
}


#pragma mark - Utility methods

- (UIImage *)grayscaleImage:(UIImage *)originalImage {
    UIGraphicsBeginImageContextWithOptions(originalImage.size, YES, [UIScreen mainScreen].scale);
    CGRect imageRect = CGRectMake(0, 0, originalImage.size.width, originalImage.size.height);
    [originalImage drawInRect:imageRect blendMode:kCGBlendModeLuminosity alpha:1.0];
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return result;
}


@end
