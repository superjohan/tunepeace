//
//  AppDelegate.swift
//  tunepeace
//
//  Created by Johan Halin on 2.10.2015.
//  Copyright © 2015 Aero Deko. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	@IBOutlet weak var window: NSWindow!
	@IBOutlet weak var menu: NSMenu!
	
	var statusItem: NSStatusItem!
	
	@IBAction func quit(sender: AnyObject) {
		NSApp.terminate(self)
	}
	
	func applicationDidFinishLaunching(aNotification: NSNotification) {
	}

	override func awakeFromNib() {		
		self.statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
		self.statusItem.menu = self.menu
		self.statusItem.button!.image = NSImage(named: "menubar")
	}
	
	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}
}
