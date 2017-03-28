//
//  AppDelegate.swift
//  SoccerStats
//
//  Created by Forrest Stanley on 3/19/16.
//  Copyright © 2016 R Forrest Stanley. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        // The program ignores outside interruptions and assumes full control of the platform.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}
// This program will collect data for submission to MaxPreps via the Soccer Stats Computer Engine.
//
// MaxPreps Data Fields:
// Field Player Stats:  FieldMinutesPlayed	Goals	Assists	Shots	ShotsOnGoal	Steals	PenaltyKicksMade	PenaltyKicksAttempted	CornerKicks	GameWinningGoal
// Goal Tending Stats: MinutesPlayed	OvertimeMinutesPlayed	GoalsAgainst	Saves	OpponentShotsOnGoal	OpponentPenaltyKickSaves	OpponentPenaltyKickAttempts	ShutOuts	Win	Loss	Tie
//
// The selection of stats to be entered are a choice for the user in the game set up.
// The output is a CSV file that can be read by MaxPreps and Excel
// 
// The first line of the CSV is the coach's MaxPreps user number.  The Coach's number will be set as a default in the initial startup.
//
// There are three forms of this program: iPOD/TOUCH, iPAD, & Computer.  Each has increased capability from simple to data processing. The iPOD/TOUCH format will record the usual stats collected using a paper form.  The iPAD form will use a graphical interface for events that will include field position for shots on goal.
//
//PROGRAMMING NOTES:
//
// The Dictionary GameStats is used to collect the events of a game.
// The data processing portion of this program sorts the event collection, sums the fields and prepares the CSV file.  
// Users have the option of keeping stats for Home and Away.  Time stamping enables automatic Player Miniute collection when
// substitutions are tracked.
//
// GESTURES:
//
// Each event is recorded with three gestures.  Partial gestures are canceled by time-outs or deliberate call.
// Any collection of three selections, order is not important, will call for an event entry in the dictionary.
//
// Game Day Opening screens will ask a series of questions for setting up the arrays:
// 1) Tracking stats for both teams and the number of players on each team?
// 1a) Using the default roster (the one set up at the begining of the season)
//      Bulk roster up load from an EXCEL generated CSV file
//      If tracking visitors, "Adding players on the fly or enter the roster of jersey numbers?"
// 2) Tracking full stats or a selection
//       Default is to track stats found in the Kwik Goal (Trademark) stat book
//          Jersey, played (need to count halfs for Idaho HSAAA audits), shots, shots on goal, goals, assists, yellow card, red card, corner kicks, PK, DFK, IFK, Offsides
//          Goalie Stats: Shots on goal, saves, PK goals against, PK Saves, goals against
// 3) Assume that the platform realtime clock is accurate; but, ask if the system clock should be used
// 4) Length of half (minutes)
//      Half starts at 0 minutes and 45 minutes (real time length is kept for scoring time stamps)
// 5) Starting line-up from menu buttons
// 6) Can the game end in a tie?
// 7) Names of Referrees (up to four per game)
// 8) Environmental conditions: Precip, Temp, Sky (cloudy, partly cloudy, clear), humidity (reading or classification)
// 9) download game results to computer (if iPOD or iPAD)
// 
//  Computer set up and processing
//
// Pre-season set up:
// Default roster
//   Jersey Number, Name, grade, club player number (if used), starting
// Coach's MaxPreps ID Number
// Pre-Set Selection
//  KwikGoal record book
//  Previous used stats
//  Max Preps stats
//
//Need an INI/CONFIG file to store pre-set selections and default rosters
//Before leaving the computer the Config file must be uploaded to the hand-held unit
//
//
// DEFINITIONS
//
//
