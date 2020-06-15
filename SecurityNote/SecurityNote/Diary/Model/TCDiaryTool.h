

#import <Foundation/Foundation.h>
@class TCDiary;

@interface TCDiaryTool : NSObject


+(NSMutableArray *)queryWithNote;

+(void)deleteNote:(int)ids;

+(void)insertNote:(TCDiary *)diaryNote;

+(TCDiary *)queryOneNote:(int)ids;

+(void)updataNote:(TCDiary *)updataNote;

@end
