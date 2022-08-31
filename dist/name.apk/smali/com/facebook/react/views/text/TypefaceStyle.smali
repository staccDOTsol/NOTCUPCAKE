.class Lcom/facebook/react/views/text/TypefaceStyle;
.super Ljava/lang/Object;
.source "TypefaceStyle.java"


# static fields
.field public static final BOLD:I = 0x2bc

.field private static final MAX_WEIGHT:I = 0x3e8

.field private static final MIN_WEIGHT:I = 0x1

.field public static final NORMAL:I = 0x190


# instance fields
.field private final mItalic:Z

.field private final mWeight:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 37
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mItalic:Z

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    const/16 p1, 0x2bc

    goto :goto_0

    :cond_2
    const/16 p1, 0x190

    .line 38
    :goto_0
    iput p1, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mWeight:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 50
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mItalic:Z

    if-ne p2, v1, :cond_3

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    const/16 p2, 0x2bc

    goto :goto_0

    :cond_2
    const/16 p2, 0x190

    .line 54
    :cond_3
    :goto_0
    iput p2, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mWeight:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p2, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mItalic:Z

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/16 p1, 0x190

    .line 29
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mWeight:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/facebook/react/views/text/TypefaceStyle;->getNearestStyle()I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mWeight:I

    iget-boolean v1, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mItalic:Z

    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public getNearestStyle()I
    .locals 2

    .line 58
    iget v0, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mWeight:I

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_1

    .line 59
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mItalic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 61
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TypefaceStyle;->mItalic:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
