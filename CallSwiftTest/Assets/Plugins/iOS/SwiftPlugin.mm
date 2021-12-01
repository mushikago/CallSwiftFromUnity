 #import <UnityFramework/UnityFramework-Swift.h>

 #ifdef __cplusplus
 extern "C" {
 #endif
    void CallSwift() {
        NSLog(@"called Swift mm");
        [SwiftPlugin openSettings];
    }
 #ifdef __cplusplus
 }
 #endif
