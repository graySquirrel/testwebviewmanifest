//
//  ViewController.swift
//  testwebviewmanifest
//
//  Created by Admin on 5/3/16.
//  Copyright © 2016 fritzco. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    let THEURL:String = "http://13.230.21.154/WithManifest/"
    
    @IBOutlet var webview: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.preferences.setOfflineWebApplicationCacheEnabled(true)
        
//        [prefs setApplicationCacheTotalQuota:defaultTotalQuota];
//        [prefs setApplicationCacheDefaultOriginQuota:defaultOriginQuota];
//        [prefs _setLocalStorageDatabasePath:@"~/Library/Application Support/My webView/LocalStorage/"];
//        [prefs setLocalStorageEnabled:YES];
        
        let url = NSURL(string: THEURL)
        let request  = NSURLRequest(URL: url!, cachePolicy:NSURLRequestCachePolicy.ReturnCacheDataElseLoad ,timeoutInterval: 10)
        webview.mainFrame.loadRequest(request)
    }
}

