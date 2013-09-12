 #import<Foundation/Foundation.h>
 #import "Bill.h"
 #import "CalcTax.h"
 #import "TaxProto.h"
 int main(int argc,char * argv[])
 {
 	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init]; /*Provides for the automatic release of object
 when pool is drained. And to avoid a run time error: autorelease called without pool for object of class NSIntNumber in thread.*/
	
	Bill *b=[[Bill alloc]init];
	int amt;
	char ch[50];
	NSLog(@"Enter the type of Bill");
	NSLog(@"FinishedGoods / Grocery ");
	scanf("%s",ch);
	
	NSLog(@"Enter the bill amount");
	scanf("%d",&amt);
	NSString *type = [NSString stringWithUTF8String:ch]; /*To convert the array of characters to NSString so that
	 later i compare using isEqualToString: */

	[b setType:type];//set the bill type
	[b setAmt:amt];//set the amount
	CalcTax *c=[[CalcTax alloc]init];
	[c calc:b];
	[type release];
	[b release];
	[c release];
	[pool drain];
	return 0;
}
	
