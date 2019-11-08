//
//  main.m
//  oc_nsstring_002
//
//  Created by tommy on 2019/11/8.
//  Copyright © 2019 tommy. All rights reserved.
//

#import <Foundation/Foundation.h>

void test1() {
    // OC 中字符串都是以 @ 开头的，如：@“hello”
    NSString *str = @"tommy.huang";
//    NSString *str1 = [[NSString alloc] initWithString:@"abc"];//新版已不建议使用
    NSString *str2 = [[NSString alloc] initWithFormat:@"hello %@", @"tommy"];//初始化并进行格式化
    
    
    // 输出可以使用 NSLog()，格式化时使用 %@, 对象也可以使用，这点个 C 语言 printf() 的 %s 不同
    NSLog(@"%@", str);//新版要求使用这种格式输出
    NSLog(@"hello %@", str);
    NSLog(@"%@", str2);
}

// == 比较两字符串指针是否相等；
// NSString 的 isEqualToString() 比较内容是否相等
void string_compare() {
    NSString *str1 = @"abc";
    NSString *str2 = @"abc";
    NSString *str3 = @"test";
    
    if (str1 == str2) {
        NSLog(@"%@ 和 %@ 指针相等", str1, str2);
    }
    else {
        NSLog(@"%@ 和 %@ 指针不等", str1, str2);
    }
    
    
    if ([str1 isEqualToString:str2]) {
        NSLog(@"%@ 和 %@ 内容相等", str1, str2);
    }
    else {
        NSLog(@"%@ 和 %@ 内容不等", str1, str2);
    }
}

// NSString 的 compare 方法
// 返回值 NSComparisonResult枚举，包括三个值：升序，相等，降序
void string_compare_method() {
    NSString *str1 = @"test";
    NSString *str2 = @"hello";
    
    NSComparisonResult result = [str1 compare:str2];
    NSLog(@"result is: %ld", (long)result);
}

int main(int argc, const char * argv[]) {
    /*
     * 乔布斯被赶出苹果公司时，创建了新的公司 Next Step
     * 所以 Foundation.framework 中的类，都是以 "NS"开头的，
     * 如：NSString，NSLog
     *
     */
    
//    test1();
//    string_compare();
    string_compare_method();
    return 0;
}


