.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
.super Landroid/view/ViewGroup;
.source "RNGestureHandlerButtonViewManager.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerButtonViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerButtonViewManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup\n*L\n1#1,366:1\n133#1,3:367\n133#1,3:370\n133#1,3:373\n133#1,3:376\n133#1,3:379\n*S KotlinDebug\n*F\n+ 1 RNGestureHandlerButtonViewManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup\n*L\n98#1:367,3\n103#1:370,3\n107#1:373,3\n112#1:376,3\n137#1:379,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0001LB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010,\u001a\u00020\u0010H\u0016J\u0008\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\tH\u0016J\u0018\u00103\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\tH\u0016J\u0018\u00104\u001a\u00020\u00102\u000e\u0008\u0002\u00105\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002J\u0010\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020:H\u0016J0\u0010;\u001a\u0002002\u0006\u0010<\u001a\u00020\u00102\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u0007H\u0014J\u0010\u0010A\u001a\u00020\u00102\u0006\u0010B\u001a\u00020:H\u0017J\u0008\u0010C\u001a\u00020\u0010H\u0016J\u0010\u0010D\u001a\u0002002\u0006\u0010\u001b\u001a\u00020\u0007H\u0016J\u0010\u0010E\u001a\u0002002\u0006\u0010F\u001a\u00020\u0010H\u0016J\u0008\u0010G\u001a\u00020\u0010H\u0002J\u0006\u0010H\u001a\u000200J\u0017\u0010I\u001a\u0002002\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u0002000KH\u0082\u0008R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010!\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R*\u0010\"\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010!\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 R\u001a\u0010%\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0012\"\u0004\u0008\'\u0010\u0014R$\u0010)\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0010@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0012\"\u0004\u0008+\u0010\u0014\u00a8\u0006M"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;",
        "Landroid/view/ViewGroup;",
        "Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_backgroundColor",
        "",
        "radius",
        "",
        "borderRadius",
        "getBorderRadius",
        "()F",
        "setBorderRadius",
        "(F)V",
        "exclusive",
        "",
        "getExclusive",
        "()Z",
        "setExclusive",
        "(Z)V",
        "isTouched",
        "setTouched",
        "lastAction",
        "lastEventTime",
        "",
        "needBackgroundUpdate",
        "color",
        "rippleColor",
        "getRippleColor",
        "()Ljava/lang/Integer;",
        "setRippleColor",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "rippleRadius",
        "getRippleRadius",
        "setRippleRadius",
        "useBorderlessDrawable",
        "getUseBorderlessDrawable",
        "setUseBorderlessDrawable",
        "useForeground",
        "useDrawableOnForeground",
        "getUseDrawableOnForeground",
        "setUseDrawableOnForeground",
        "canBegin",
        "createSelectableDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "dispatchDrawableHotspotChanged",
        "",
        "x",
        "y",
        "drawableHotspotChanged",
        "isChildTouched",
        "children",
        "Lkotlin/sequences/Sequence;",
        "Landroid/view/View;",
        "onInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onTouchEvent",
        "event",
        "performClick",
        "setBackgroundColor",
        "setPressed",
        "pressed",
        "tryGrabbingResponder",
        "updateBackground",
        "withBackgroundUpdate",
        "block",
        "Lkotlin/Function0;",
        "Companion",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

.field private static dummyClickListener:Landroid/view/View$OnClickListener;

.field private static resolveOutValue:Landroid/util/TypedValue;

.field private static responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;


# instance fields
.field private _backgroundColor:I

.field private borderRadius:F

.field private exclusive:Z

.field private isTouched:Z

.field private lastAction:I

.field private lastEventTime:J

.field private needBackgroundUpdate:Z

.field private rippleColor:Ljava/lang/Integer;

.field private rippleRadius:Ljava/lang/Integer;

.field private useBorderlessDrawable:Z

.field private useDrawableOnForeground:Z


# direct methods
.method public static synthetic $r8$lambda$OXdgRstkDXi-4TlBWL5q7zq4ERw(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener$lambda-5(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

    .line 356
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    .line 358
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$$ExternalSyntheticLambda0;->INSTANCE:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    const-wide/16 v0, -0x1

    .line 119
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    .line 126
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setClickable(Z)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setFocusable(Z)V

    .line 129
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public static final synthetic access$getDummyClickListener$cp()Landroid/view/View$OnClickListener;
    .locals 1

    .line 94
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static final synthetic access$getResolveOutValue$cp()Landroid/util/TypedValue;
    .locals 1

    .line 94
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    return-object v0
.end method

.method public static final synthetic access$getResponder$cp()Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .locals 1

    .line 94
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-object v0
.end method

.method public static final synthetic access$setDummyClickListener$cp(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 94
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$setNeedBackgroundUpdate$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    return-void
.end method

.method public static final synthetic access$setResolveOutValue$cp(Landroid/util/TypedValue;)V
    .locals 0

    .line 94
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    return-void
.end method

.method public static final synthetic access$setResponder$cp(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;)V
    .locals 0

    .line 94
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-void
.end method

.method private final createSelectableDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x101030e

    sget-object v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 237
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resources.getDrawable(resolveOutValue.resourceId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-array v0, v1, [[I

    new-array v2, v1, [I

    const v3, 0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    .line 241
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    .line 242
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    new-array v1, v1, [I

    .line 243
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v4

    .line 244
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x101042c

    sget-object v6, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    invoke-virtual {v3, v5, v6, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-array v1, v1, [I

    .line 248
    sget-object v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    iget v3, v3, Landroid/util/TypedValue;->data:I

    aput v3, v1, v4

    .line 249
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 252
    :goto_0
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 255
    iget-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    check-cast v5, Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    :goto_1
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-direct {v0, v3, v4, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 258
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3

    if-eqz v2, :cond_3

    .line 259
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 262
    :cond_3
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static final dummyClickListener$lambda-5(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final isChildTouched(Lkotlin/sequences/Sequence;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 301
    instance-of v1, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    iget-boolean v3, v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    .line 303
    :cond_2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 304
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched(Lkotlin/sequences/Sequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 299
    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched(Lkotlin/sequences/Sequence;)Z

    move-result p0

    return p0
.end method

.method private final tryGrabbingResponder()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-static {p0, v0, v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 288
    :cond_0
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-nez v0, :cond_1

    .line 289
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return v1

    .line 292
    :cond_1
    iget-boolean v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    if-eqz v3, :cond_3

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_4
    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v1
.end method

.method private final withBackgroundUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    .line 134
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->access$setNeedBackgroundUpdate$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Z)V

    return-void
.end method


# virtual methods
.method public afterGestureEnd(Landroid/view/MotionEvent;)V
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->afterGestureEnd(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public canBegin()Z
    .locals 2

    .line 276
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryGrabbingResponder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    :cond_0
    return v0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 270
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    .line 271
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    :cond_1
    return-void
.end method

.method public final getBorderRadius()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    return v0
.end method

.method public final getExclusive()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    return v0
.end method

.method public final getRippleColor()Ljava/lang/Integer;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRippleRadius()Ljava/lang/Integer;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUseBorderlessDrawable()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    return v0
.end method

.method public final getUseDrawableOnForeground()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    return v0
.end method

.method public handleEventBeforeActivation(Landroid/view/MotionEvent;)V
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->handleEventBeforeActivation(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final isTouched()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isPressed()Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 173
    iget-wide v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 174
    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    .line 175
    iput v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    .line 176
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 316
    invoke-static {p0, v0, v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    const/4 p1, 0x1

    .line 380
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->access$setNeedBackgroundUpdate$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Z)V

    return-void
.end method

.method public final setBorderRadius(F)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    const/4 p1, 0x1

    .line 377
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->access$setNeedBackgroundUpdate$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Z)V

    return-void
.end method

.method public final setExclusive(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryGrabbingResponder()Z

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    invoke-static {p0, v1, v2, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 337
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eq v0, p0, :cond_4

    if-eqz v2, :cond_5

    .line 340
    :cond_4
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    .line 341
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setPressed(Z)V

    :cond_5
    if-nez p1, :cond_6

    .line 343
    sget-object p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne p1, p0, :cond_6

    .line 345
    sput-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->responder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 346
    iput-boolean v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    :cond_6
    return-void
.end method

.method public final setRippleColor(Ljava/lang/Integer;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 368
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->access$setNeedBackgroundUpdate$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Z)V

    return-void
.end method

.method public final setRippleRadius(Ljava/lang/Integer;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 371
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->access$setNeedBackgroundUpdate$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Z)V

    return-void
.end method

.method public final setTouched(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    return-void
.end method

.method public final setUseBorderlessDrawable(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    return-void
.end method

.method public final setUseDrawableOnForeground(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    const/4 p1, 0x1

    .line 374
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->access$setNeedBackgroundUpdate$p(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Z)V

    return-void
.end method

.method public shouldCancelRootViewGestureHandlerIfNecessary()Z
    .locals 1

    .line 94
    invoke-static {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldCancelRootViewGestureHandlerIfNecessary(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 94
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    return p1
.end method

.method public final updateBackground()V
    .locals 8

    .line 182
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 187
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    .line 193
    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->createSelectableDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    iget v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-float v2, v2, v4

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_4

    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_4

    .line 207
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    const/4 v6, -0x1

    invoke-direct {v2, v6}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 208
    iget v6, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 209
    move-object v6, v1

    check-cast v6, Landroid/graphics/drawable/RippleDrawable;

    const v7, 0x102002e

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7, v2}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 213
    :cond_4
    iget-boolean v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    .line 214
    invoke-virtual {p0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    if-eqz v0, :cond_9

    .line 216
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    .line 218
    :cond_5
    iget v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    if-nez v2, :cond_6

    .line 219
    invoke-virtual {p0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 221
    :cond_6
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 223
    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    cmpg-float v4, v3, v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_8

    .line 224
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 227
    :cond_8
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v0

    aput-object v1, v4, v5

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 228
    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public wantsToHandleEventBeforeActivation()Z
    .locals 1

    .line 94
    invoke-static {p0}, Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->wantsToHandleEventBeforeActivation(Lcom/swmansion/gesturehandler/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method
