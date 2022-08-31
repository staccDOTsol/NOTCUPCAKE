.class public final Lcom/swmansion/rnscreens/LifecycleHelper;
.super Ljava/lang/Object;
.source "LifecycleHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/LifecycleHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\t\u001a\u00020\n\"\u000e\u0008\u0000\u0010\u000b*\u00020\u0007*\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u0002H\u000b\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0007H\u0002J#\u0010\u0010\u001a\u00020\n\"\u000e\u0008\u0000\u0010\u000b*\u00020\u0007*\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u0002H\u000b\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/LifecycleHelper;",
        "",
        "()V",
        "mRegisterOnLayoutChange",
        "Landroid/view/View$OnLayoutChangeListener;",
        "mViewToLifecycleMap",
        "",
        "Landroid/view/View;",
        "Landroidx/lifecycle/Lifecycle;",
        "register",
        "",
        "T",
        "Landroidx/lifecycle/LifecycleObserver;",
        "view",
        "(Landroid/view/View;)V",
        "registerViewWithLifecycleOwner",
        "unregister",
        "Companion",
        "react-native-screens_release"
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
.field public static final Companion:Lcom/swmansion/rnscreens/LifecycleHelper$Companion;


# instance fields
.field private final mRegisterOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

.field private final mViewToLifecycleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/LifecycleHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/LifecycleHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/LifecycleHelper;->Companion:Lcom/swmansion/rnscreens/LifecycleHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mViewToLifecycleMap:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/swmansion/rnscreens/LifecycleHelper$mRegisterOnLayoutChange$1;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/LifecycleHelper$mRegisterOnLayoutChange$1;-><init>(Lcom/swmansion/rnscreens/LifecycleHelper;)V

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    iput-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mRegisterOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static final synthetic access$registerViewWithLifecycleOwner(Lcom/swmansion/rnscreens/LifecycleHelper;Landroid/view/View;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/LifecycleHelper;->registerViewWithLifecycleOwner(Landroid/view/View;)V

    return-void
.end method

.method private final registerViewWithLifecycleOwner(Landroid/view/View;)V
    .locals 2

    .line 28
    sget-object v0, Lcom/swmansion/rnscreens/LifecycleHelper;->Companion:Lcom/swmansion/rnscreens/LifecycleHelper$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/LifecycleHelper$Companion;->findNearestScreenFragmentAncestor(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    instance-of v1, p1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "parent.lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 32
    iget-object v1, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mViewToLifecycleMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final register(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/lifecycle/LifecycleObserver;",
            ">(TT;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mRegisterOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final unregister(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/lifecycle/LifecycleObserver;",
            ">(TT;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mViewToLifecycleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
