.class public final Lcom/swmansion/gesturehandler/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "UIManager",
        "Lcom/facebook/react/uimanager/UIManagerModule;",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getUIManager",
        "(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/uimanager/UIManagerModule;",
        "deviceEventEmitter",
        "Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;",
        "getDeviceEventEmitter",
        "(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;",
        "react-native-gesture-handler_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getDeviceEventEmitter(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p0

    const-string v0, "this.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter::class.java)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-object p0
.end method

.method public static final getUIManager(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "this.getNativeModule(UIManagerModule::class.java)!!"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/facebook/react/uimanager/UIManagerModule;

    return-object p0
.end method
