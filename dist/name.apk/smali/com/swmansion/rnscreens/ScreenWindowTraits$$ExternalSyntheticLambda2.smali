.class public final synthetic Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/core/view/WindowInsetsControllerCompat;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/core/view/WindowInsetsControllerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda2;->f$1:Landroidx/core/view/WindowInsetsControllerCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda2;->f$1:Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-static {v0, v1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->$r8$lambda$gjsvvvQMK_CLF239gSdgnep4CEg(ZLandroidx/core/view/WindowInsetsControllerCompat;)V

    return-void
.end method
