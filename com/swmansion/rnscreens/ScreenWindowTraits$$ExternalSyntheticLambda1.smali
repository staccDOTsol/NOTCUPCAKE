.class public final synthetic Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/Window;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda1;->f$0:Landroid/view/Window;

    iput p2, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda1;->f$0:Landroid/view/Window;

    iget v1, p0, Lcom/swmansion/rnscreens/ScreenWindowTraits$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->$r8$lambda$j2wkvcNLhwZw768Bho60WLki5LI(Landroid/view/Window;I)V

    return-void
.end method
