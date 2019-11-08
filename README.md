# oc_nsstring_002
learning oc NSString class
### example
   NSString的常用方法，
   创建字符串：
    NSString *str = @"abcd";
    SString *str = [[NSString alloc] initWithString:@"abc"];//与第一种等价

   格式化并创建字符串
    NSString *str = [[NSString alloc] initWithFormat:@"abc%@ %d", @"test", 123];//

   比较字符串是否相等
    NSString *str1 = @"abcd";
    NSString *str2 = @"abcdhhjj";

   //比较两指针是否相等
    if(str1 == str2)
   //比较两字符串的内容是否相等
    if([str1 isEqualToString: str2])
     
   NSSring的比较，各种compare方法，不区分大小写比较也是用的其中一个compare方法，这些方法返回值为 NSComparisonResult枚举，包括三个值：升序，相等，降序
