.class public final Lcom/facebook/soloader/NativeDeps;
.super Ljava/lang/Object;
.source "NativeDeps.java"


# static fields
.field private static final DEFAULT_LIBS_CAPACITY:I = 0x200

.field private static final INITIAL_HASH:I = 0x1505

.field private static final LIB_PREFIX_LEN:I = 0x3

.field private static final LIB_PREFIX_SUFFIX_LEN:I

.field private static final LIB_SUFFIX_LEN:I = 0x3

.field private static sEncodedDeps:[B = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sInitialized:Z = false

.field private static sPrecomputedDeps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPrecomputedLibs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    add-int/2addr v0, v0

    .line 37
    sput v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDependencies(Ljava/lang/String;Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Lcom/facebook/soloader/ElfByteChannel;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDependencies(Ljava/lang/String;Ljava/io/File;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Ljava/io/File;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDepsForLibAtOffset(II)[Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p0, p1

    .line 265
    sget p1, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 268
    :goto_0
    sget-object v3, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v4, v3

    const/4 v5, 0x0

    if-ge p0, v4, :cond_5

    aget-byte v3, v3, p0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_3

    .line 272
    invoke-static {v1}, Lcom/facebook/soloader/NativeDeps;->getLibString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v5

    .line 276
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x30

    if-lt v3, v2, :cond_4

    const/16 v2, 0x39

    if-le v3, v2, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v5

    :cond_5
    if-eqz v2, :cond_7

    .line 293
    invoke-static {v1}, Lcom/facebook/soloader/NativeDeps;->getLibString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v5

    .line 297
    :cond_6
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_8

    return-object v5

    .line 307
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 308
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getLibString(I)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 236
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_0
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    move v0, p0

    .line 242
    :goto_0
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p0

    .line 246
    sget v1, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    add-int/2addr v0, v1

    .line 247
    new-array v1, v0, [C

    const/16 v2, 0x6c

    const/4 v3, 0x0

    .line 248
    aput-char v2, v1, v3

    const/16 v2, 0x69

    const/4 v4, 0x1

    .line 249
    aput-char v2, v1, v4

    const/16 v2, 0x62

    const/4 v5, 0x2

    .line 250
    aput-char v2, v1, v5

    .line 251
    :goto_1
    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    sub-int v2, v0, v2

    if-ge v3, v2, :cond_2

    .line 252
    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    add-int/2addr v2, v3

    sget-object v5, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    add-int v6, p0, v3

    aget-byte v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p0, v0, -0x3

    const/16 v2, 0x2e

    .line 254
    aput-char v2, v1, p0

    add-int/lit8 p0, v0, -0x2

    const/16 v2, 0x73

    .line 255
    aput-char v2, v1, p0

    sub-int/2addr v0, v4

    const/16 p0, 0x6f

    .line 256
    aput-char p0, v1, v0

    .line 258
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static getOffsetForLib(Ljava/lang/String;)I
    .locals 4

    .line 217
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->hashLib(Ljava/lang/String;)I

    move-result v0

    .line 218
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 223
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    invoke-static {p0, v2}, Lcom/facebook/soloader/NativeDeps;->libIsAtOffset(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method private static hashLib(Ljava/lang/String;)I
    .locals 4

    .line 207
    sget v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    const/16 v1, 0x1505

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v1, 0x5

    add-int/2addr v2, v1

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static indexDepsBytes([BI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/16 v3, 0x1505

    move v4, p1

    .line 124
    :goto_1
    :try_start_0
    aget-byte v5, p0, v4

    const/16 v6, 0x20

    if-le v5, v6, :cond_0

    shl-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v3

    add-int v3, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    :cond_0
    invoke-static {v3, p1}, Lcom/facebook/soloader/NativeDeps;->indexLib(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    .line 131
    :cond_2
    :goto_2
    :try_start_1
    aget-byte v5, p0, p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    move v7, v4

    move v4, p1

    move p1, v7

    :goto_3
    add-int/2addr v4, v1

    move v7, v4

    move v4, p1

    move p1, v7

    goto :goto_0

    :catch_1
    move p1, v4

    :goto_4
    if-eqz v2, :cond_4

    .line 140
    invoke-static {v3, p1}, Lcom/facebook/soloader/NativeDeps;->indexLib(II)V

    :cond_4
    return-void
.end method

.method private static indexLib(II)V
    .locals 2

    .line 92
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static libIsAtOffset(Ljava/lang/String;I)Z
    .locals 4

    .line 194
    sget v0, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_LEN:I

    .line 195
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_SUFFIX_LEN:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sget-object v3, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    aget-byte v3, v3, p1

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 201
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private static readDepsFromFile([BLjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    sput-object p1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    .line 172
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 173
    sget-object p1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->verifyBytesAndGetOffset([B[B)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 175
    sput-object v0, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    .line 181
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    .line 178
    :cond_0
    :try_start_3
    new-instance p1, Ljava/util/HashMap;

    const/16 v2, 0x200

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object p1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedDeps:Ljava/util/Map;

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object p1, Lcom/facebook/soloader/NativeDeps;->sPrecomputedLibs:Ljava/util/List;

    .line 180
    sget-object p1, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    invoke-static {p1, p0}, Lcom/facebook/soloader/NativeDeps;->indexDepsBytes([BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x1

    .line 187
    sput-boolean p0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    return p0

    :catchall_0
    move-exception p0

    .line 170
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 183
    sput-object v0, Lcom/facebook/soloader/NativeDeps;->sEncodedDeps:[B

    .line 184
    throw p0
.end method

.method static tryGetDepsFromPrecomputedDeps(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 313
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 317
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v2, Lcom/facebook/soloader/NativeDeps;->LIB_PREFIX_SUFFIX_LEN:I

    if-gt v0, v2, :cond_1

    return-object v1

    .line 323
    :cond_1
    invoke-static {p0}, Lcom/facebook/soloader/NativeDeps;->getOffsetForLib(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-object v1

    .line 328
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Lcom/facebook/soloader/NativeDeps;->getDepsForLibAtOffset(II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static useDepsFile([BLjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-boolean v0, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lcom/facebook/soloader/NativeDeps;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-boolean v1, Lcom/facebook/soloader/NativeDeps;->sInitialized:Z

    if-nez v1, :cond_0

    .line 79
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->readDepsFromFile([BLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 84
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to initialize NativeDeps but it was already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static verifyBytesAndGetOffset([B[B)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_5

    .line 146
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    array-length v1, p1

    array-length v2, p0

    const/4 v3, 0x4

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    return v0

    .line 154
    :cond_1
    array-length v1, p0

    invoke-static {p1, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 155
    array-length v2, p1

    array-length v4, p0

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 159
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 160
    aget-byte v2, p0, v1

    aget-byte v4, p1, v1

    if-eq v2, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_4
    array-length p0, p0

    add-int/2addr p0, v3

    return p0

    :cond_5
    :goto_1
    return v0
.end method
