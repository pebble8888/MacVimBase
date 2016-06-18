//
//  Copyright © 2016 pebble8888. All rights reserved.
//

#import "DirectParameterCommand.h"

@implementation DirectParameterCommand

/*
tell application "MacVimBase"
do direct parameter command "/develop/NVimApp/NVimApp/AppDelegate.swift 25"
end tell
 */

- (id)performDefaultImplementation {
    NSString* sParam = [self directParameter];
    NSArray* array = [sParam componentsSeparatedByString:@" "];
    NSString* mvimParam;
    if ([array count] >= 2){
        mvimParam = [NSString stringWithFormat:@"%@ +%@", array[0], array[1]];
    } else if ([array count] == 1){
        mvimParam = array[0];
    }
    if (mvimParam != nil) {
        NSTask *task = [[NSTask alloc] init];
        [task setLaunchPath:@"/bin/bash"];
        NSString* command = [NSString stringWithFormat:@"/Applications/mvim %@", mvimParam];
        [task setArguments:@[@"-c", command]];
        [task launch];
    }
	return [NSString stringWithFormat:@"%@", [self directParameter]];
}

@end
