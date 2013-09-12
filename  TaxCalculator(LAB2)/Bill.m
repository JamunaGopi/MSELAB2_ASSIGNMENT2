#import <Foundation/Foundation.h>
#import "Bill.h"

@implementation Bill

@synthesize amt,TaxAmt,TotalAmt,type;

-(void) printTax
{
	NSLog(@"The bill Amount is %.2f",amt);
	NSLog(@"The bill Type is %@",type);
	NSLog(@"The TaxAmt= %.2f",TaxAmt);
	NSLog(@"The TotalAmt =%.2f",TotalAmt);
	
}
-(void)vat:(id) b		//implementing the protocol methods.
{
   float vat=0.08;
   
    /* Ex: If amt=10;
	TotalAmt=10+10*0.08		TotalAmt=10.8
	TaxAmt=10*0.08			TaxAmt=0.8
	*/
	
   TotalAmt =amt+amt*vat;
   TaxAmt=amt*vat;
}

-(void)kstCst:(id) b		//implementing the protocol methods.
{
   float kst=0.14;
   float cst=0.04;
   
   /* Ex: If amt=10;
   TotalAmt=10+10*0.14		ie, TotalAmt=11.4
   TotalAmt=11.4+11.4*0.04		TotalAmt=11.856
   TaxAmt=10*0.14				TaxAmt=1.4
   TaxAmt=1.4+1.4*0.04			TaxAmt=1.456
	*/
	
   TotalAmt=amt+amt*kst;
   TaxAmt=amt*kst;
   
   TotalAmt=TotalAmt+TotalAmt*cst;
   TaxAmt=TaxAmt+TaxAmt*cst;
}


@end