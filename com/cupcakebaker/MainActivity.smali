.class public Lcom/cupcakebaker/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cupcakebaker/MainActivity$MainActivityDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 2

    .line 24
    new-instance v0, Lcom/cupcakebaker/MainActivity$MainActivityDelegate;

    invoke-virtual {p0}, Lcom/cupcakebaker/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cupcakebaker/MainActivity$MainActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "CupcakeBaker"

    return-object v0
.end method
