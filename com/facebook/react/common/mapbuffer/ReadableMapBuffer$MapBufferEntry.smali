.class public Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;
.super Ljava/lang/Object;
.source "ReadableMapBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapBufferEntry"
.end annotation


# instance fields
.field private final mBucketOffset:I

.field final synthetic this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;


# direct methods
.method private constructor <init>(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p2, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;ILcom/facebook/react/common/mapbuffer/ReadableMapBuffer$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;-><init>(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)V

    return-void
.end method

.method private assertType(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)V
    .locals 4

    .line 332
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->getType()Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for key: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->getKey()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getBoolean()Z
    .locals 2

    .line 370
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->BOOL:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->assertType(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)V

    .line 371
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    iget v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    add-int/lit8 v1, v1, 0x4

    # invokes: Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readBooleanValue(I)Z
    invoke-static {v0, v1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->access$500(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)Z

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .line 358
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->DOUBLE:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->assertType(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)V

    .line 359
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    iget v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    add-int/lit8 v1, v1, 0x4

    # invokes: Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readDoubleValue(I)D
    invoke-static {v0, v1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->access$300(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt()I
    .locals 2

    .line 364
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->INT:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->assertType(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)V

    .line 365
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    iget v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    add-int/lit8 v1, v1, 0x4

    # invokes: Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readIntValue(I)I
    invoke-static {v0, v1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->access$400(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)I

    move-result v0

    return v0
.end method

.method public getKey()I
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    iget v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    # invokes: Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readUnsignedShort(I)I
    invoke-static {v0, v1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->access$200(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)I

    move-result v0

    return v0
.end method

.method public getReadableMapBuffer()Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;
    .locals 2

    .line 384
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->MAP:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->assertType(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)V

    .line 385
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    iget v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    add-int/lit8 v1, v1, 0x4

    # invokes: Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readMapBufferValue(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;
    invoke-static {v0, v1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->access$700(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 376
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->STRING:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->assertType(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)V

    .line 377
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    iget v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    add-int/lit8 v1, v1, 0x4

    # invokes: Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readStringValue(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->access$600(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;
    .locals 3

    .line 351
    invoke-static {}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->values()[Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->this$0:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    iget v2, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;->mBucketOffset:I

    add-int/lit8 v2, v2, 0x2

    # invokes: Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readUnsignedShort(I)I
    invoke-static {v1, v2}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->access$200(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
