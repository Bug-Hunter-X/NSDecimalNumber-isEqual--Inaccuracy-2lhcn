Instead of relying on `isEqual:` for comparing `NSDecimalNumber` objects, use the `compare:` method.  This method compares the numerical values directly and returns an `NSComparisonResult` (NSOrderedAscending, NSOrderedSame, NSOrderedDescending), providing a reliable comparison:

```objectivec
NSDecimalNumber *decimal1 = [NSDecimalNumber decimalNumberWithString:@