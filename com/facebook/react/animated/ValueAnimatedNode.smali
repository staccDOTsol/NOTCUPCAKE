.class Lcom/facebook/react/animated/ValueAnimatedNode;
.super Lcom/facebook/react/animated/AnimatedNode;
.source "ValueAnimatedNode.java"


# instance fields
.field mAnimatedObject:Ljava/lang/Object;

.field mOffset:D

.field mValue:D

.field private mValueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mAnimatedObject:Ljava/lang/Object;

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 19
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/animated/AnimatedNode;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mAnimatedObject:Ljava/lang/Object;

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 19
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    const-string v0, "value"

    .line 28
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    const-string v0, "offset"

    .line 29
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    return-void
.end method


# virtual methods
.method public extractOffset()V
    .locals 4

    .line 49
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    return-void
.end method

.method public flattenOffset()V
    .locals 4

    .line 44
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    return-void
.end method

.method public getAnimatedObject()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mAnimatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()D
    .locals 4

    .line 33
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->update()V

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    iget-wide v2, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public onValueUpdate()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/animated/ValueAnimatedNode;->getValue()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/animated/AnimatedNodeValueListener;->onValueUpdate(D)V

    return-void
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimatedNode["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mOffset:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValueListener(Lcom/facebook/react/animated/AnimatedNodeValueListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/facebook/react/animated/ValueAnimatedNode;->mValueListener:Lcom/facebook/react/animated/AnimatedNodeValueListener;

    return-void
.end method
