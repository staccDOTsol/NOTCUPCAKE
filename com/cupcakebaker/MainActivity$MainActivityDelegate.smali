.class public Lcom/cupcakebaker/MainActivity$MainActivityDelegate;
.super Lcom/facebook/react/ReactActivityDelegate;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cupcakebaker/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainActivityDelegate"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/ReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createRootView()Lcom/facebook/react/ReactRootView;
    .locals 2

    .line 34
    new-instance v0, Lcom/facebook/react/ReactRootView;

    invoke-virtual {p0}, Lcom/cupcakebaker/MainActivity$MainActivityDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/ReactRootView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/facebook/react/ReactRootView;->setIsFabric(Z)V

    return-object v0
.end method
