//
//  AppDelegate.swift
//  SoccerStatsComputerEngine
//
//  Created by Forrest Stanley on 3/22/16.
//  Copyright © 2016 R Forrest Stanley. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

// This program will collect data for submission to MaxPreps.
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
//Need an INI/CONFIG file to store pre-set selections and default rosters establishe on the computer
//Before leaving the computer the Config file must be uploaded to the hand-held unit
//
//
// DEFINITIONS
//
//
