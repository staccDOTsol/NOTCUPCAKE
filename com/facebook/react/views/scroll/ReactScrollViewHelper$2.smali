.class Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;
.super Ljava/lang/Object;
.source "ReactScrollViewHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->registerFlingAnimator(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$scrollView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;->val$scrollView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 508
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;->val$scrollView:Landroid/view/ViewGroup;

    check-cast p1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setIsCanceled(Z)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 502
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;->val$scrollView:Landroid/view/ViewGroup;

    check-cast p1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setIsFinished(Z)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 503
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;->val$scrollView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 494
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;->val$scrollView:Landroid/view/ViewGroup;

    check-cast p1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    .line 495
    invoke-interface {p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object p1

    const/4 v0, 0x0

    .line 496
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setIsCanceled(Z)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 497
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setIsFinished(Z)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    return-void
.end method
