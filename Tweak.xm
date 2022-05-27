%hook NSObject

+(instancetype)alloc {
    if (self == [NSString class]) {
        return %orig;
    }

    NSString* className = NSStringFromClass(self);
    NSLog(@"New object of class: [%@]", className);

    return %orig;
}


+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (self == [NSString class]) {
        return %orig(zone);
    }

    NSString* className = NSStringFromClass(self);
    NSLog(@"New object of class: [%@]", className);

    return %orig(zone);
}

%end
