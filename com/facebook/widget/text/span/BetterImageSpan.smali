.class public Lcom/facebook/widget/text/span/BetterImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BetterImageSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/text/span/BetterImageSpan$BetterImageSpanAlignment;
    }
.end annotation


# static fields
.field public static final ALIGN_BASELINE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x0

.field public static final ALIGN_CENTER:I = 0x2


# instance fields
.field private final mAlignment:I

.field private mBounds:Landroid/graphics/Rect;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/text/span/BetterImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "verticalAlignment"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 69
    iput-object p1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    iput p2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mAlignment:I

    .line 71
    invoke-virtual {p0}, Lcom/facebook/widget/text/span/BetterImageSpan;->updateBounds()V

    return-void
.end method

.method private getOffsetAboveBaseline(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fm"
        }
    .end annotation

    .line 134
    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mAlignment:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 143
    iget p1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    neg-int p1, p1

    return p1

    .line 138
    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v2

    .line 139
    iget v2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 140
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p1, v0

    return p1

    .line 136
    :cond_1
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public static final normalizeAlignment(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alignment"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "text",
            "start",
            "end",
            "x",
            "top",
            "y",
            "bottom",
            "paint"
        }
    .end annotation

    .line 119
    iget-object p2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 120
    iget-object p2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p0, p2}, Lcom/facebook/widget/text/span/BetterImageSpan;->getOffsetAboveBaseline(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p2

    add-int/2addr p7, p2

    int-to-float p2, p7

    .line 121
    invoke-virtual {p1, p5, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object p2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p2, p5

    neg-int p3, p7

    int-to-float p3, p3

    .line 123
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paint",
            "text",
            "start",
            "end",
            "fontMetrics"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/facebook/widget/text/span/BetterImageSpan;->updateBounds()V

    if-nez p5, :cond_0

    .line 84
    iget p1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    return p1

    .line 87
    :cond_0
    invoke-direct {p0, p5}, Lcom/facebook/widget/text/span/BetterImageSpan;->getOffsetAboveBaseline(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    .line 88
    iget p2, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    add-int/2addr p2, p1

    .line 89
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge p1, p3, :cond_1

    .line 90
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 93
    :cond_1
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge p1, p3, :cond_2

    .line 94
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 97
    :cond_2
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le p2, p1, :cond_3

    .line 98
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 101
    :cond_3
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le p2, p1, :cond_4

    .line 102
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 105
    :cond_4
    iget p1, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    return p1
.end method

.method public updateBounds()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mWidth:I

    .line 130
    iget-object v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/text/span/BetterImageSpan;->mHeight:I

    return-void
.end method
