.class Lcom/facebook/react/views/scroll/ReactScrollView$1;
.super Ljava/lang/Object;
.source "ReactScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactScrollView;->handlePostTouchScrolling(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRunning:Z

.field private mSnappingToPage:Z

.field private mStableFrames:I

.field final synthetic this$0:Lcom/facebook/react/views/scroll/ReactScrollView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/scroll/ReactScrollView;)V
    .locals 1

    .line 558
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 560
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mSnappingToPage:Z

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    .line 562
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 566
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$000(Lcom/facebook/react/views/scroll/ReactScrollView;)Z

    move-result v0

    const-wide/16 v1, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    # setter for: Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z
    invoke-static {v0, v3}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$002(Lcom/facebook/react/views/scroll/ReactScrollView;Z)Z

    .line 569
    iput v3, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    .line 570
    iput-boolean v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    goto :goto_1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;)Z

    .line 582
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mStableFrames:I

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 583
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    .line 585
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$100(Lcom/facebook/react/views/scroll/ReactScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mSnappingToPage:Z

    if-nez v0, :cond_2

    .line 589
    iput-boolean v4, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mSnappingToPage:Z

    .line 590
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    # invokes: Lcom/facebook/react/views/scroll/ReactScrollView;->flingAndSnap(I)V
    invoke-static {v0, v3}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$200(Lcom/facebook/react/views/scroll/ReactScrollView;I)V

    .line 591
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0, p0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$300(Lcom/facebook/react/views/scroll/ReactScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    # invokes: Lcom/facebook/react/views/scroll/ReactScrollView;->disableFpsListener()V
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$400(Lcom/facebook/react/views/scroll/ReactScrollView;)V

    .line 602
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->mRunning:Z

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-static {v0, p0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 606
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactScrollView;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->access$502(Lcom/facebook/react/views/scroll/ReactScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_2
    return-void
.end method
