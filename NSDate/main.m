#import <Foundation/Foundation.h>

int main(int argc,char* argv[])
{
	NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init]; //Provides for the automatic release of object when pool is drained.
	// And to avoid a run time error: autorelease called without pool for object of class NSIntNumber in thread.
	
	/*Formats
	yyyy - Ex: 2013,2000
	yy -Ex: '13
	MM -Ex: 06,12
	MMMM -Ex: April, May
	dd - Ex: 14,30
	EEEE -Ex :Sunday,Monday
	EEE - Ex:Sun,Mon
	*/
	NSDateFormatter *d=[[NSDateFormatter alloc] init]; 
	[d setDateFormat:@"EEEE,yyyy/MM/dd"];  //specifies the format the date should look.
	NSDate *now = [NSDate date];
	NSLog(@"Today's date = %@", [now descriptionWithLocale:[NSLocale currentLocale]]);//prints todays date.

	[d setDateFormat:@"EEEE,yyyy/MM/dd"];
	NSDate *tomorrow = [[NSDate alloc]initWithTimeIntervalSinceNow:2*24*60*60];//multiplied by "2" because 2 days after from now.
	NSLog(@"Day after tomorrow's date = %@",[d stringFromDate:tomorrow]);//prints day after tomorrow's date

	[d setDateFormat:@"yyyy/MM/dd"];
	NSDate *date=[NSDate dateWithNaturalLanguageString: @"Thursday"];//Here the string contains the specified date given by the string.
	NSDate *thur =[[NSDate alloc]initWithTimeInterval:-7*24*60*60 sinceDate:date];//to take back (last)
	NSLog(@"Last Thursday's Date: %@", [d stringFromDate:thur]);//Prints last thursday's date.
	
	NSDate *today = [NSDate date];
	NSDate *compdate=[NSDate dateWithString:@"2000-01-01 10:45:32 +0600x"];
	NSComparisonResult comp=[today compare:compdate];//pointer comparison
	if(comp==NSOrderedSame) //(receiver==argument)
	{
		NSLog(@"Dates are same");
	}
	if(comp==NSOrderedAscending) //(receiver<argument)
	{
		NSLog(@"Earlier"); 
	}
	if(comp==NSOrderedDescending)//(receiver>argument)
	{
		NSLog(@"Later");
	}
    
	[d setDateFormat:@"EEEE,yyyy/MM/dd"];
	NSDate *givendate = [d dateFromString:@"Sunday,2013/09/01"];//fist day is given
	NSLog(@"The given 1st day of a month is = %@",[d stringFromDate:givendate]);
	[d setDateFormat:@"EEEE,yyyy/MM/dd"];
	NSDate *tenthday =[[NSDate alloc]initWithTimeInterval:10*24*60*60 sinceDate:givendate];// plus 10 to the given date.
	NSLog(@"The 1oth day of the month from given 1st day is = %@",[d stringFromDate:tenthday]);
	[d release];
	[myPool drain];//Finally drain the pool.
	return 0;
}