.class public final Lcom/swmansion/rnscreens/LifecycleHelper$mRegisterOnLayoutChange$1;
.super Ljava/lang/Object;
.source "LifecycleHelper.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/LifecycleHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/swmansion/rnscreens/LifecycleHelper$mRegisterOnLayoutChange$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "i",
        "",
        "i1",
        "i2",
        "i3",
        "i4",
        "i5",
        "i6",
        "i7",
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


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/LifecycleHelper;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/LifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/swmansion/rnscreens/LifecycleHelper$mRegisterOnLayoutChange$1;->this$0:Lcom/swmansion/rnscreens/LifecycleHelper;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/swmansion/rnscreens/LifecycleHelper$mRegisterOnLayoutChange$1;->this$0:Lcom/swmansion/rnscreens/LifecycleHelper;

    # invokes: Lcom/swmansion/rnscreens/LifecycleHelper;->registerViewWithLifecycleOwner(Landroid/view/View;)V
    invoke-static {p2, p1}, Lcom/swmansion/rnscreens/LifecycleHelper;->access$registerViewWithLifecycleOwner(Lcom/swmansion/rnscreens/LifecycleHelper;Landroid/view/View;)V

    .line 23
    move-object p2, p0

    check-cast p2, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
