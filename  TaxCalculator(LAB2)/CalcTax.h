#import <Foundation/Foundation.h >
#import "TaxProto.h"
#import "Bill.h"
@interface CalcTax:NSObject <TaxProto>//Adopts the protocol.

-(void)calc:(id) b;//Dynamically accessing the object.

@end
