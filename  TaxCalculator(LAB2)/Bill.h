#import<Foundation/Foundation.h>
#import"TaxProto.h"/*When we import a protocol file the methods in that protocol.h file implicitly
 become the part of the interface file*/

@interface Bill:NSObject <TaxProto>//Adopting the protocol
{
	NSString *type;
	float amt,TaxAmt,TotalAmt;
}
@property float amt,TaxAmt,TotalAmt;
@property (readwrite,retain)NSString *type;
-(void)printTax;



@end