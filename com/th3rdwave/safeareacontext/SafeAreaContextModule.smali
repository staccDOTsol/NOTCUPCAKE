.class public final Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;
.super Lcom/th3rdwave/safeareacontext/NativeSafeAreaContextSpec;
.source "SafeAreaContextModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNCSafeAreaContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/th3rdwave/safeareacontext/SafeAreaContextModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0016J\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;",
        "Lcom/th3rdwave/safeareacontext/NativeSafeAreaContextSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getInitialWindowMetrics",
        "",
        "",
        "",
        "getName",
        "getTypedExportedConstants",
        "Companion",
        "react-native-safe-area-context_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/th3rdwave/safeareacontext/SafeAreaContextModule$Companion;

.field public static final NAME:Ljava/lang/String; = "RNCSafeAreaContext"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;->Companion:Lcom/th3rdwave/safeareacontext/SafeAreaContextModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/th3rdwave/safeareacontext/NativeSafeAreaContextSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private final getInitialWindowMetrics()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_1
    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    const v2, 0x1020002

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    return-object v1

    .line 23
    :cond_3
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;->getSafeAreaInsets(Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v3

    .line 24
    invoke-static {v0, v2}, Lcom/th3rdwave/safeareacontext/SafeAreaUtilsKt;->getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/th3rdwave/safeareacontext/Rect;

    move-result-object v0

    if-eqz v3, :cond_5

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 27
    invoke-static {v3}, Lcom/th3rdwave/safeareacontext/SerializationUtilsKt;->edgeInsetsToJavaMap(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "insets"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/th3rdwave/safeareacontext/SerializationUtilsKt;->rectToJavaMap(Lcom/th3rdwave/safeareacontext/Rect;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "frame"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    .line 26
    :cond_5
    :goto_3
    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    :goto_4
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCSafeAreaContext"

    return-object v0
.end method

.method public getTypedExportedConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaContextModule;->getInitialWindowMetrics()Ljava/util/Map;

    move-result-object v0

    const-string v1, "initialWindowMetrics"

    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "of<String, Any>(\"initial\u2026etInitialWindowMetrics())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
