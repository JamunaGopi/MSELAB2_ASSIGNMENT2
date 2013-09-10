#import <Foundation/Foundation.h> //single main file was created because no instance variable or instance method were used
 
int main(int argc,char *argv[])
{
	NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init]; //Provides for the automatic release of object when pool is drained.
	// And to avoid a run time error: autorelease called without pool for object of class NSIntNumber in thread.
	NSMutableDictionary *d = [[NSMutableDictionary alloc]init];//Creating Dictionary
	
	//Set Key/Value pairs
	[d setObject:[NSNumber numberWithInt:10] forKey:@"Centimeter"];
	[d setObject:[NSNumber numberWithInt:40] forKey:@"Pound"];
	[d setObject:[NSNumber numberWithInt:50] forKey:@"Ounce"];
	[d setObject:[NSNumber numberWithInt:20] forKey:@"Kilogram"];
	[d setObject:[NSNumber numberWithInt:30] forKey:@"Yard"];
	[d setObject:[NSNumber numberWithInt:10] forKey:@"Millimeter"];
	[d setObject:[NSNumber numberWithInt:10] forKey:@"Kilometer"];
	[d setObject:[NSNumber numberWithInt:20] forKey:@"Milligram"];
	[d setObject:[NSNumber numberWithInt:20] forKey:@"Gram"];
	[d setObject:[NSNumber numberWithInt:10] forKey:@"Meter"];
	
	//Prints in Alphabetic order as in dictionary,but not as assigned order.
    NSLog(@"Dictionary contains: %@",d);
	//To print the values of those keys which end with meter using fast enumeration.
	NSLog(@"Values of those keys which end with 'meter' is :");
	NSLog(@"--------------------------------------------------");
	for (id Key in d) //Enumerating through a dictionary is equally as simple as looping through an array from begining to end.
	{
		id object = [d objectForKey:Key];//Here for the respective key it takes the object value
		if([object intValue]==10)//compare the object value with the value for those keys that end with 10,ie.meter.
		//"==" is used to compare,but object is of type 'id' which poped a warning,hence 'intValue'- a retrival
		// method used to tell that id should be returned as int value.
 		{
				NSLog(@" Key = %@ ,Value = %@", Key, object);//To print the key and the value.

		}
	}
	[d release];//Release the allocated memory for NSDictionary explicitly because there is no automatic garbage collection in obj-C 
	[myPool drain];//Finally drain the pool.
	return 0;
}	





















