//
//  GAGrayscaleImageView.h
//  DAGrayscaleImage
//
//  Created by Dejan on 01/06/14.
//  Copyright (c) 2014 Dejan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DAGrayscaleImageView : UIImageView

/*! Sets the image saturation.
 *\param ratio Saturation ratio (0 = grayscale, 1 = full color)
 */
- (void)setSaturation:(float)ratio;

@end
