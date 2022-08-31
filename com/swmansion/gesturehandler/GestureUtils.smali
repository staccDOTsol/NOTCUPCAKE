.class public final Lcom/swmansion/gesturehandler/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/GestureUtils;",
        "",
        "()V",
        "getLastPointerX",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "averageTouches",
        "",
        "getLastPointerY",
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
.field public static final INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/swmansion/gesturehandler/GestureUtils;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/GestureUtils;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/GestureUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastPointerX(Landroid/view/MotionEvent;Z)F
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, v3, 0x1

    if-eq v3, v1, :cond_1

    .line 14
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v3, v0

    add-float/2addr p2, v3

    add-int/lit8 v4, v4, 0x1

    :cond_1
    if-lt v5, v2, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    :goto_2
    int-to-float p1, v3

    div-float/2addr p2, p1

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p2, v1, :cond_5

    add-int/lit8 p2, p2, -0x1

    .line 24
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    add-float p2, p1, v0

    :goto_3
    return p2
.end method

.method public final getLastPointerY(Landroid/view/MotionEvent;Z)F
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, v3, 0x1

    if-eq v3, v1, :cond_1

    .line 36
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v0

    add-float/2addr p2, v3

    add-int/lit8 v4, v4, 0x1

    :cond_1
    if-lt v5, v2, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    :goto_2
    int-to-float p1, v3

    div-float/2addr p2, p1

    goto :goto_3

    .line 42
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p2, v1, :cond_5

    add-int/lit8 p2, p2, -0x1

    .line 46
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float p2, p1, v0

    :goto_3
    return p2
.end method
