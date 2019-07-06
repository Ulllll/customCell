//
//  customCell.m
//  constraintTable
//
//  Created by Анастасия Рябова on 03/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

#import "customCell.h"

@interface customCell ()

@property (nonatomic, strong) UIImage *img;
@property (nonatomic, strong) NSArray<NSString *> *textForTitle;
@property (nonatomic, strong) NSArray<NSString *> *textForSubTitle;

@end

@implementation customCell

int i = 0;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    self.textForTitle = @[@"first", @"second", @"third"];
    self.textForSubTitle = @[@"firstSub", @"secondSub", @"thirdSub"];
    if (self)
    {
        self.backgroundColor = [UIColor colorWithRed:135.0/255.0 green:206.0/255.0 blue:250.0/255.0 alpha:1];
        
        self.img = [[UIImage alloc]init];
        self.img = [UIImage imageNamed:@"img"];
        
        self.coverImageView = [[UIImageView alloc]initWithImage:self.img];
        [self.contentView addSubview:self.coverImageView];
        
        self.titleLabelText = [UILabel new];
        self.titleLabelText.text  = self.textForTitle[i];
        [self.contentView addSubview:self.titleLabelText];
        
        self.subtitleLabel = [UILabel new];
        self.subtitleLabel.text  = self.textForSubTitle[i];
        [self.contentView addSubview:self.subtitleLabel];
        
        i++;
        
        [self setupConstraints];
    }
    return self;
}

- (void)setupConstraints
{
    self.titleLabelText.translatesAutoresizingMaskIntoConstraints = NO;
    self.subtitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.coverImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSArray<NSLayoutConstraint *> *constraints =
    @[
      [self.titleLabelText.leadingAnchor constraintEqualToAnchor:self.coverImageView.trailingAnchor constant:100.f],
      [self.titleLabelText.topAnchor constraintEqualToAnchor:self.coverImageView.topAnchor constant:20.f],
      
      [self.subtitleLabel.leadingAnchor constraintEqualToAnchor:self.coverImageView.trailingAnchor constant:100.f],
      [self.subtitleLabel.topAnchor constraintEqualToAnchor:self.titleLabelText.topAnchor constant:40.f],
      
      [self.coverImageView.heightAnchor constraintEqualToConstant:100.f],
      [self.coverImageView.widthAnchor constraintEqualToConstant:100.f],
      [self.coverImageView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:10.f],
      [self.coverImageView.topAnchor constraintEqualToAnchor:self.topAnchor constant:10.f],
      ];
    [NSLayoutConstraint activateConstraints:constraints];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}



@end
