#import <Foundation/Foundation.h>
//set of methods that can be implemented by any object of any class can be written in protocol file which is of .h extension
@protocol TaxProto <NSObject> //Protocol creation where <NSObject> is the super class of protocol 

-(void)kstCst:(id)b;//parameter is of type id to access the object dynamically.
-(void)vat:(id)b;

@end