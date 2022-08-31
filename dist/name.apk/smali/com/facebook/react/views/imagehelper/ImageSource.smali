.class public Lcom/facebook/react/views/imagehelper/ImageSource;
.super Ljava/lang/Object;
.source "ImageSource.java"


# instance fields
.field private isResource:Z

.field private mSize:D

.field private mSource:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 50
    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;DD)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;DD)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSource:Ljava/lang/String;

    mul-double p3, p3, p5

    .line 26
    iput-wide p3, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSize:D

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->computeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private computeLocalUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource:Z

    .line 85
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private computeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->computeLocalUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 79
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/react/views/imagehelper/ImageSource;->computeLocalUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    check-cast p1, Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 38
    iget-wide v2, p1, Lcom/facebook/react/views/imagehelper/ImageSource;->mSize:D

    iget-wide v4, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSize:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource:Z

    iget-boolean v3, p1, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/facebook/react/views/imagehelper/ImageSource;->mUri:Landroid/net/Uri;

    .line 40
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSource:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/react/views/imagehelper/ImageSource;->mSource:Ljava/lang/String;

    .line 41
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getSize()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSize:D

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSource:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->mSize:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isResource()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/facebook/react/views/imagehelper/ImageSource;->isResource:Z

    return v0
.end method
