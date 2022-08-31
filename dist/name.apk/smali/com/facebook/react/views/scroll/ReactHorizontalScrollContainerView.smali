.class public Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "ReactHorizontalScrollContainerView.java"


# instance fields
.field private mCurrentWidth:I

.field private mLayoutDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->isRTL(Landroid/content/Context;)Z

    move-result p1

    .line 26
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mLayoutDirection:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mCurrentWidth:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 47
    iget p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mLayoutDirection:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    sub-int/2addr p4, p2

    add-int/2addr p4, p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setLeft(I)V

    .line 54
    invoke-virtual {p0, p4}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->setRight(I)V

    .line 63
    iget p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mCurrentWidth:I

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getWidth()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    .line 67
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    iget p3, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mCurrentWidth:I

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    .line 68
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->getScrollY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mCurrentWidth:I

    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 2

    .line 37
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerView;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setRemoveClippedSubviews(Z)V

    return-void

    .line 42
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setRemoveClippedSubviews(Z)V

    return-void
.end method
