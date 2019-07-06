//
//  customCell.h
//  constraintTable
//
//  Created by Анастасия Рябова on 03/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface customCell : UITableViewCell

@property (nonatomic, strong) UIImageView *coverImageView;
@property (nonatomic, strong) UILabel *titleLabelText;
@property (nonatomic, strong) UILabel *subtitleLabel;

@end

NS_ASSUME_NONNULL_END
