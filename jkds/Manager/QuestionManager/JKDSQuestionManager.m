//
//  JKDSQuestionManager.m
//  jkds
//
//  Created by perfayMini on 2018/3/16.
//  Copyright © 2018年 perfaylk. All rights reserved.
//

#import "JKDSQuestionManager.h"

typedef enum : NSUInteger {
    QuesttionTypeOne,
    QuesttionTypeTwo,
    QuesttionTypeThree,
    QuesttionTypeFour,
} QuestionType;
@interface JKDSQuestionManager ()

@property(nonatomic,assign)QuestionType type;

@property(nonatomic,strong)NSString *tableNameString;

@end

static JKDSQuestionManager *sharedInstance = nil;

@implementation JKDSQuestionManager

+ (instancetype) sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[JKDSQuestionManager alloc]init];
    });
    return sharedInstance;
}
- (instancetype)init
{
    if (self = [super init]) {
        
        [JQFMDB shareDatabase:kDB_SQLITE_JKDS];
        
    }
    return self;
}
- (NSString *)tableNameString
{
    switch (self.type) {
        case QuesttionTypeOne:
            return @"";
            break;
        case QuesttionTypeTwo:
            return @"";
            break;
        case QuesttionTypeThree:
            return @"";
            break;
        case QuesttionTypeFour:
            return @"";
            break;
            return @"";
        default:
            break;
    }
    return @"";
}

- (NSArray *)getAllQuestionWithType:(QuestionType)type{
    __block NSArray *resultArray = [NSArray array];
    self.type = type;
    [[JQFMDB  shareDatabase] jq_inDatabase:^{
        
        NSString *splString = [NSString stringWithFormat:@"ORDER BY timestamp DESC"];
        
        resultArray = [[JQFMDB shareDatabase] jq_lookupTable:self.tableNameString dicOrModel:[NSDictionary class] whereFormat:splString];
    }];
    
    return resultArray;
}

@end
