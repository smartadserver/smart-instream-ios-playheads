//
//  SVSOOyalaPlayheadAdapter.m
//  OoyalaSample
//
//  Created by Thomas Geley on 04/10/2017.
//  Copyright © 2017 Smart Adserver. All rights reserved.
//

#import "SVSOOyalaPlayheadAdapter.h"
#import <OoyalaSDK/OOOoyalaPlayerViewController.h>

NS_ASSUME_NONNULL_BEGIN

@interface SVSOOyalaPlayheadAdapter ()
@property (nonatomic, weak) OOOoyalaPlayerViewController *playerViewController;
@property (nonatomic, weak) OOOoyalaPlayer *player;
@property (nonatomic, assign) BOOL infiniteDuration;
@end

@implementation SVSOOyalaPlayheadAdapter

- (instancetype)initWithOOyalaPlayerViewController:(OOOoyalaPlayerViewController *)playerController unknownContentDuration:(BOOL)unknownContentDuration {
    return [self initWithOOyalaPlayerViewController:playerController OOyalaPlayer:playerController.player unknownContentDuration:unknownContentDuration];
}


- (instancetype)initWithOOyalaPlayer:(OOOoyalaPlayer *)player unknownContentDuration:(BOOL)unknownContentDuration {
    return [self initWithOOyalaPlayerViewController:nil OOyalaPlayer:player unknownContentDuration:unknownContentDuration];
}


- (instancetype)initWithOOyalaPlayerViewController:(nullable OOOoyalaPlayerViewController *)playerController OOyalaPlayer:(OOOoyalaPlayer *)player unknownContentDuration:(BOOL)unknownContentDuration {
    
    self = [super init];
    
    if (self) {
        self.playerViewController = playerController;
        self.player = player;
        self.infiniteDuration = unknownContentDuration;
    }
    
    return self;
}


#pragma mark - Playhead Protocol

- (NSTimeInterval)contentPlayerCurrentTime {
    return self.player.playheadTime;
}


- (NSTimeInterval)contentPlayerTotalTime {
    if (self.infiniteDuration) {
        return kSVSContentPlayerTotalDurationInfinite;
    }
    
    return self.player.duration;
}


- (float)contentPlayerVolumeLevel {
    return 1.0;
}


- (BOOL)contentPlayerIsPlaying {
    return self.player.state == OOOoyalaPlayerStatePlaying;
}


@end

NS_ASSUME_NONNULL_END
