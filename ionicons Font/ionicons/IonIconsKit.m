//
//  IonIconsKit.m
//  ionicons Font
//
//  Created by shelley on 14-1-12.
//  Copyright (c) 2014 sanfriend.com.
//
//  Based on ionicons 1.4.1
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <UIKit/UIKit.h>
#import "IonIconsKit.h"

static const NSArray *ioniconsStrings;
static const NSArray *ioniconsStringNames;


@implementation NSString (FontAwesome)

+ (NSString *)stringWithIonIcon:(IonIcon)icon
{
    if(!ioniconsStrings) {
        ioniconsStrings = [NSArray arrayWithObjects:
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     @"", @"", @"", @"", @"",
                     nil];
    }
    
    return [ioniconsStrings objectAtIndex:icon];
}

+ (NSString *)nameForIonIcon:(IonIcon)icon
{
    if(!ioniconsStringNames) {
        ioniconsStringNames = [NSArray arrayWithObjects:
                         @"Alert", @"AlertCircled", @"AddAndroid", @"AddContactAndroid", @"AlarmAndroid",
                         @"ArchiveAndroid", @"ArrowBackAndroid", @"ArrowDownLeftAndroid", @"ArrowDownRightAndroid", @"ArrowUpLeftAndroid",
                         @"ArrowUpRightAndroid", @"BatteryAndroid", @"BookAndroid", @"CalendarAndroid", @"CallAndroid",
                         @"CameraAndroid", @"ChatAndroid", @"CheckmarkAndroid", @"ClockAndroid", @"CloseAndroid",
                         @"ContactAndroid", @"ContactsAndroid", @"DataAndroid", @"DeveloperAndroid", @"DisplayAndroid",
                         @"DownloadAndroid", @"DropdownAndroid", @"EarthAndroid", @"FolderAndroid", @"ForumsAndroid",
                         @"FriendsAndroid", @"HandAndroid", @"ImageAndroid", @"InboxAndroid", @"InformationAndroid",
                         @"KeypadAndroid", @"LightbulbAndroid", @"LocateAndroid", @"LocationAndroid", @"MailAndroid",
                         @"MicrophoneAndroid", @"MixerAndroid", @"MoreAndroid", @"NoteAndroid", @"PlaystoreAndroid",
                         @"PrinterAndroid", @"PromotionAndroid", @"ReminderAndroid", @"RemoveAndroid", @"SearchAndroid",
                         @"SendAndroid", @"SettingsAndroid", @"ShareAndroid", @"SocialInAndroid", @"SocialUserAndroid",
                         @"SortAndroid", @"StarAndroid", @"StopwatchAndroid", @"StorageAndroid", @"SystemBackAndroid",
                         @"SystemHomeAndroid", @"SystemWindowsAndroid", @"TimerAndroid", @"TrashAndroid", @"VolumeAndroid",
                         @"WifiAndroid", @"Archive", @"ArrowDownA", @"ArrowDownB", @"ArrowDownC",
                         @"ArrowExpand", @"ArrowGraphDownLeft", @"ArrowGraphDownRight", @"ArrowGraphUpLeft", @"ArrowGraphUpRight",
                         @"ArrowLeftA", @"ArrowLeftB", @"ArrowLeftC", @"ArrowMove", @"ArrowResize",
                         @"ArrowReturnLeft", @"ArrowReturnRight", @"ArrowRightA", @"ArrowRightB", @"ArrowRightC",
                         @"ArrowShrink", @"ArrowSwap", @"ArrowUpA", @"ArrowUpB", @"ArrowUpC",
                         @"At", @"Bag", @"BatteryCharging", @"BatteryEmpty", @"BatteryFull",
                         @"BatteryHalf", @"BatteryLow", @"Beaker", @"Beer", @"Bluetooth",
                         @"Bookmark", @"Briefcase", @"Bug", @"Calculator", @"Calendar",
                         @"Camera", @"Card", @"Chatbox", @"ChatboxWorking", @"Chatboxes",
                         @"Chatbubble", @"ChatbubbleWorking", @"Chatbubbles", @"Checkmark", @"CheckmarkCircled",
                         @"CheckmarkRound", @"ChevronDown", @"ChevronLeft", @"ChevronRight", @"ChevronUp",
                         @"Clipboard", @"Clock", @"Close", @"CloseCircled", @"CloseRound",
                         @"Cloud", @"Code", @"CodeDownload", @"CodeWorking", @"Coffee",
                         @"Compass", @"Compose", @"Connectbars", @"Contrast", @"Disc",
                         @"Document", @"DocumentText", @"Drag", @"Earth", @"Edit",
                         @"Egg", @"Eject", @"Email", @"Eye", @"EyeDisabled",
                         @"Female", @"Filing", @"FilmMarker", @"Flag", @"Flash",
                         @"FlashOff", @"Flask", @"Folder", @"Fork", @"ForkRepo",
                         @"Forward", @"GameControllerA", @"GameControllerB", @"GearA", @"GearB",
                         @"Grid", @"Hammer", @"Headphone", @"Heart", @"Help",
                         @"HelpBuoy", @"HelpCircled", @"Home", @"Icecream", @"IconSocialGooglePlus",
                         @"IconSocialGooglePlusOutline", @"Image", @"Images", @"Information", @"Informatcircled",
                         @"Ionic", @"AlarmIOS", @"AlarmOutlineIOS", @"AlbumsIOS", @"AlbumsOutlineIOS",
                         @"ArrowBackIOS", @"ArrowDownIOS", @"ArrowForwardIOS", @"ArrowLeftIOS", @"ArrowRightIOS",
                         @"ArrowThinDownIOS", @"ArrowThinLeftIOS", @"ArrowThinRightIOS", @"ArrowThinUpIOS", @"ArrowUpIOS",
                         @"AtIOS", @"AtOutlineIOS", @"BellIOS", @"BellOutlineIOS", @"BoltIOS",
                         @"BoltOutlineIOS", @"BookmarksIOS", @"BookmarksOutlineIOS", @"BoxIOS", @"BoxOutlineIOS",
                         @"BriefcaseIOS", @"BriefcaseOutlineIOS", @"BrowsersIOS", @"BrowsersOutlineIOS", @"CalculatorIOS",
                         @"CalculatorOutlineIOS", @"CalendarIOS", @"CalendarOutlineIOS", @"CameraIOS", @"CameraOutlineIOS",
                         @"CartIOS", @"CartOutlineIOS", @"ChatboxesIOS", @"ChatboxesOutlineIOS", @"ChatbubbleIOS",
                         @"ChatbubbleOutlineIOS", @"CheckmarkIOS", @"CheckmarkEmptyIOS", @"CheckmarkOutlineIOS", @"CircleFilledIOS",
                         @"CircleOutlineIOS", @"ClockIOS", @"ClockOutlineIOS", @"CloseIOS", @"CloseEmptyIOS",
                         @"CloseOutlineIOS", @"CloudIOS", @"CloudDownloadIOS", @"CloudDownloadOutlineIOS", @"CloudOutlineIOS",
                         @"CloudUploadIOS", @"CloudUploadOutlineIOS", @"CloudyIOS", @"CloudyNightIOS", @"CloudyNightOutlineIOS",
                         @"CloudyOutlineIOS", @"CogIOS", @"CogOutlineIOS", @"ComposeIOS", @"ComposeOutlineIOS",
                         @"ContactIOS", @"ContactOutlineIOS", @"CopyIOS", @"CopyOutlineIOS", @"DownloadIOS",
                         @"DownloadOutlineIOS", @"DragIOS", @"EmailIOS", @"EmailOutlineIOS", @"EyeIOS",
                         @"EyeOutlineIOS", @"FastforwardIOS", @"FastforwardOutlineIOS", @"FilingIOS", @"FilingOutlineIOS",
                         @"FilmIOS", @"FilmOutlineIOS", @"FlagIOS", @"FlagOutlineIOS", @"FolderIOS",
                         @"FolderOutlineIOS", @"GearIOS", @"GearOutlineIOS", @"GlassesIOS", @"GlassesOutlineIOS",
                         @"HeartIOS", @"HeartOutlineIOS", @"HelpIOS", @"HelpEmptyIOS", @"HelpOutlineIOS",
                         @"InfiniteIOS", @"InfiniteOutlineIOS", @"InformationIOS", @"InformatemptyIOS", @"InformatoutlineIOS",
                         @"IonicOutlineIOS", @"KeypadIOS", @"KeypadOutlineIOS", @"LightbulbIOS", @"LightbulbOutlineIOS",
                         @"LocationIOS", @"LocatoutlineIOS", @"LockedIOS", @"LockedOutlineIOS", @"MedkitIOS",
                         @"MedkitOutlineIOS", @"MicIOS", @"MicOffIOS", @"MicOutlineIOS", @"MinusIOS",
                         @"MinusEmptyIOS", @"MinusOutlineIOS", @"MonitorIOS", @"MonitorOutlineIOS", @"MoonIOS",
                         @"MoonOutlineIOS", @"MoreIOS", @"MoreOutlineIOS", @"MusicalNoteIOS", @"MusicalNotesIOS",
                         @"NavigateIOS", @"NavigateOutlineIOS", @"PaperplaneIOS", @"PaperplaneOutlineIOS", @"PartlysunnyIOS",
                         @"PartlysunnyOutlineIOS", @"PauseIOS", @"PauseOutlineIOS", @"PeopleIOS", @"PeopleOutlineIOS",
                         @"PersonIOS", @"PersonOutlineIOS", @"PersonaddIOS", @"PersonaddOutlineIOS", @"PhotosIOS",
                         @"PhotosOutlineIOS", @"PieIOS", @"PieOutlineIOS", @"PlayIOS", @"PlayOutlineIOS",
                         @"PlusIOS", @"PlusEmptyIOS", @"PlusOutlineIOS", @"PricetagIOS", @"PricetagOutlineIOS",
                         @"PrinterIOS", @"PrinterOutlineIOS", @"RainyIOS", @"RainyOutlineIOS", @"RecordingIOS",
                         @"RecordingOutlineIOS", @"RedoIOS", @"RedoOutlineIOS", @"RefreshIOS", @"RefreshEmptyIOS",
                         @"RefreshOutlineIOS", @"ReloadIOS", @"RewindIOS", @"RewindOutlineIOS", @"SearchIOS",
                         @"SearchStrongIOS", @"SkipbackwardIOS", @"SkipbackwardOutlineIOS", @"SkipforwardIOS", @"SkipforwardOutlineIOS",
                         @"SnowyIOS", @"SpeedometerIOS", @"SpeedometerOutlineIOS", @"StarIOS", @"StarOutlineIOS",
                         @"StopwatchIOS", @"StopwatchOutlineIOS", @"SunnyIOS", @"SunnyOutlineIOS", @"TelephoneIOS",
                         @"TelephoneOutlineIOS", @"ThunderstormIOS", @"ThunderstormOutlineIOS", @"TimeIOS", @"TimeOutlineIOS",
                         @"TimerIOS", @"TimerOutlineIOS", @"TrashIOS", @"TrashOutlineIOS", @"UndoIOS",
                         @"UndoOutlineIOS", @"UnlockedIOS", @"UnlockedOutlineIOS", @"UploadIOS", @"UploadOutlineIOS",
                         @"VideocamIOS", @"VideocamOutlineIOS", @"VolumeHighIOS", @"VolumeLowIOS", @"WineglassIOS",
                         @"WineglassOutlineIOS", @"WorldIOS", @"WorldOutlineIOS", @"Ipad", @"Iphone",
                         @"Ipod", @"Jet", @"Key", @"Knife", @"Laptop",
                         @"Leaf", @"Levels", @"Lightbulb", @"Link", @"LoadA",
                         @"LoadB", @"LoadC", @"LoadD", @"Location", @"Locked",
                         @"LogIn", @"LogOut", @"Loop", @"Magnet", @"Male",
                         @"Man", @"Map", @"Medkit", @"MicA", @"MicB",
                         @"MicC", @"Minus", @"MinusCircled", @"MinusRound", @"ModelS", 
                         @"Monitor", @"More", @"MusicNote", @"Navicon", @"NaviconRound", 
                         @"Navigate", @"NoSmoking", @"Nuclear", @"PaperAirplane", @"Paperclip", 
                         @"Pause", @"Person", @"PersonAdd", @"PersonStalker", @"PieGraph", 
                         @"Pin", @"Pinpoint", @"Pizza", @"Plane", @"Play", 
                         @"Playstation", @"Plus", @"PlusCircled", @"PlusRound", @"Pound", 
                         @"Power", @"Pricetag", @"Pricetags", @"Printer", @"RadioWaves", 
                         @"Record", @"Refresh", @"Reply", @"ReplyAll", @"Search", 
                         @"Settings", @"Share", @"Shuffle", @"SkipBackward", @"SkipForward", 
                         @"SocialAndroid", @"SocialAndroidOutline", @"SocialApple", @"SocialAppleOutline", @"SocialBitcoin", 
                         @"SocialBitcoinOutline", @"SocialBuffer", @"SocialBufferOutline", @"SocialDesignernews", @"SocialDesignernewsOutline", 
                         @"SocialDribbble", @"SocialDribbbleOutline", @"SocialDropbox", @"SocialDropboxOutline", @"SocialFacebook", 
                         @"SocialFacebookOutline", @"SocialFreebsdDevil", @"SocialGithub", @"SocialGithubOutline", @"SocialGoogleplus", 
                         @"SocialGoogleplusOutline", @"SocialHackernews", @"SocialHackernewsOutline", @"SocialLinkedin", @"SocialLinkedinOutline", 
                         @"SocialPinterest", @"SocialPinterestOutline", @"SocialReddit", @"SocialRedditOutline", @"SocialRss", 
                         @"SocialRssOutline", @"SocialSkype", @"SocialSkypeOutline", @"SocialTumblr", @"SocialTumblrOutline", 
                         @"SocialTux", @"SocialTwitter", @"SocialTwitterOutline", @"SocialVimeo", @"SocialVimeoOutline", 
                         @"SocialWindows", @"SocialWindowsOutline", @"SocialWordpress", @"SocialWordpressOutline", @"SocialYahoo", 
                         @"SocialYahooOutline", @"SocialYoutube", @"SocialYoutubeOutline", @"Speakerphone", @"Speedometer", 
                         @"Spoon", @"Star", @"StatsBars", @"Steam", @"Stop", 
                         @"Thermometer", @"Thumbsdown", @"Thumbsup", @"TrashA", @"TrashB", 
                         @"Umbrella", @"Unlocked", @"Upload", @"Usb", @"Videocamera", 
                         @"VolumeHigh", @"VolumeLow", @"VolumeMedium", @"VolumeMute", @"Waterdrop", 
                         @"Wifi", @"Wineglass", @"Woman", @"Wrench", @"Xbox",
                         nil];
    }
    
    return [ioniconsStringNames objectAtIndex:icon];
}

@end



@implementation UIFont (IonIconsFont)

+ (UIFont *)ioniconsFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:@"IonIcons" size:size];
}

@end



@implementation UIView (IonIconsFont)

- (void)runSpinnerViewWithDuration:(CGFloat)duration
{
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 * duration ];
    rotationAnimation.duration = duration;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 1;

    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

@end
