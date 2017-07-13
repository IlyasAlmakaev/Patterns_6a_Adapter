//
//  RavenAdapter.h
//  Patterns_6a_Adapter
//
//  Created by Ильяс on 13.07.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
#import "Raven.h"

@interface RavenAdapter : NSObject <BirdProtocol>

@property (nonatomic, strong) Raven *_raven;

- (id)initWithRaven:(Raven *)adaptee;

@end
