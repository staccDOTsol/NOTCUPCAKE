.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;
.super Ljava/lang/Object;
.source "RNGestureHandlerInteractionManager.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerInteractionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerInteractionManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,62:1\n12731#2,2:63\n12731#2,2:65\n*S KotlinDebug\n*F\n+ 1 RNGestureHandlerInteractionManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager\n*L\n38#1:63,2\n50#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0007\u001a\u00020\u00082\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0008J \u0010\u0014\u001a\u00020\u00152\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0016J \u0010\u0017\u001a\u00020\u00152\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0016J \u0010\u0018\u001a\u00020\u00152\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0016J \u0010\u0019\u001a\u00020\u00152\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n2\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;",
        "Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;",
        "()V",
        "simultaneousRelations",
        "Landroid/util/SparseArray;",
        "",
        "waitForRelations",
        "configureInteractions",
        "",
        "handler",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "convertHandlerTagsArray",
        "key",
        "",
        "dropRelationsForHandlerWithTag",
        "handlerTag",
        "",
        "reset",
        "shouldHandlerBeCancelledBy",
        "",
        "otherHandler",
        "shouldRecognizeSimultaneously",
        "shouldRequireHandlerToWaitForFailure",
        "shouldWaitForHandlerFailure",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;

.field private static final KEY_SIMULTANEOUS_HANDLERS:Ljava/lang/String; = "simultaneousHandlers"

.field private static final KEY_WAIT_FOR:Ljava/lang/String; = "waitFor"


# instance fields
.field private final simultaneousRelations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final waitForRelations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    return-void
.end method

.method private final convertHandlerTagsArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)[I
    .locals 4

    .line 17
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "config.getArray(key)!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p2

    new-array v0, p2, [I

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 20
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    if-le v2, p2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final configureInteractions(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;

    invoke-virtual {p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->setInteractionController(Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;)Lcom/swmansion/gesturehandler/GestureHandler;

    const-string v0, "waitFor"

    .line 27
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-direct {p0, p2, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->convertHandlerTagsArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)[I

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const-string v0, "simultaneousHandlers"

    .line 31
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-direct {p0, p2, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->convertHandlerTagsArray(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)[I

    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final dropRelationsForHandlerWithTag(I)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 54
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "otherHandler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->simultaneousRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    aget v4, p1, v2

    .line 50
    invoke-virtual {p2}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public shouldRequireHandlerToWaitForFailure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "otherHandler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;",
            "Lcom/swmansion/gesturehandler/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->waitForRelations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 63
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    aget v4, p1, v2

    .line 38
    invoke-virtual {p2}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method
