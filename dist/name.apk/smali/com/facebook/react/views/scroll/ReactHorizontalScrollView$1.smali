.class Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ReactHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/facebook/react/views/scroll/FpsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 127
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z
    invoke-static {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$000(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 134
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView$1;->this$0:Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    # getter for: Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->mScrollEnabled:Z
    invoke-static {p1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->access$000(Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    return-void
.end method
