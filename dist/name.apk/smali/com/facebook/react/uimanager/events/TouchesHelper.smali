.class public Lcom/facebook/react/uimanager/events/TouchesHelper;
.super Ljava/lang/Object;
.source "TouchesHelper.java"


# static fields
.field public static final CHANGED_TOUCHES_KEY:Ljava/lang/String; = "changedTouches"

.field private static final LOCATION_X_KEY:Ljava/lang/String; = "locationX"

.field private static final LOCATION_Y_KEY:Ljava/lang/String; = "locationY"

.field private static final PAGE_X_KEY:Ljava/lang/String; = "pageX"

.field private static final PAGE_Y_KEY:Ljava/lang/String; = "pageY"

.field private static final POINTER_IDENTIFIER_KEY:Ljava/lang/String; = "identifier"

.field private static final TAG:Ljava/lang/String; = "TouchesHelper"

.field public static final TARGET_KEY:Ljava/lang/String; = "target"

.field public static final TARGET_SURFACE_KEY:Ljava/lang/String; = "targetSurface"

.field private static final TIMESTAMP_KEY:Ljava/lang/String; = "timestamp"

.field public static final TOUCHES_KEY:Ljava/lang/String; = "touches"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPointersArray(Lcom/facebook/react/uimanager/events/TouchEvent;)[Lcom/facebook/react/bridge/WritableMap;
    .locals 10

    .line 40
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/react/bridge/WritableMap;

    .line 50
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 51
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewY()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    .line 53
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 54
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    .line 57
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string v8, "pageX"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 58
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string v8, "pageY"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 61
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v6, v2

    .line 62
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v7, v3

    .line 63
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v8, v6

    const-string v6, "locationX"

    invoke-interface {v5, v6, v8, v9}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 64
    invoke-static {v7}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    float-to-double v6, v6

    const-string v8, "locationY"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 65
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getSurfaceId()I

    move-result v6

    const-string v7, "targetSurface"

    invoke-interface {v5, v7, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v6

    const-string v7, "target"

    invoke-interface {v5, v7, v6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/events/TouchEvent;->getTimestampMs()J

    move-result-wide v6

    long-to-double v6, v6

    const-string v8, "timestamp"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    int-to-double v6, v6

    const-string v8, "identifier"

    invoke-interface {v5, v8, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 70
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static varargs getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4

    .line 186
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 187
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {v3}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    :cond_0
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static sendTouchEvent(Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 17

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchesHelper.sentTouchEventModern("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 118
    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getTouchEventType()Lcom/facebook/react/uimanager/events/TouchEventType;

    move-result-object v0

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot dispatch a TouchEvent that has no MotionEvent; the TouchEvent has been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "TouchesHelper"

    invoke-static {v1, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 132
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->createPointersArray(Lcom/facebook/react/uimanager/events/TouchEvent;)[Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    .line 135
    sget-object v5, Lcom/facebook/react/uimanager/events/TouchesHelper$1;->$SwitchMap$com$facebook$react$uimanager$events$TouchEventType:[I

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/TouchEventType;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_5

    const/4 v8, 0x2

    if-eq v0, v8, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    move-object v0, v4

    move-object v4, v5

    goto :goto_1

    :cond_1
    new-array v0, v6, [Lcom/facebook/react/bridge/WritableMap;

    goto :goto_1

    .line 153
    :cond_2
    array-length v0, v4

    new-array v0, v0, [Lcom/facebook/react/bridge/WritableMap;

    const/4 v3, 0x0

    .line 154
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 155
    aget-object v5, v4, v3

    invoke-interface {v5}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 147
    aget-object v3, v4, v0

    .line 148
    aput-object v5, v4, v0

    new-array v0, v7, [Lcom/facebook/react/bridge/WritableMap;

    aput-object v3, v0, v6

    :cond_4
    move-object/from16 v16, v4

    move-object v4, v0

    move-object/from16 v0, v16

    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    new-array v3, v7, [Lcom/facebook/react/bridge/WritableMap;

    .line 139
    aget-object v0, v4, v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    aput-object v0, v3, v6

    move-object v0, v4

    move-object v4, v3

    .line 164
    :goto_1
    array-length v3, v4

    :goto_2
    if-ge v6, v3, :cond_6

    aget-object v5, v4, v6

    .line 165
    invoke-interface {v5}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v14

    .line 166
    invoke-static {v7, v4}, Lcom/facebook/react/uimanager/events/TouchesHelper;->getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v5

    .line 167
    invoke-static {v7, v0}, Lcom/facebook/react/uimanager/events/TouchesHelper;->getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v8

    const-string v9, "changedTouches"

    .line 169
    invoke-interface {v14, v9, v5}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v5, "touches"

    .line 170
    invoke-interface {v14, v5, v8}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getSurfaceId()I

    move-result v9

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getViewTag()I

    move-result v10

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventName()Ljava/lang/String;

    move-result-object v11

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->canCoalesce()Z

    move-result v12

    const/4 v13, 0x0

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getEventCategory()I

    move-result v15

    move-object/from16 v8, p0

    .line 172
    invoke-interface/range {v8 .. v15}, Lcom/facebook/react/uimanager/events/RCTModernEventEmitter;->receiveEvent(IILjava/lang/String;ZILcom/facebook/react/bridge/WritableMap;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 182
    :cond_6
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void
.end method

.method public static sendTouchesLegacy(Lcom/facebook/react/uimanager/events/RCTEventEmitter;Lcom/facebook/react/uimanager/events/TouchEvent;)V
    .locals 5

    .line 84
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getTouchEventType()Lcom/facebook/react/uimanager/events/TouchEventType;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->createPointersArray(Lcom/facebook/react/uimanager/events/TouchEvent;)[Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/facebook/react/uimanager/events/TouchesHelper;->getWritableArray(Z[Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object p1

    .line 92
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 93
    sget-object v4, Lcom/facebook/react/uimanager/events/TouchEventType;->MOVE:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/facebook/react/uimanager/events/TouchEventType;->CANCEL:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-ne v0, v4, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    sget-object v2, Lcom/facebook/react/uimanager/events/TouchEventType;->START:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/facebook/react/uimanager/events/TouchEventType;->END:Lcom/facebook/react/uimanager/events/TouchEventType;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown touch type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_2

    .line 94
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 95
    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/facebook/react/uimanager/events/TouchEventType;->getJSEventName(Lcom/facebook/react/uimanager/events/TouchEventType;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1, v3}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V

    return-void
.end method
