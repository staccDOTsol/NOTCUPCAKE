.class public Lcom/facebook/react/views/modal/ReactModalHostView;
.super Landroid/view/ViewGroup;
.source "ReactModalHostView.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;,
        Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReactModalHost"


# instance fields
.field private mAnimationType:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mHardwareAccelerated:Z

.field private mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

.field private mOnRequestCloseListener:Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private mPropertyRequiresNewDialog:Z

.field private mStatusBarTranslucent:Z

.field private mTransparent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 91
    new-instance v0, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/views/modal/ReactModalHostView;)Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mOnRequestCloseListener:Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    return-object p0
.end method

.method private dismiss()V
    .locals 2

    .line 162
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 164
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    .line 167
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/facebook/react/views/common/ContextUtils;->findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    .line 176
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_2
    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 2

    .line 344
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 345
    iget-object v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 346
    iget-boolean v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mStatusBarTranslucent:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x400

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    :goto_0
    return-object v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private updateProperties()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    const-string v1, "mDialog must exist when we call updateProperties"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 377
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mTransparent:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 380
    invoke-virtual {v1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 381
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 113
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 115
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getFabricViewStateManager()Lcom/facebook/react/uimanager/FabricViewStateManager;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->getFabricViewStateManager()Lcom/facebook/react/uimanager/FabricViewStateManager;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 108
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->dismiss()V

    return-void
.end method

.method public onDropInstance()V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 158
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->dismiss()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->onDropInstance()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 215
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->showOrUpdate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 130
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 132
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected setAnimationType(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mAnimationType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mPropertyRequiresNewDialog:Z

    return-void
.end method

.method setEventDispatcher(Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    # invokes: Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->setEventDispatcher(Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    invoke-static {v0, p1}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->access$000(Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;Lcom/facebook/react/uimanager/events/EventDispatcher;)V

    return-void
.end method

.method protected setHardwareAccelerated(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHardwareAccelerated:Z

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mPropertyRequiresNewDialog:Z

    return-void
.end method

.method protected setOnRequestCloseListener(Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mOnRequestCloseListener:Lcom/facebook/react/views/modal/ReactModalHostView$OnRequestCloseListener;

    return-void
.end method

.method protected setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method protected setStatusBarTranslucent(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mStatusBarTranslucent:Z

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mPropertyRequiresNewDialog:Z

    return-void
.end method

.method protected setTransparent(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mTransparent:Z

    return-void
.end method

.method protected showOrUpdate()V
    .locals 7

    .line 245
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 249
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    const-string v1, "@"

    const-string v2, "ReactModalHost"

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/facebook/react/views/common/ContextUtils;->findContextOfType(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating existing dialog with context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mPropertyRequiresNewDialog:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->dismiss()V

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->updateProperties()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mPropertyRequiresNewDialog:Z

    .line 269
    sget v0, Lcom/facebook/react/R$style;->Theme_FullScreenDialog:I

    .line 270
    iget-object v3, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mAnimationType:Ljava/lang/String;

    const-string v4, "fade"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    sget v0, Lcom/facebook/react/R$style;->Theme_FullScreenDialogAnimatedFade:I

    goto :goto_1

    .line 272
    :cond_2
    iget-object v3, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mAnimationType:Ljava/lang/String;

    const-string v4, "slide"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    sget v0, Lcom/facebook/react/R$style;->Theme_FullScreenDialogAnimatedSlide:I

    .line 275
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 277
    :goto_2
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    .line 279
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v5, 0x8

    .line 280
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating new dialog from context: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 288
    invoke-direct {p0}, Lcom/facebook/react/views/modal/ReactModalHostView;->updateProperties()V

    .line 290
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 291
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/facebook/react/views/modal/ReactModalHostView$1;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/modal/ReactModalHostView$1;-><init>(Lcom/facebook/react/views/modal/ReactModalHostView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 320
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 321
    iget-boolean v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHardwareAccelerated:Z

    if-eqz v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    if-eqz v3, :cond_7

    .line 324
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 325
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 326
    instance-of v0, v4, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 327
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    .line 328
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v4, Landroid/app/Activity;

    .line 331
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    :cond_7
    return-void
.end method

.method public updateState(II)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/facebook/react/views/modal/ReactModalHostView;->mHostView:Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/modal/ReactModalHostView$DialogRootViewGroup;->updateState(II)V

    return-void
.end method
