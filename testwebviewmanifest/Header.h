//
//  Header.h
//  testwebviewmanifest
//
//  Created by Admin on 5/4/16.
//  Copyright © 2016 fritzco. All rights reserved.
//

#ifndef Header_h
#define Header_h

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface WebPreferences (WebPreferencesPrivate)
- (void)_setLocalStorageDatabasePath:(NSString *)path;
- (void) setLocalStorageEnabled: (BOOL) localStorageEnabled;
- (void) setOfflineWebApplicationCacheEnabled:(BOOL)offlineWebApplicationCacheEnabled;
- (void) setDatabasesEnabled:(BOOL)databasesEnabled;
@end

#endif /* Header_h */
