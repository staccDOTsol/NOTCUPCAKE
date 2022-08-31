.class public Lcom/facebook/react/viewmanagers/ProgressViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "ProgressViewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "trackImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "progressTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "progressImage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "trackTintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "progress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "progressViewStyle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 42
    :pswitch_0
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ProgressViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;->setTrackImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 33
    :pswitch_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ProgressViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;->setProgressTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_2

    .line 39
    :pswitch_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ProgressViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;

    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;->setProgressImage(Landroid/view/View;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 36
    :pswitch_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ProgressViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;->setTrackTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_2

    .line 30
    :pswitch_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ProgressViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;

    if-nez p3, :cond_6

    const/4 p3, 0x0

    goto :goto_1

    :cond_6
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p3

    :goto_1
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;->setProgress(Landroid/view/View;F)V

    goto :goto_2

    .line 27
    :pswitch_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ProgressViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ProgressViewManagerInterface;->setProgressViewStyle(Landroid/view/View;Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x742aada1 -> :sswitch_5
        -0x3bab3dd3 -> :sswitch_4
        -0x1120fbe3 -> :sswitch_3
        0x2d564b2e -> :sswitch_2
        0x3962117b -> :sswitch_1
        0x43e9ded0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
