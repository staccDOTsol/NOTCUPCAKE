.class public Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;
.super Ljava/lang/Object;
.source "ReadableMapBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;,
        Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALIGNMENT:I = 0xfe

.field private static final BUCKET_SIZE:I = 0xc

.field private static final HEADER_SIZE:I = 0x8

.field private static final INT_SIZE:I = 0x4

.field private static final TYPE_OFFSET:I = 0x2

.field private static final VALUE_OFFSET:I = 0x4


# instance fields
.field mBuffer:Ljava/nio/ByteBuffer;

.field private mCount:I

.field private mHybridData:Lcom/facebook/jni/HybridData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    invoke-static {}, Lcom/facebook/react/common/mapbuffer/ReadableMapBufferSoLoader;->staticInit()V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/jni/HybridData;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mCount:I

    .line 64
    iput-object p1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mHybridData:Lcom/facebook/jni/HybridData;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mCount:I

    .line 68
    iput-object p1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 69
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readHeader()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getKeyOffsetForBucketIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readUnsignedShort(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)D
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readDoubleValue(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readIntValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readBooleanValue(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readMapBufferValue(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    move-result-object p0

    return-object p0
.end method

.method private assertKeyExists(II)V
    .locals 3

    .line 273
    invoke-static {p2}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getKeyOffsetForBucketIndex(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readUnsignedShort(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored key doesn\'t match parameter - expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - found: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBucketIndexForKey(I)I
    .locals 4

    .line 95
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->importByteBufferAndReadHeader()Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 100
    invoke-static {v2}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getKeyOffsetForBucketIndex(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readUnsignedShort(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static getKeyOffsetForBucketIndex(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private getOffsetForDynamicData()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mCount:I

    invoke-static {v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getKeyOffsetForBucketIndex(I)I

    move-result v0

    return v0
.end method

.method private getTypedValueOffsetForKey(ILcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)I
    .locals 4

    .line 118
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getBucketIndexForKey(I)I

    move-result v0

    .line 119
    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readDataType(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v1, p2, :cond_0

    .line 135
    invoke-static {v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getKeyOffsetForBucketIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for key: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private native importByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method private importByteBufferAndReadHeader()Ljava/nio/ByteBuffer;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-object v0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->importByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 268
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readHeader()V

    .line 269
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private readBooleanValue(I)Z
    .locals 1

    .line 151
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readIntValue(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readDataType(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;
    .locals 1

    .line 113
    invoke-static {p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getKeyOffsetForBucketIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readUnsignedShort(I)I

    move-result p1

    .line 114
    invoke-static {}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->values()[Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private readDoubleValue(I)D
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private readHeader()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readUnsignedShort(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mCount:I

    return-void
.end method

.method private readIntValue(I)I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method private readMapBufferValue(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;
    .locals 3

    .line 169
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getOffsetForDynamicData()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 171
    iget-object p1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    .line 172
    new-array v1, p1, [B

    add-int/lit8 v0, v0, 0x4

    .line 176
    iget-object v2, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 179
    new-instance p1, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object p1
.end method

.method private readStringValue(I)Ljava/lang/String;
    .locals 3

    .line 155
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getOffsetForDynamicData()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 157
    iget-object p1, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    .line 158
    new-array v1, p1, [B

    add-int/lit8 v0, v0, 0x4

    .line 162
    iget-object v2, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 165
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private readUnsignedShort(I)I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 289
    instance-of v0, p1, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 293
    :cond_0
    check-cast p1, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    .line 294
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->importByteBufferAndReadHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 295
    invoke-direct {p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->importByteBufferAndReadHeader()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 300
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 301
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(I)Z
    .locals 1

    .line 245
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->BOOL:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getTypedValueOffsetForKey(ILcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readBooleanValue(I)Z

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->importByteBufferAndReadHeader()Ljava/nio/ByteBuffer;

    .line 217
    iget v0, p0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->mCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 233
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->DOUBLE:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getTypedValueOffsetForKey(ILcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readDoubleValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1

    .line 225
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->INT:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getTypedValueOffsetForKey(ILcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readIntValue(I)I

    move-result p1

    return p1
.end method

.method public getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;
    .locals 1

    .line 253
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->MAP:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getTypedValueOffsetForKey(ILcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readMapBufferValue(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 241
    sget-object v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;->STRING:Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getTypedValueOffsetForKey(ILcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readStringValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;
    .locals 3

    .line 205
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getBucketIndexForKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->readDataType(I)Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$DataType;

    move-result-object p1

    return-object p1

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasKey(I)Z
    .locals 1

    .line 200
    invoke-direct {p0, p1}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->getBucketIndexForKey(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;->importByteBufferAndReadHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 284
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$MapBufferEntry;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$1;

    invoke-direct {v0, p0}, Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer$1;-><init>(Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;)V

    return-object v0
.end method
