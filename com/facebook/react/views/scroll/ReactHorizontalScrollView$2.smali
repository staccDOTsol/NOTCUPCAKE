.class Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "ReactHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->handlePostTouchScrolling(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRunning:Z

.field private mSnappingToPage:Z

.field private mStableFrames:I

.field final synthetic this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 1

    .line 769
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 771
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mSnappingToPage:Z

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mRunning:Z

    .line 773
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mStableFrames:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 777
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$100(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result v0

    const-wide/16 v1, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # setter for: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mActivelyScrolling:Z
    invoke-static {v0, v3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$102(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Z)Z

    .line 780
    iput v3, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mStableFrames:I

    .line 781
    iput-boolean v4, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mRunning:Z

    goto :goto_1

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;)Z

    .line 793
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mStableFrames:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mStableFrames:I

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 794
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mRunning:Z

    .line 796
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPagingEnabled:Z
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$200(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mSnappingToPage:Z

    if-nez v0, :cond_2

    .line 800
    iput-boolean v4, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mSnappingToPage:Z

    .line 801
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # invokes: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->flingAndSnap(I)V
    invoke-static {v0, v3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$300(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;I)V

    .line 802
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v0, p0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mSendMomentumEvents:Z
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$400(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # invokes: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->disableFpsListener()V
    invoke-static {v0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$500(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V

    .line 813
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->mRunning:Z

    if-eqz v0, :cond_4

    .line 814
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-static {v0, p0, v1, v2}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 817
    :cond_4
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$2;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$602(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_2
    return-void
.end method
