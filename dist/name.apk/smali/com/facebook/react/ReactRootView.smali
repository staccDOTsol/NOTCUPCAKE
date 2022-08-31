.class public Lcom/facebook/react/ReactRootView;
.super Landroid/widget/FrameLayout;
.source "ReactRootView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/RootView;
.implements Lcom/facebook/react/uimanager/ReactRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;,
        Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReactRootView"


# instance fields
.field private final mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

.field private mAppProperties:Landroid/os/Bundle;

.field private mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

.field private mHeightMeasureSpec:I

.field private mInitialUITemplate:Ljava/lang/String;

.field private mIsAttachedToInstance:Z

.field private mJSModuleName:Ljava/lang/String;

.field private mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

.field private mLastHeight:I

.field private mLastOffsetX:I

.field private mLastOffsetY:I

.field private mLastWidth:I

.field private mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

.field private mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

.field private mRootViewTag:I

.field private mShouldLogContentAppeared:Z

.field private final mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mUIManagerType:I

.field private mWasMeasured:Z

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 100
    new-instance v0, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    .line 102
    iput-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 103
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 104
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 105
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 106
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    const/high16 v0, -0x80000000

    .line 107
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 108
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    const/4 v0, 0x1

    .line 109
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 100
    new-instance p2, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-direct {p2, p0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object p2, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    .line 102
    iput-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 103
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 104
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 105
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 106
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    const/high16 p2, -0x80000000

    .line 107
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 108
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    const/4 p2, 0x1

    .line 109
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    .line 110
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    .line 100
    new-instance p2, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-direct {p2, p0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object p2, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    .line 102
    iput-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 103
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 104
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 105
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 106
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    const/high16 p2, -0x80000000

    .line 107
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 108
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    const/4 p2, 0x1

    .line 109
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    .line 110
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/ReactRootView;)Lcom/facebook/react/ReactInstanceManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/react/ReactRootView;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    return p0
.end method

.method static synthetic access$300(Lcom/facebook/react/ReactRootView;)I
    .locals 0

    .line 80
    iget p0, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    return p0
.end method

.method private attachToReactInstanceManager()V
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, "attachToReactInstanceManager"

    .line 717
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 718
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 722
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 731
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 739
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 740
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 735
    :try_start_1
    iput-boolean v2, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 736
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v2, p0}, Lcom/facebook/react/ReactInstanceManager;->attachRootView(Lcom/facebook/react/uimanager/ReactRoot;)V

    .line 737
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 740
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception v2

    .line 739
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ATTACH_TO_REACT_INSTANCE_MANAGER_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 740
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 741
    throw v2

    .line 723
    :cond_1
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to attach a ReactRootView with an explicit id already set to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchJSTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    const-string v1, "ReactRootView"

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v2, :cond_3

    .line 308
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    if-nez v0, :cond_1

    const-string p1, "Unable to dispatch touch to JS before the dispatcher is available"

    .line 313
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    invoke-interface {v0}, Lcom/facebook/react/bridge/UIManager;->getEventDispatcher()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 321
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->handleTouchEvent(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "Unable to dispatch touch to JS as the catalyst instance has not been attached"

    .line 309
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    invoke-direct {v0, p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;-><init>(Lcom/facebook/react/ReactRootView;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mCustomGlobalLayoutListener:Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    return-object v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/facebook/react/ReactRootView;->setClipChildren(Z)V

    return-void
.end method

.method private isDispatcherReady()Z
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    const/4 v1, 0x0

    const-string v2, "ReactRootView"

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    if-nez v0, :cond_1

    const-string v0, "Unable to dispatch touch to JS before the dispatcher is available"

    .line 230
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const-string v0, "Unable to dispatch touch to JS as the catalyst instance has not been attached"

    .line 226
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isFabric()Z
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRootViewTagSet()Z
    .locals 2

    .line 761
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeOnGlobalLayoutListener()V
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setSurfaceConstraintsToScreenSize()V
    .locals 3

    .line 465
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 466
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, -0x80000000

    .line 467
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 468
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 469
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    return-void
.end method

.method private updateRootLayoutSpecs(ZII)V
    .locals 9

    .line 509
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 510
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    const-string v1, "ReactRootView"

    if-nez v0, :cond_0

    .line 511
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-string p1, "Unable to update root layout specs for uninitialized ReactInstanceManager"

    .line 512
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isFabric()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isRootViewTagSet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 519
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-string p1, "Unable to update root layout specs for ReactRootView: no rootViewTag set yet"

    .line 520
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 529
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 536
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getViewportOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 537
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 538
    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 541
    iget p1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    if-ne v1, p1, :cond_3

    iget p1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    if-eq v0, p1, :cond_4

    .line 543
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v4

    move v5, p2

    move v6, p3

    move v7, v1

    move v8, v0

    .line 542
    invoke-interface/range {v3 .. v8}, Lcom/facebook/react/bridge/UIManager;->updateRootLayoutSpecs(IIIII)V

    .line 545
    :cond_4
    iput v1, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetX:I

    .line 546
    iput v0, p0, Lcom/facebook/react/ReactRootView;->mLastOffsetY:I

    .line 550
    :cond_5
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_UPDATE_LAYOUT_SPECS_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 255
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactRootView;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 272
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string v0, "ReactRootView"

    const-string v1, "Unable to handle key event as the catalyst instance has not been attached"

    .line 268
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 746
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 747
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The application this ReactRootView was rendering was not unmounted before the ReactRootView was garbage collected. This usually means that your application is leaking large amounts of memory. To solve this, make sure to call ReactRootView#unmountReactApplication in the onDestroy() of your hosting Activity or in the onDestroyView() of your hosting Fragment."

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    return-void
.end method

.method public getAppProperties()Landroid/os/Bundle;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeightMeasureSpec()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    return v0
.end method

.method public getInitialUITemplate()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mInitialUITemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getJSModuleName()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    return-object v0
.end method

.method public getRootViewGroup()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getRootViewTag()I
    .locals 1

    .line 757
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    return v0
.end method

.method public getState()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public getSurfaceID()Ljava/lang/String;
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getAppProperties()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "surfaceID"

    .line 491
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUIManagerType()I
    .locals 1

    .line 784
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    return v0
.end method

.method public getWidthMeasureSpec()I
    .locals 1

    .line 474
    iget v0, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    return v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    .line 775
    iget-object p1, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/Exception;)V

    return-void

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onAttachedToReactInstance()V
    .locals 1

    .line 621
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    .line 622
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v0, p0}, Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;->onAttachedToReactInstance(Lcom/facebook/react/ReactRootView;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 350
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 351
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->removeOnGlobalLayoutListener()V

    .line 353
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onChildEndedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isDispatcherReady()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object p1

    .line 214
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    invoke-interface {p1}, Lcom/facebook/react/bridge/UIManager;->getEventDispatcher()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 218
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v0, p2, p1}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildEndedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    :cond_1
    return-void
.end method

.method public onChildStartedNativeGesture(Landroid/view/MotionEvent;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isDispatcherReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v0}, Lcom/facebook/react/bridge/UIManager;->getEventDispatcher()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 199
    iget-object v1, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;->onChildStartedNativeGesture(Landroid/view/MotionEvent;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    :cond_1
    return-void
.end method

.method public onChildStartedNativeGesture(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 205
    invoke-virtual {p0, p2}, Lcom/facebook/react/ReactRootView;->onChildStartedNativeGesture(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 359
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 360
    iget-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->removeOnGlobalLayoutListener()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-virtual {v0}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->clearFocus()V

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "ReactRootView"

    const-string v1, "Unable to handle focus changed event as the catalyst instance has not been attached"

    .line 280
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactRootView;->dispatchJSTouchEvent(Landroid/view/MotionEvent;)V

    .line 240
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 339
    iget-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isFabric()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 340
    iget p2, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    iget p3, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/ReactRootView;->updateRootLayoutSpecs(ZII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    const-wide/16 v0, 0x0

    const-string v2, "ReactRootView.onMeasure"

    .line 133
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 134
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ON_MEASURE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 136
    :try_start_0
    iget v2, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 138
    :goto_1
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    .line 139
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    .line 143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_3

    if-nez v5, :cond_2

    goto :goto_2

    .line 155
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_4

    :cond_3
    :goto_2
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 145
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 146
    invoke-virtual {p0, v5}, Lcom/facebook/react/ReactRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 148
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 149
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 150
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    .line 151
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v8, v7

    .line 152
    invoke-static {p1, v8}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 157
    :cond_4
    :goto_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eq v5, v6, :cond_6

    if-nez v5, :cond_5

    goto :goto_5

    .line 169
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_7

    :cond_6
    :goto_5
    const/4 p2, 0x0

    .line 159
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 160
    invoke-virtual {p0, v3}, Lcom/facebook/react/ReactRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 163
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 164
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    .line 165
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v6, v5

    .line 166
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 171
    :cond_7
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/ReactRootView;->setMeasuredDimension(II)V

    .line 172
    iput-boolean v4, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    .line 175
    iget-object v3, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-nez v3, :cond_8

    .line 176
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->attachToReactInstanceManager()V

    goto :goto_8

    :cond_8
    if-nez v2, :cond_9

    .line 177
    iget v2, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    if-ne v2, p1, :cond_9

    iget v2, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I

    if-eq v2, p2, :cond_a

    .line 178
    :cond_9
    iget v2, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    iget v3, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    invoke-direct {p0, v4, v2, v3}, Lcom/facebook/react/ReactRootView;->updateRootLayoutSpecs(ZII)V

    .line 180
    :cond_a
    :goto_8
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mLastWidth:I

    .line 181
    iput p2, p0, Lcom/facebook/react/ReactRootView;->mLastHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ON_MEASURE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 185
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception p1

    .line 184
    sget-object p2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ROOT_VIEW_ON_MEASURE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 185
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 186
    throw p1
.end method

.method public onStage(I)V
    .locals 1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->onAttachedToReactInstance()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/facebook/react/ReactRootView;->dispatchJSTouchEvent(Landroid/view/MotionEvent;)V

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 371
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 374
    instance-of v0, p1, Lcom/facebook/react/uimanager/ReactClippingProhibitedView;

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Lcom/facebook/react/ReactRootView$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/ReactRootView$1;-><init>(Lcom/facebook/react/ReactRootView;Landroid/view/View;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    :cond_0
    iget-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 394
    iput-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    .line 396
    iget-object p1, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 397
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CONTENT_APPEARED:Lcom/facebook/react/bridge/ReactMarkerConstants;

    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    invoke-static {p1, v0, v1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mAndroidHWInputDeviceHelper:Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;

    invoke-virtual {v0, p2}, Lcom/facebook/react/ReactAndroidHWInputDeviceHelper;->onFocusChanged(Landroid/view/View;)V

    .line 302
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "ReactRootView"

    const-string v1, "Unable to handle child focus changed event as the catalyst instance has not been attached"

    .line 295
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public runApplication()V
    .locals 9

    const-wide/16 v0, 0x0

    const-string v2, "ReactRootView.runApplication"

    .line 661
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 663
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 690
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    .line 672
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v2

    .line 673
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getJSModuleName()Ljava/lang/String;

    move-result-object v3

    .line 675
    iget-boolean v4, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 676
    iget v4, p0, Lcom/facebook/react/ReactRootView;->mWidthMeasureSpec:I

    iget v6, p0, Lcom/facebook/react/ReactRootView;->mHeightMeasureSpec:I

    invoke-direct {p0, v5, v4, v6}, Lcom/facebook/react/ReactRootView;->updateRootLayoutSpecs(ZII)V

    .line 679
    :cond_2
    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string v6, "rootTag"

    .line 680
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v4, v6, v7, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 681
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getAppProperties()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "initialProps"

    .line 683
    invoke-static {v6}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 686
    :cond_3
    iput-boolean v5, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    .line 688
    const-class v5, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/CatalystInstance;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/appregistry/AppRegistry;

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/modules/appregistry/AppRegistry;->runApplication(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :cond_4
    :goto_0
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 691
    throw v2
.end method

.method sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 796
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 797
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAppProperties(Landroid/os/Bundle;)V
    .locals 0

    .line 648
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 649
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    .line 650
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isRootViewTagSet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->runApplication()V

    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewEventListener:Lcom/facebook/react/ReactRootView$ReactRootViewEventListener;

    return-void
.end method

.method public setIsFabric(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 779
    :goto_0
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mUIManagerType:I

    return-void
.end method

.method public setRootViewTag(I)V
    .locals 0

    .line 765
    iput p1, p0, Lcom/facebook/react/ReactRootView;->mRootViewTag:I

    return-void
.end method

.method public setShouldLogContentAppeared(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    return-void
.end method

.method simulateAttachForTesting()V
    .locals 1

    const/4 v0, 0x1

    .line 700
    iput-boolean v0, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    .line 701
    new-instance v0, Lcom/facebook/react/uimanager/JSTouchDispatcher;

    invoke-direct {v0, p0}, Lcom/facebook/react/uimanager/JSTouchDispatcher;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mJSTouchDispatcher:Lcom/facebook/react/uimanager/JSTouchDispatcher;

    return-void
.end method

.method simulateCheckForKeyboardForTesting()V
    .locals 1

    .line 706
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->getCustomGlobalLayoutListener()Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;

    move-result-object v0

    # invokes: Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForKeyboardEvents()V
    invoke-static {v0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->access$000(Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;)V

    return-void
.end method

.method public startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, "startReactApplication"

    .line 432
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 434
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 439
    iget-object v2, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "This root view has already been attached to a catalyst instance manager"

    invoke-static {v2, v3}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 443
    iput-object p1, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 444
    iput-object p2, p0, Lcom/facebook/react/ReactRootView;->mJSModuleName:Ljava/lang/String;

    .line 445
    iput-object p3, p0, Lcom/facebook/react/ReactRootView;->mAppProperties:Landroid/os/Bundle;

    .line 446
    iput-object p4, p0, Lcom/facebook/react/ReactRootView;->mInitialUITemplate:Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    .line 451
    sget-boolean p1, Lcom/facebook/react/config/ReactFeatureFlags;->enableEagerRootViewAttachment:Z

    if-eqz p1, :cond_2

    .line 452
    iget-boolean p1, p0, Lcom/facebook/react/ReactRootView;->mWasMeasured:Z

    if-nez p1, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->setSurfaceConstraintsToScreenSize()V

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->attachToReactInstanceManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_2
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 461
    throw p1
.end method

.method public unmountReactApplication()V
    .locals 3

    .line 561
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 568
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView;->isFabric()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getUIManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->getId()I

    move-result v1

    const/4 v2, -0x1

    .line 580
    invoke-virtual {p0, v2}, Lcom/facebook/react/ReactRootView;->setId(I)V

    .line 583
    invoke-virtual {p0}, Lcom/facebook/react/ReactRootView;->removeAllViews()V

    if-ne v1, v2, :cond_0

    .line 586
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unmountReactApplication called on ReactRootView with invalid id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "ReactRootView"

    invoke-static {v1, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 591
    :cond_0
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/UIManager;->stopSurface(I)V

    .line 597
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    if-eqz v2, :cond_2

    .line 598
    invoke-virtual {v0, p0}, Lcom/facebook/react/ReactInstanceManager;->detachRootView(Lcom/facebook/react/uimanager/ReactRoot;)V

    .line 599
    iput-boolean v1, p0, Lcom/facebook/react/ReactRootView;->mIsAttachedToInstance:Z

    :cond_2
    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lcom/facebook/react/ReactRootView;->mReactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 602
    iput-boolean v1, p0, Lcom/facebook/react/ReactRootView;->mShouldLogContentAppeared:Z

    return-void
.end method
