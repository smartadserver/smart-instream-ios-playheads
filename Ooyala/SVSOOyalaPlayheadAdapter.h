//
//  SVSOOyalaPlayheadAdapter.h
//  OoyalaSample
//
//  Created by Thomas Geley on 04/10/2017.
//  Copyright © 2017 Smart Adserver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SVSVideoKit/SVSVideoKit.h>

@class OOOoyalaPlayerViewController, OOOoyalaPlayer;

NS_ASSUME_NONNULL_BEGIN
/**
 This class is a convenience adapter that implements the SVSContentPlayerPlayHead protocol for OOOoyalaPlayer instances.
 Use it if your content player is an instance of OOOoyalaPlayer.
 */
@interface SVSOOyalaPlayheadAdapter : NSObject <SVSContentPlayerPlayHead>

/**
 Initialize an instance of SVSOOyalaPlayheadAdapter.
 
 @param playerController the OOOoyalaPlayerViewController instance used to play your content.
 @param unknownContentDuration Indicates whether or not the content is a live a feed, meaning its duration is unknown / infinite.
 
 @return An initialized instance of SVSOOyalaPlayheadAdapter.
 */
- (instancetype)initWithOOyalaPlayerViewController:(OOOoyalaPlayerViewController *)playerController unknownContentDuration:(BOOL)unknownContentDuration;

/**
 Initialize an instance of SVSOOyalaPlayheadAdapter.
 
 @param player the OOOoyalaPlayer instance used to play your content.
 @param unknownContentDuration Indicates whether or not the content is a live a feed, meaning its duration is unknown / infinite.
 
 @return An initialized instance of SVSOOyalaPlayheadAdapter.
 */
- (instancetype)initWithOOyalaPlayer:(OOOoyalaPlayer *)player unknownContentDuration:(BOOL)unknownContentDuration;

@end

NS_ASSUME_NONNULL_END
