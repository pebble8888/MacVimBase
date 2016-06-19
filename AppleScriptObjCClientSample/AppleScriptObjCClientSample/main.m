//
//  main.m
//  AppleScriptObjCClientSample
//
//  Created by pebble8888 on 2016/06/19.
//  Copyright © 2016年 pebble8888. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSAppleScript* appleScript = [[NSAppleScript alloc] initWithSource:@"tell application \"MacVimBase\"\ndo direct parameter command \"/develop/NVimApp/NVimApp/AppDelegate.swift 25\"\nend tell\n"];
        NSDictionary* errorDict;
        __unused NSAppleEventDescriptor* returnDescriptor = [appleScript executeAndReturnError:&errorDict];
        //NSLog(@"returnDescriptor %@", returnDescriptor);
        
    }
    return 0;
}
