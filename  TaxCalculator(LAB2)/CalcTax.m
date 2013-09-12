#import <Foundation/Foundation.h>
#import "CalcTax.h"
#import "TaxProto.h"
#import "Bill.h"

@implementation CalcTax

-(void)calc:(id) b
{
   NSString *type=[[NSString alloc]init];
   type=[b type];//Takes the value that we have typed on  the console.
  
   if([type isEqualToString:@"FinishedGoods"])//compares with the given string.
   {  
      
      [b kstCst:b];
      [b printTax];
     
   }
   else if([type isEqualToString:@"Grocery"])
   {
      [b vat:b];
      [b printTax];

   }
}
@end

// Warning appear like incomplete implementation,method not found and does not fully implement the protocol.
// But the code runs and provide the correct output.