.class public Lcom/facebook/react/common/JavascriptException;
.super Ljava/lang/RuntimeException;
.source "JavascriptException.java"

# interfaces
.implements Lcom/facebook/react/common/HasJavascriptExceptionMetadata;


# instance fields
.field private extraDataAsJson:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExtraDataAsJson()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/facebook/react/common/JavascriptException;->extraDataAsJson:Ljava/lang/String;

    return-object v0
.end method

.method public setExtraDataAsJson(Ljava/lang/String;)Lcom/facebook/react/common/JavascriptException;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    iput-object p1, p0, Lcom/facebook/react/common/JavascriptException;->extraDataAsJson:Ljava/lang/String;

    return-object p0
.end method
