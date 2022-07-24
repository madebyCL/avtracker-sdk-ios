@import AvTracker;

#import "ObjectiveCCompatibilityChecker.h"

@implementation ObjectiveCCompatibilityChecker

- (void)check {
    AvTracker *avTracker = [[AvTracker alloc] initWithSiteId:@"5" baseURL:[NSURL URLWithString:@"https://ad-v.kr/p"] userAgent:nil];
    [avTracker trackWithView:@[@"example"] url:nil];
    [avTracker trackWithEventWithCategory:@"category" action:@"action" name:nil number:nil url:nil];
    [avTracker trackSearchWithQuery:@"custom search string" category:@"custom search category" resultCount:15 url:nil];
    [avTracker dispatch];
    avTracker.logger = [[DefaultLogger alloc] initWithMinLevel:LogLevelVerbose];
    [avTracker trackCampaignWithName:@"campaign_name" keyword:@"campaign_keyword"];
    avTracker.userId = @"Just a custom id";
}

- (void)checkDeprecated {
    AvTracker *avTracker = [[AvTracker alloc] initWithSiteId:@"5" baseURL:[NSURL URLWithString:@"https://ad-v.kr/p"] userAgent:nil];
    [avTracker trackWithEventWithCategory:@"category" action:@"action" name:nil number:nil url:nil];
}

@end
