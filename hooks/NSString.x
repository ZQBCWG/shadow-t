#import "hooks.h"

%group shadowhook_NSString
%hook NSString
- (instancetype)initWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isPathRestricted:path] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

- (instancetype)initWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isPathRestricted:path] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

+ (instancetype)stringWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isPathRestricted:path] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

+ (instancetype)stringWithContentsOfFile:(NSString *)path usedEncoding:(NSStringEncoding *)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isPathRestricted:path] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

+ (instancetype)stringWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isURLRestricted:url] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

- (instancetype)initWithContentsOfURL:(NSURL *)url encoding:(NSStringEncoding)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isURLRestricted:url] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

+ (instancetype)stringWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isURLRestricted:url] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

- (instancetype)initWithContentsOfURL:(NSURL *)url usedEncoding:(NSStringEncoding *)enc error:(NSError * _Nullable *)error {
    NSString* result = %orig;
    
    if(result && [_shadow isURLRestricted:url] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

- (NSUInteger)completePathIntoString:(NSString * _Nullable *)outputName caseSensitive:(BOOL)flag matchesIntoArray:(NSArray<NSString *> * _Nullable *)outputArray filterTypes:(NSArray<NSString *> *)filterTypes {
    NSUInteger result = %orig;

    if(result > 0 && [_shadow isPathRestricted:self] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return 0;
    }

    return result;
}
%end

%hook NSAttributedString
- (instancetype)initWithHTML:(NSData *)data baseURL:(NSURL *)base documentAttributes:(NSDictionary<NSAttributedStringDocumentAttributeKey, id> * _Nullable *)dict {
    NSAttributedString* result = %orig;
    
    if(result && [_shadow isURLRestricted:base] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

- (instancetype)initWithURL:(NSURL *)url options:(NSDictionary<NSAttributedStringDocumentReadingOptionKey, id> *)options documentAttributes:(NSDictionary<NSAttributedStringDocumentAttributeKey, id> * _Nullable *)dict error:(NSError * _Nullable *)error {
    NSAttributedString* result = %orig;
    
    if(result && [_shadow isURLRestricted:url] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
        return nil;
    }

    return result;
}

// + (void)loadFromHTMLWithFileURL:(NSURL *)fileURL options:(NSDictionary<NSAttributedStringDocumentReadingOptionKey, id> *)options completionHandler:(NSAttributedStringCompletionHandler)completionHandler {
//     if([_shadow isURLRestricted:fileURL] && ![_shadow isCallerTweak:[NSThread callStackReturnAddresses]]) {
//         if(completionHandler) {
//             completionHandler(nil, nil, nil);
//         }

//         return;
//     }

//     %orig;
// }
%end
%end

void shadowhook_NSString(void) {
    %init(shadowhook_NSString);
}
