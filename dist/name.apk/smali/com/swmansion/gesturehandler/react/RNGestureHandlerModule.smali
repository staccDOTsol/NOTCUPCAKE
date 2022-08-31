.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNGestureHandlerModule.kt"

# interfaces
.implements Lcom/swmansion/common/GestureHandlerStateManager;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNGestureHandlerModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$NativeViewGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$TapGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$LongPressGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$FlingGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerModule.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,711:1\n1#2:712\n286#3,2:713\n1275#4,2:715\n*S KotlinDebug\n*F\n+ 1 RNGestureHandlerModule.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerModule\n*L\n496#1:713,2\n504#1:715,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0008\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f*\u0001\n\u0008\u0007\u0018\u0000 L2\u00020\u00012\u00020\u0002:\nLMNOPQRSTUB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008H\u0007J0\u0010\u001d\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020#H\u0007J\u0011\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020&H\u0082 J\u0010\u0010\'\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0007J.\u0010(\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\u000e\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0\u001f2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H\u001e0\u001fH\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u0014\u0010+\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020-0,H\u0016J\u0008\u0010.\u001a\u00020!H\u0016J\u0008\u0010/\u001a\u00020\u0019H\u0007J\u0018\u00100\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u00101\u001a\u000202H\u0007J\u0008\u00103\u001a\u000202H\u0007J\u0008\u00104\u001a\u00020\u0019H\u0016J%\u00105\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0\u001f2\u0006\u0010)\u001a\u0002H\u001eH\u0002\u00a2\u0006\u0002\u00106J5\u00107\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0\u001f2\u0006\u0010)\u001a\u0002H\u001e2\u0006\u00108\u001a\u00020\u00082\u0006\u00109\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010:J%\u0010;\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0\u001f2\u0006\u0010)\u001a\u0002H\u001eH\u0002\u00a2\u0006\u0002\u00106J\u000e\u0010<\u001a\u00020\u00192\u0006\u0010=\u001a\u00020\u0017J\u0018\u0010>\u001a\u00020\u00192\u0006\u0010?\u001a\u00020!2\u0006\u0010@\u001a\u00020AH\u0002J%\u0010B\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0C2\u0006\u0010D\u001a\u0002H\u001eH\u0002\u00a2\u0006\u0002\u0010EJ\u0010\u0010F\u001a\u00020\u00192\u0006\u0010D\u001a\u00020GH\u0002J%\u0010H\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0C2\u0006\u0010D\u001a\u0002H\u001eH\u0002\u00a2\u0006\u0002\u0010EJ\u0018\u0010I\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u00108\u001a\u00020\u0008H\u0016J\u000e\u0010J\u001a\u00020\u00192\u0006\u0010=\u001a\u00020\u0017J(\u0010K\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010\u001e*\u0008\u0012\u0004\u0012\u0002H\u001e0\u001f2\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020#H\u0007R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001a\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000e0\rX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006V"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "Lcom/swmansion/common/GestureHandlerStateManager;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "enqueuedRootViewInit",
        "",
        "",
        "eventListener",
        "com/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;",
        "handlerFactories",
        "",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;",
        "[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;",
        "interactionManager",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;",
        "registry",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;",
        "getRegistry",
        "()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;",
        "roots",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
        "attachGestureHandler",
        "",
        "handlerTag",
        "viewTag",
        "actionType",
        "createGestureHandler",
        "T",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "handlerName",
        "",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "decorateRuntime",
        "jsiPtr",
        "",
        "dropGestureHandler",
        "findFactoryForHandler",
        "handler",
        "findRootHelperForViewAncestor",
        "getConstants",
        "",
        "",
        "getName",
        "handleClearJSResponder",
        "handleSetJSResponder",
        "blockNativeResponder",
        "",
        "install",
        "onCatalystInstanceDestroy",
        "onHandlerUpdate",
        "(Lcom/swmansion/gesturehandler/GestureHandler;)V",
        "onStateChange",
        "newState",
        "oldState",
        "(Lcom/swmansion/gesturehandler/GestureHandler;II)V",
        "onTouchEvent",
        "registerRootHelper",
        "root",
        "sendEventForDeviceEvent",
        "eventName",
        "data",
        "Lcom/facebook/react/bridge/WritableMap;",
        "sendEventForDirectEvent",
        "Lcom/facebook/react/uimanager/events/Event;",
        "event",
        "(Lcom/facebook/react/uimanager/events/Event;)V",
        "sendEventForNativeAnimatedEvent",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;",
        "sendEventForReanimated",
        "setGestureHandlerState",
        "unregisterRootHelper",
        "updateGestureHandler",
        "Companion",
        "FlingGestureHandlerFactory",
        "HandlerFactory",
        "LongPressGestureHandlerFactory",
        "ManualGestureHandlerFactory",
        "NativeViewGestureHandlerFactory",
        "PanGestureHandlerFactory",
        "PinchGestureHandlerFactory",
        "RotationGestureHandlerFactory",
        "TapGestureHandlerFactory",
        "react-native-gesture-handler_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;

.field private static final KEY_DIRECTION:Ljava/lang/String; = "direction"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_HIT_SLOP:Ljava/lang/String; = "hitSlop"

.field private static final KEY_HIT_SLOP_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final KEY_HIT_SLOP_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_HIT_SLOP_HORIZONTAL:Ljava/lang/String; = "horizontal"

.field private static final KEY_HIT_SLOP_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_HIT_SLOP_RIGHT:Ljava/lang/String; = "right"

.field private static final KEY_HIT_SLOP_TOP:Ljava/lang/String; = "top"

.field private static final KEY_HIT_SLOP_VERTICAL:Ljava/lang/String; = "vertical"

.field private static final KEY_HIT_SLOP_WIDTH:Ljava/lang/String; = "width"

.field private static final KEY_LONG_PRESS_MAX_DIST:Ljava/lang/String; = "maxDist"

.field private static final KEY_LONG_PRESS_MIN_DURATION_MS:Ljava/lang/String; = "minDurationMs"

.field private static final KEY_MANUAL_ACTIVATION:Ljava/lang/String; = "manualActivation"

.field private static final KEY_NATIVE_VIEW_DISALLOW_INTERRUPTION:Ljava/lang/String; = "disallowInterruption"

.field private static final KEY_NATIVE_VIEW_SHOULD_ACTIVATE_ON_START:Ljava/lang/String; = "shouldActivateOnStart"

.field private static final KEY_NEEDS_POINTER_DATA:Ljava/lang/String; = "needsPointerData"

.field private static final KEY_NUMBER_OF_POINTERS:Ljava/lang/String; = "numberOfPointers"

.field private static final KEY_PAN_ACTIVATE_AFTER_LONG_PRESS:Ljava/lang/String; = "activateAfterLongPress"

.field private static final KEY_PAN_ACTIVE_OFFSET_X_END:Ljava/lang/String; = "activeOffsetXEnd"

.field private static final KEY_PAN_ACTIVE_OFFSET_X_START:Ljava/lang/String; = "activeOffsetXStart"

.field private static final KEY_PAN_ACTIVE_OFFSET_Y_END:Ljava/lang/String; = "activeOffsetYEnd"

.field private static final KEY_PAN_ACTIVE_OFFSET_Y_START:Ljava/lang/String; = "activeOffsetYStart"

.field private static final KEY_PAN_AVG_TOUCHES:Ljava/lang/String; = "avgTouches"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_X_END:Ljava/lang/String; = "failOffsetXEnd"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_X_START:Ljava/lang/String; = "failOffsetXStart"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_Y_END:Ljava/lang/String; = "failOffsetYEnd"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_Y_START:Ljava/lang/String; = "failOffsetYStart"

.field private static final KEY_PAN_MAX_POINTERS:Ljava/lang/String; = "maxPointers"

.field private static final KEY_PAN_MIN_DIST:Ljava/lang/String; = "minDist"

.field private static final KEY_PAN_MIN_POINTERS:Ljava/lang/String; = "minPointers"

.field private static final KEY_PAN_MIN_VELOCITY:Ljava/lang/String; = "minVelocity"

.field private static final KEY_PAN_MIN_VELOCITY_X:Ljava/lang/String; = "minVelocityX"

.field private static final KEY_PAN_MIN_VELOCITY_Y:Ljava/lang/String; = "minVelocityY"

.field private static final KEY_SHOULD_CANCEL_WHEN_OUTSIDE:Ljava/lang/String; = "shouldCancelWhenOutside"

.field private static final KEY_TAP_MAX_DELAY_MS:Ljava/lang/String; = "maxDelayMs"

.field private static final KEY_TAP_MAX_DELTA_X:Ljava/lang/String; = "maxDeltaX"

.field private static final KEY_TAP_MAX_DELTA_Y:Ljava/lang/String; = "maxDeltaY"

.field private static final KEY_TAP_MAX_DIST:Ljava/lang/String; = "maxDist"

.field private static final KEY_TAP_MAX_DURATION_MS:Ljava/lang/String; = "maxDurationMs"

.field private static final KEY_TAP_MIN_POINTERS:Ljava/lang/String; = "minPointers"

.field private static final KEY_TAP_NUMBER_OF_TAPS:Ljava/lang/String; = "numberOfTaps"

.field public static final MODULE_NAME:Ljava/lang/String; = "RNGestureHandlerModule"


# instance fields
.field private final enqueuedRootViewInit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final eventListener:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

.field private final handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private final interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

.field private final registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

.field private final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 323
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

    invoke-direct {p1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;)V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->eventListener:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    .line 337
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$NativeViewGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$NativeViewGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 338
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$TapGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$TapGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 339
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$LongPressGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$LongPressGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 340
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 341
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 342
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 343
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$FlingGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$FlingGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    .line 344
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;-><init>()V

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    .line 336
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    .line 346
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-direct {p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;-><init>()V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    .line 347
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-direct {p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;-><init>()V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    .line 348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    .line 349
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->enqueuedRootViewInit:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$onHandlerUpdate(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->onHandlerUpdate(Lcom/swmansion/gesturehandler/GestureHandler;)V

    return-void
.end method

.method public static final synthetic access$onStateChange(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/GestureHandler;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->onStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V

    return-void
.end method

.method public static final synthetic access$onTouchEvent(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->onTouchEvent(Lcom/swmansion/gesturehandler/GestureHandler;)V

    return-void
.end method

.method private final native decorateRuntime(J)V
.end method

.method private final findFactoryForHandler(Lcom/swmansion/gesturehandler/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;)",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
            "TT;>;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    .line 715
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 504
    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method private final findRootHelperForViewAncestor(I)Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    .locals 7

    .line 490
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "reactApplicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/ExtensionsKt;->getUIManager(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/uimanager/UIManagerModule;

    move-result-object v0

    .line 491
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveRootTagFromReactTag(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return-object v0

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v2

    .line 496
    :try_start_0
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 713
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    .line 497
    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    instance-of v6, v6, Lcom/facebook/react/ReactRootView;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/ReactRootView;

    invoke-virtual {v5}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v5

    if-ne v5, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    move-object v0, v4

    .line 714
    :cond_3
    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    .line 495
    monitor-exit v2

    throw p1
.end method

.method private final onHandlerUpdate(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 509
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 514
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findFactoryForHandler(Lcom/swmansion/gesturehandler/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    move-result-object v0

    .line 516
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 518
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;

    invoke-virtual {v1, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;

    move-result-object p1

    .line 519
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 522
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;

    invoke-virtual {v1, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;

    move-result-object p1

    .line 523
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForNativeAnimatedEvent(Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;)V

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 530
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;

    invoke-virtual {v1, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;

    move-result-object p1

    .line 531
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 533
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 535
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;

    invoke-virtual {v1, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->createEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "onGestureHandlerEvent"

    .line 536
    invoke-direct {p0, v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final onStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(TT;II)V"
        }
    .end annotation

    .line 544
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findFactoryForHandler(Lcom/swmansion/gesturehandler/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    move-result-object v0

    .line 550
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 552
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    move-result-object p1

    .line 553
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_1

    .line 554
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 555
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 566
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;->createEventData(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;II)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "onGestureHandlerStateChange"

    .line 567
    invoke-direct {p0, p2, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 561
    :cond_3
    :goto_0
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/GestureHandler;IILcom/swmansion/gesturehandler/react/RNGestureHandlerEventDataExtractor;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    move-result-object p1

    .line 562
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final onTouchEvent(Lcom/swmansion/gesturehandler/GestureHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 574
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 579
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 580
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 582
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;

    move-result-object p1

    .line 583
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V

    goto :goto_0

    .line 584
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getActionType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 586
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;->createEventData(Lcom/swmansion/gesturehandler/GestureHandler;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "onGestureHandlerEvent"

    .line 587
    invoke-direct {p0, v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 618
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "reactApplicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/ExtensionsKt;->getDeviceEventEmitter(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/events/Event<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "reactApplicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/swmansion/gesturehandler/ReactContextExtensionsKt;->dispatchEvent(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private final sendEventForNativeAnimatedEvent(Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;)V
    .locals 2

    .line 608
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "reactApplicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-static {v0, p1}, Lcom/swmansion/gesturehandler/ReactContextExtensionsKt;->dispatchEvent(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private final sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/events/Event<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 599
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method


# virtual methods
.method public final attachGestureHandler(III)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->attachHandlerToView(III)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 379
    :cond_0
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handler with tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exists"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final createGestureHandler(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    const-string v0, "handlerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    array-length v1, v0

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 358
    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v3, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/GestureHandler;

    move-result-object p1

    .line 360
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->setTag(I)V

    .line 361
    iget-object p2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->eventListener:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

    check-cast p2, Lcom/swmansion/gesturehandler/OnTouchEventListener;

    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->setOnTouchEventListener(Lcom/swmansion/gesturehandler/OnTouchEventListener;)Lcom/swmansion/gesturehandler/GestureHandler;

    .line 363
    iget-object p2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {p2, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->registerHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V

    .line 364
    iget-object p2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {p2, p1, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->configureInteractions(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 365
    invoke-virtual {v3, p1, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->configure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 369
    :cond_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string p3, "Invalid handler name "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final dropGestureHandler(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->dropRelationsForHandlerWithTag(I)V

    .line 400
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropHandler(I)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Lkotlin/Pair;

    const/4 v3, 0x6

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    .line 443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "UNDETERMINED"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "BEGAN"

    .line 444
    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x1

    .line 447
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v5, v3, v6

    const/4 v5, 0x4

    .line 445
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ACTIVE"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v0

    const/4 v9, 0x3

    .line 446
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "CANCELLED"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v3, v9

    const-string v10, "FAILED"

    .line 447
    invoke-static {v10, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v3, v5

    const/4 v10, 0x5

    .line 448
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "END"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v3, v10

    .line 442
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v10, "State"

    invoke-static {v10, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v4

    new-array v3, v5, [Lkotlin/Pair;

    const-string v5, "RIGHT"

    .line 451
    invoke-static {v5, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "LEFT"

    .line 452
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v6

    const-string v1, "UP"

    .line 453
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0x8

    .line 454
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DOWN"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v9

    .line 450
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Direction"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v6

    .line 441
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNGestureHandlerModule"

    return-object v0
.end method

.method public final getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    return-object v0
.end method

.method public final handleClearJSResponder()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public final handleSetJSResponder(IZ)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 405
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findRootHelperForViewAncestor(I)Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->handleSetJSResponder(IZ)V

    :goto_0
    return-void
.end method

.method public final install()Z
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    :try_start_0
    const-string v0, "rngesturehandler_modules"

    .line 428
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 429
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->decorateRuntime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "[RNGestureHandler]"

    const-string v1, "Could not install JSI bindings."

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropAllHandlers()V

    .line 461
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->reset()V

    .line 462
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v0

    .line 463
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 465
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    .line 466
    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tearDown()V

    .line 467
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected root helper to get unregistered while tearing down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit v0

    .line 472
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    return-void

    :catchall_0
    move-exception v1

    .line 462
    monitor-exit v0

    throw v1
.end method

.method public final registerRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 4

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit v0

    return-void

    .line 478
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root helper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 476
    monitor-exit v0

    throw p1
.end method

.method public setGestureHandlerState(II)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->getHandler(I)Lcom/swmansion/gesturehandler/GestureHandler;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate(Z)V

    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    goto :goto_0

    .line 417
    :cond_4
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->begin()V

    goto :goto_0

    .line 419
    :cond_5
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    :goto_0
    return-void
.end method

.method public final unregisterRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 2

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final updateGestureHandler(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "TT;>;>(I",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->getHandler(I)Lcom/swmansion/gesturehandler/GestureHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findFactoryForHandler(Lcom/swmansion/gesturehandler/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v2, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->dropRelationsForHandlerWithTag(I)V

    .line 391
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {p1, v0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->configureInteractions(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 392
    invoke-virtual {v1, v0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->configure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_0
    return-void
.end method
