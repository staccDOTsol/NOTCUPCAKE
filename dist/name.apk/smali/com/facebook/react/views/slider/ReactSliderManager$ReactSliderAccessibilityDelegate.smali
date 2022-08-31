.class public Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderAccessibilityDelegate;
.super Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;
.source "ReactSliderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/slider/ReactSliderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReactSliderAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/slider/ReactSliderManager;


# direct methods
.method protected constructor <init>(Lcom/facebook/react/views/slider/ReactSliderManager;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderAccessibilityDelegate;->this$0:Lcom/facebook/react/views/slider/ReactSliderManager;

    invoke-direct {p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;-><init>()V

    return-void
.end method

.method private isSliderAction(I)Z
    .locals 1

    .line 314
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 315
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 316
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 321
    invoke-direct {p0, p2}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderAccessibilityDelegate;->isSliderAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    # getter for: Lcom/facebook/react/views/slider/ReactSliderManager;->ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {}, Lcom/facebook/react/views/slider/ReactSliderManager;->access$100()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/widget/SeekBar;

    invoke-interface {v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 324
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p3

    .line 325
    invoke-direct {p0, p2}, Lcom/facebook/react/views/slider/ReactSliderManager$ReactSliderAccessibilityDelegate;->isSliderAction(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 326
    # getter for: Lcom/facebook/react/views/slider/ReactSliderManager;->ON_CHANGE_LISTENER:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {}, Lcom/facebook/react/views/slider/ReactSliderManager;->access$100()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p2

    check-cast p1, Landroid/widget/SeekBar;

    invoke-interface {p2, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_1
    return p3
.end method
