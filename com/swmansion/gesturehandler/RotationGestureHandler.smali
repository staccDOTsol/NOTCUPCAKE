.class public final Lcom/swmansion/gesturehandler/RotationGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "RotationGestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/RotationGestureHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/swmansion/gesturehandler/GestureHandler<",
        "Lcom/swmansion/gesturehandler/RotationGestureHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u0015H\u0014J\u0008\u0010\u001c\u001a\u00020\u0015H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/RotationGestureHandler;",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "()V",
        "anchorX",
        "",
        "getAnchorX",
        "()F",
        "anchorY",
        "getAnchorY",
        "gestureListener",
        "Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;",
        "<set-?>",
        "",
        "rotation",
        "getRotation",
        "()D",
        "rotationGestureDetector",
        "Lcom/swmansion/gesturehandler/RotationGestureDetector;",
        "velocity",
        "getVelocity",
        "activate",
        "",
        "force",
        "",
        "onHandle",
        "event",
        "Landroid/view/MotionEvent;",
        "onReset",
        "resetProgress",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/RotationGestureHandler$Companion;

.field private static final ROTATION_RECOGNITION_THRESHOLD:D = 0.08726646259971647


# instance fields
.field private final gestureListener:Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;

.field private rotation:D

.field private rotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

.field private velocity:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/RotationGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/RotationGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->Companion:Lcom/swmansion/gesturehandler/RotationGestureHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;

    .line 23
    new-instance v0, Lcom/swmansion/gesturehandler/RotationGestureHandler$gestureListener$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler$gestureListener$1;-><init>(Lcom/swmansion/gesturehandler/RotationGestureHandler;)V

    check-cast v0, Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;

    return-void
.end method

.method public static final synthetic access$setRotation$p(Lcom/swmansion/gesturehandler/RotationGestureHandler;D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotation:D

    return-void
.end method

.method public static final synthetic access$setVelocity$p(Lcom/swmansion/gesturehandler/RotationGestureHandler;D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->velocity:D

    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->resetProgress()V

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->activate(Z)V

    return-void
.end method

.method public final getAnchorX()F
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->getAnchorX()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final getAnchorY()F
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->getAnchorY()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final getRotation()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotation:D

    return-wide v0
.end method

.method public final getVelocity()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->velocity:D

    return-wide v0
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->resetProgress()V

    .line 47
    new-instance v0, Lcom/swmansion/gesturehandler/RotationGestureDetector;

    iget-object v1, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->gestureListener:Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/RotationGestureDetector;-><init>(Lcom/swmansion/gesturehandler/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    .line 48
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->begin()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->end()V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->fail()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onReset()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotationGestureDetector:Lcom/swmansion/gesturehandler/RotationGestureDetector;

    .line 70
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/RotationGestureHandler;->resetProgress()V

    return-void
.end method

.method public resetProgress()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->velocity:D

    .line 75
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/RotationGestureHandler;->rotation:D

    return-void
.end method
