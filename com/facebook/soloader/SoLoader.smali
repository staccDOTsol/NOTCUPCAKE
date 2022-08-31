.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SoLoader$Api14Utils;,
        Lcom/facebook/soloader/SoLoader$WrongAbiError;,
        Lcom/facebook/soloader/SoLoader$TestOnlyUtils;,
        Lcom/facebook/soloader/SoLoader$AppType;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_DENY_LIST:[Ljava/lang/String;

.field public static final SOLOADER_ALLOW_ASYNC_INIT:I = 0x2

.field public static final SOLOADER_DISABLE_BACKUP_SOSOURCE:I = 0x8

.field public static final SOLOADER_DONT_TREAT_AS_SYSTEMAPP:I = 0x20

.field public static final SOLOADER_ENABLE_EXOPACKAGE:I = 0x1

.field public static final SOLOADER_LOOK_IN_ZIP:I = 0x4

.field public static final SOLOADER_SKIP_MERGED_JNI_ONLOAD:I = 0x10

.field private static final SO_STORE_NAME_MAIN:Ljava/lang/String; = "lib-main"

.field private static final SO_STORE_NAME_SPLIT:Ljava/lang/String; = "lib-"

.field static final SYSTRACE_LIBRARY_LOADING:Z

.field static final TAG:Ljava/lang/String; = "SoLoader"

.field private static sAppType:I

.field private static sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sFlags:I

.field private static final sLoadedAndMergedLibraries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadingLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sSoSources:[Lcom/facebook/soloader/SoSource;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    .line 95
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 98
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 115
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    .line 131
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 132
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    .line 135
    sput-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v3, "breakpad"

    .line 146
    invoke-static {v3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lcom/facebook/soloader/SoLoader;->DEFAULT_DENY_LIST:[Ljava/lang/String;

    .line 195
    sput v2, Lcom/facebook/soloader/SoLoader;->sAppType:I

    .line 200
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x12

    if-lt v1, v3, :cond_0

    const/4 v2, 0x1

    .line 205
    :catch_0
    :cond_0
    sput-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AddBackupSoSource(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget v0, Lcom/facebook/soloader/SoLoader;->sFlags:I

    and-int/lit8 v0, v0, 0x8

    const-string v1, "lib-main"

    const-string v2, "SoLoader"

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 377
    sput-object p1, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    .line 379
    invoke-static {p0, v1}, Lcom/facebook/soloader/UnpackingSoSource;->getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 381
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/SysUtil;->dumbDeleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to delete "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v4, Lcom/facebook/soloader/ApkSoSource;

    invoke-direct {v4, p0, v0, v1, p2}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 392
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 393
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding backup source from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/facebook/soloader/ApkSoSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    invoke-static {p0, p2, v3}, Lcom/facebook/soloader/SoLoader;->addBackupSoSourceFromSplitApk(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 399
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/facebook/soloader/UnpackingSoSource;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/soloader/UnpackingSoSource;

    sput-object p0, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    const/4 p0, 0x0

    .line 400
    invoke-virtual {p1, p0, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method private static AddSystemLibSoSource(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 434
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system/lib64:/vendor/lib64"

    goto :goto_0

    :cond_0
    const-string v0, "/system/lib:/vendor/lib"

    :goto_0
    const-string v1, "LD_LIBRARY_PATH"

    .line 436
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    if-eqz v1, :cond_1

    const-string v3, ""

    .line 437
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 442
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "SoLoader"

    .line 446
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding system library source: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    new-instance v1, Lcom/facebook/soloader/DirectorySoSource;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p1}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$102([Lcom/facebook/soloader/SoSource;)[Lcom/facebook/soloader/SoSource;
    .locals 0

    .line 75
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashSet;
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .line 75
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    return-object v0
.end method

.method private static addApplicationSoSource(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;I)V"
        }
    .end annotation

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    or-int/lit8 p2, p2, 0x1

    .line 366
    :cond_0
    new-instance v0, Lcom/facebook/soloader/ApplicationSoSource;

    invoke-direct {v0, p0, p2}, Lcom/facebook/soloader/ApplicationSoSource;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    const/4 p0, 0x3

    const-string p2, "SoLoader"

    .line 367
    invoke-static {p2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adding application source: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v0}, Lcom/facebook/soloader/ApplicationSoSource;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    .line 370
    sget-object p2, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {p1, p0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static addBackupSoSourceFromSplitApk(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/UnpackingSoSource;",
            ">;)V"
        }
    .end annotation

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "SoLoader"

    const/4 v1, 0x3

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "adding backup sources from split apks"

    .line 408
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    .line 412
    new-instance v7, Lcom/facebook/soloader/ApkSoSource;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lib-"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, p0, v8, v5, p1}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding backup source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/facebook/soloader/ApkSoSource;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static addDirectApkSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/soloader/SoSource;",
            ">;)V"
        }
    .end annotation

    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "adding directApk source: "

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "SoLoader"

    const/16 v5, 0x15

    if-lt v0, v5, :cond_2

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 334
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adding directApk sources from split apks"

    .line 335
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    .line 338
    new-instance v8, Lcom/facebook/soloader/DirectApkSoSource;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/facebook/soloader/DirectApkSoSource;-><init>(Ljava/io/File;)V

    .line 339
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/facebook/soloader/DirectApkSoSource;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    invoke-virtual {p1, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 346
    :cond_2
    new-instance v0, Lcom/facebook/soloader/DirectApkSoSource;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/DirectApkSoSource;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/facebook/soloader/DirectApkSoSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_3
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static areSoSourcesAbisSupported()Z
    .locals 12

    .line 1216
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1218
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1239
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    .line 1222
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    .line 1223
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 1224
    invoke-virtual {v5}, Lcom/facebook/soloader/SoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v5

    .line 1225
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1227
    :goto_3
    array-length v11, v0

    if-ge v9, v11, :cond_1

    if-nez v10, :cond_1

    .line 1228
    aget-object v10, v0, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    if-nez v10, :cond_2

    const-string v0, "SoLoader"

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abi not supported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1240
    throw v0
.end method

.method private static assertInitialized()V
    .locals 2

    .line 1142
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SoLoader.init() not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deinitForTest()V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void
.end method

.method private static doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 12
    .param p2    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    const-string v0, " result: "

    .line 1010
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1012
    :try_start_0
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v3, "couldn\'t find DSO to load: "

    const-string v4, "SoLoader"

    if-eqz v2, :cond_10

    .line 1017
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    .line 1024
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1028
    :goto_0
    sget-boolean v7, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v7, :cond_1

    const-string v7, "SoLoader.loadLibrary["

    const-string v8, "]"

    .line 1029
    invoke-static {v7, p0, v8}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x3

    .line 1034
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 1036
    :try_start_2
    sget-object v9, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v10, v9

    if-ge v8, v10, :cond_5

    .line 1037
    aget-object v9, v9, v8

    .line 1038
    invoke-virtual {v9, p0, p1, p2}, Lcom/facebook/soloader/SoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 1039
    sget-object v9, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    if-eqz v9, :cond_4

    .line 1041
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1042
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trying backup SoSource for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_2
    sget-object v8, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 1045
    invoke-virtual {v11, p0}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v11, p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v11, v2, :cond_3

    move v1, v11

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    move v5, v1

    .line 1056
    :try_start_3
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1057
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1056
    :cond_5
    :goto_3
    :try_start_4
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1061
    sget-boolean v2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v2, :cond_6

    .line 1062
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_6
    if-eqz v6, :cond_7

    .line 1066
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_7
    if-eqz v1, :cond_8

    if-ne v1, v7, :cond_d

    .line 1070
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1082
    :goto_4
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length p0, p0

    if-ge v5, p0, :cond_9

    const-string p0, "\n\tSoSource "

    .line 1083
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lcom/facebook/soloader/SoSource;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1085
    :cond_9
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    if-eqz p0, :cond_a

    .line 1086
    invoke-virtual {p0}, Lcom/facebook/soloader/ApplicationSoSource;->getUpdatedContext()Landroid/content/Context;

    move-result-object p0

    .line 1088
    invoke-static {p0}, Lcom/facebook/soloader/ApplicationSoSource;->getNativeLibDirFromContext(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string p1, "\n\tNative lib dir: "

    .line 1089
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 1091
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    :cond_a
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1095
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1097
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 1102
    throw p1

    :catchall_1
    move-exception p1

    move v5, v1

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 1061
    :goto_5
    sget-boolean v1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz v1, :cond_b

    .line 1062
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    :cond_b
    if-eqz v6, :cond_c

    .line 1066
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_c
    if-eqz v5, :cond_e

    if-ne v5, v7, :cond_d

    goto :goto_6

    :cond_d
    return-void

    .line 1070
    :cond_e
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_f
    const-string v1, " caused by: "

    .line 1076
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1095
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1096
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1097
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance p2, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p2, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p2, p1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1102
    throw p2

    .line 1013
    :cond_10
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not load: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because no SO source exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 1017
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1018
    throw p0
.end method

.method private static getAppType(Landroid/content/Context;I)I
    .locals 3

    .line 573
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    if-nez p1, :cond_4

    if-nez p0, :cond_1

    goto :goto_1

    .line 581
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 583
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v0

    const/4 v1, 0x3

    if-nez p1, :cond_2

    goto :goto_0

    .line 585
    :cond_2
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_0
    const-string p1, "SoLoader"

    .line 590
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationInfo.flags is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " appType is: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v0
.end method

.method private static getApplicationSoSourceFlags()I
    .locals 3

    .line 319
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported app type, we should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 696
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 698
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 699
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 700
    aget-object v1, v2, v0

    .line 701
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getLibraryDependencies(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 706
    throw p0
.end method

.method public static getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 670
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 672
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 673
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 674
    aget-object v1, v2, v0

    .line 675
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_0
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 680
    throw p0
.end method

.method private static getNativeLoadRuntimeMethod()Ljava/lang/reflect/Method;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 561
    :cond_0
    :try_start_0
    const-class v0, Ljava/lang/Runtime;

    const-string v2, "nativeLoad"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    .line 562
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 564
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v2, "SoLoader"

    const-string v3, "Cannot get nativeLoad method"

    .line 567
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static getSoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 716
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    .line 718
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 720
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 722
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 723
    :goto_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 724
    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/facebook/soloader/SoSource;->getSoFileByName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 736
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catch_0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 737
    throw p0
.end method

.method public static getSoSourcesVersion()I
    .locals 1

    .line 1157
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/facebook/soloader/SoLoader;->DEFAULT_DENY_LIST:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;[Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;)V
    .locals 1
    .param p2    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/facebook/soloader/SoLoader;->DEFAULT_DENY_LIST:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;[Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;[Ljava/lang/String;)V
    .locals 2
    .param p2    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 232
    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/SysUtil;->isDisabledExtractNativeLibs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 p1, p1, 0x8

    .line 237
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->getAppType(Landroid/content/Context;I)I

    move-result v1

    sput v1, Lcom/facebook/soloader/SoLoader;->sAppType:I

    .line 238
    invoke-static {p2}, Lcom/facebook/soloader/SoLoader;->initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V

    .line 239
    invoke-static {p0, p1, p3}, Lcom/facebook/soloader/SoLoader;->initSoSources(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 240
    new-instance p0, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;

    invoke-direct {p0}, Lcom/facebook/soloader/NativeLoaderToSoLoaderDelegate;-><init>()V

    invoke-static {p0}, Lcom/facebook/soloader/nativeloader/NativeLoader;->initIfUninitialized(Lcom/facebook/soloader/nativeloader/NativeLoaderDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 243
    throw p0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 255
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->DEFAULT_DENY_LIST:[Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;ILcom/facebook/soloader/SoFileLoader;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 257
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static declared-synchronized initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V
    .locals 7
    .param p0    # Lcom/facebook/soloader/SoFileLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/facebook/soloader/SoLoader;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 471
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 472
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    .line 475
    :try_start_1
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit v0

    return-void

    .line 479
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 480
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getNativeLoadRuntimeMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 p0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 485
    invoke-static {}, Lcom/facebook/soloader/SoLoader$Api14Utils;->getClassLoaderLdLoadLibrary()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    move-object v3, p0

    .line 486
    invoke-static {v3}, Lcom/facebook/soloader/SoLoader;->makeNonZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    new-instance p0, Lcom/facebook/soloader/SoLoader$1;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/soloader/SoLoader$1;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runtime;Ljava/lang/reflect/Method;)V

    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoFileLoader:Lcom/facebook/soloader/SoFileLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private static initSoSources(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 269
    :try_start_0
    sput p1, Lcom/facebook/soloader/SoLoader;->sFlags:I

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-static {v0, p2}, Lcom/facebook/soloader/SoLoader;->AddSystemLibSoSource(Ljava/util/ArrayList;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x3

    const-string v1, "SoLoader"

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 286
    :try_start_1
    sput-object p1, Lcom/facebook/soloader/SoLoader;->sBackupSoSources:[Lcom/facebook/soloader/UnpackingSoSource;

    .line 287
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "adding exo package source: lib-main"

    .line 288
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 290
    new-instance v2, Lcom/facebook/soloader/ExoSoSource;

    const-string v3, "lib-main"

    invoke-direct {v2, p0, v3}, Lcom/facebook/soloader/ExoSoSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_2
    sget p1, Lcom/facebook/soloader/SoLoader;->sAppType:I

    invoke-static {p0, p1}, Lcom/facebook/soloader/SysUtil;->isSupportedDirectLoad(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 293
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->addDirectApkSoSource(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 295
    :cond_3
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->getApplicationSoSourceFlags()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/facebook/soloader/SoLoader;->addApplicationSoSource(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 296
    invoke-static {p0, v0, v2}, Lcom/facebook/soloader/SoLoader;->AddBackupSoSource(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 300
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/facebook/soloader/SoSource;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/facebook/soloader/SoSource;

    .line 301
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result p1

    .line 302
    array-length v0, p0

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 303
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing SO source: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_5
    aget-object v0, p0, v2

    invoke-virtual {v0, p1}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    move v0, v2

    goto :goto_1

    .line 308
    :cond_6
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 309
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 310
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init finish: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " SO sources prepared"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :cond_7
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 315
    throw p0
.end method

.method public static isInitialized()Z
    .locals 2

    .line 1148
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1150
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1152
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1153
    throw v0
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 743
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static loadLibrary(Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 756
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->loadLibraryOnNonAndroid(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 763
    :cond_0
    sget v0, Lcom/facebook/soloader/SoLoader;->sAppType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v0, :cond_2

    .line 765
    invoke-interface {v0, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 769
    :cond_2
    invoke-static {p0}, Lcom/facebook/soloader/MergedSoMapping;->mapLibName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 774
    :goto_0
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 773
    invoke-static {v1, p0, v0, p1, v2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result p0

    return p0
.end method

.method static loadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    .locals 1

    const/4 v0, 0x0

    .line 812
    invoke-static {p0, v0, v0, p1, p2}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    return-void
.end method

.method private static loadLibraryBySoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 826
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/soloader/SoLoader;->loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 828
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 829
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 831
    :try_start_1
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/facebook/soloader/SoLoader;->sApplicationSoSource:Lcom/facebook/soloader/ApplicationSoSource;

    invoke-virtual {v4}, Lcom/facebook/soloader/ApplicationSoSource;->checkAndMaybeUpdate()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SoLoader"

    .line 832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sApplicationSoSource updated during load: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", attempting load again."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    sget-object v4, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 841
    :goto_0
    sget-object v5, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 844
    sget-object v5, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v5, v3, :cond_2

    :goto_1
    if-nez v4, :cond_0

    return v1

    .line 846
    :cond_2
    throw v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 839
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 841
    :goto_2
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 842
    throw p0
.end method

.method private static loadLibraryBySoNameImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Z
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/StrictMode$ThreadPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 862
    const-class v0, Lcom/facebook/soloader/SoLoader;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 871
    :cond_0
    monitor-enter v0

    .line 872
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    .line 875
    monitor-exit v0

    return v2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 879
    :goto_0
    sget-object v5, Lcom/facebook/soloader/SoLoader;->sLoadingLibraries:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 880
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 882
    :cond_3
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 883
    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    .line 885
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 893
    sget-object v6, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 895
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v7, 0x3

    if-nez v3, :cond_9

    .line 897
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 898
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez p2, :cond_4

    .line 902
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 983
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :cond_4
    const/4 v3, 0x1

    .line 907
    :cond_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_9

    :try_start_6
    const-string v8, "SoLoader"

    .line 911
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "SoLoader"

    .line 912
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to load: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_6
    invoke-static {p0, p3, p4}, Lcom/facebook/soloader/SoLoader;->doLoadLibraryBySoName(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    const-string p4, "SoLoader"

    .line 924
    invoke-static {p4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p4, "SoLoader"

    .line 925
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_7
    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 928
    :try_start_8
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 929
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p0

    :catch_0
    move-exception p0

    .line 916
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string p2, "unexpected e_machine:"

    .line 917
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "unexpected e_machine:"

    .line 919
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 920
    new-instance p2, Lcom/facebook/soloader/SoLoader$WrongAbiError;

    invoke-direct {p2, p0, p1}, Lcom/facebook/soloader/SoLoader$WrongAbiError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    .line 922
    :cond_8
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_1
    move-exception p0

    .line 907
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p0

    :cond_9
    :goto_2
    and-int/lit8 p3, p3, 0x10

    if-nez p3, :cond_e

    .line 938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    sget-object p3, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    const/4 v2, 0x1

    :cond_a
    if-eqz p2, :cond_e

    if-nez v2, :cond_e

    .line 940
    sget-boolean p2, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p2, :cond_b

    const-string p3, "MergedSoMapping.invokeJniOnload["

    const-string p4, "]"

    .line 941
    invoke-static {p3, p1, p4}, Lcom/facebook/soloader/Api18TraceUtils;->beginTraceSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_b
    :try_start_c
    const-string p3, "SoLoader"

    .line 944
    invoke-static {p3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_c

    const-string p3, "SoLoader"

    .line 945
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "About to merge: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_c
    invoke-static {p1}, Lcom/facebook/soloader/MergedSoMapping;->invokeJniOnload(Ljava/lang/String;)V

    .line 948
    sget-object p3, Lcom/facebook/soloader/SoLoader;->sLoadedAndMergedLibraries:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz p2, :cond_e

    .line 976
    :try_start_d
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p2

    .line 967
    :try_start_e
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to call JNI_OnLoad from \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', which has been merged into \'"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'.  See comment for details."

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 975
    :goto_3
    :try_start_f
    sget-boolean p1, Lcom/facebook/soloader/SoLoader;->SYSTRACE_LIBRARY_LOADING:Z

    if-eqz p1, :cond_d

    .line 976
    invoke-static {}, Lcom/facebook/soloader/Api18TraceUtils;->endSection()V

    .line 978
    :cond_d
    throw p0

    .line 981
    :cond_e
    :goto_4
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 983
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    xor-int/lit8 p0, v3, 0x1

    return p0

    :catchall_3
    move-exception p0

    .line 981
    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception p0

    .line 983
    sget-object p1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 984
    throw p0

    :catchall_5
    move-exception p0

    .line 885
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw p0
.end method

.method private static loadLibraryOnNonAndroid(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 778
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v0, :cond_4

    .line 779
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 781
    :try_start_0
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-nez v1, :cond_3

    const-string v1, "http://www.android.com/"

    const-string v2, "java.vendor.url"

    .line 785
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    goto :goto_1

    .line 790
    :cond_0
    const-class v1, Lcom/facebook/soloader/SoLoader;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    :try_start_1
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sLoadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 793
    sget-object v3, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    if-eqz v3, :cond_1

    .line 794
    invoke-interface {v3, p0}, Lcom/facebook/soloader/SystemLoadLibraryWrapper;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 799
    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 800
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 804
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 805
    throw p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeLdLibraryPath()Ljava/lang/String;
    .locals 6

    const-string v0, "SoLoader"

    .line 1189
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1191
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    if-eqz v2, :cond_0

    .line 1195
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1196
    invoke-virtual {v5, v1}, Lcom/facebook/soloader/SoSource;->addToLdLibraryPath(Ljava/util/Collection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ":"

    .line 1199
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 1200
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeLdLibraryPath final path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    :cond_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1206
    throw v0
.end method

.method public static makeNonZipPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ":"

    .line 1113
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1114
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1115
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    const-string v5, "!"

    .line 1116
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1119
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1122
    :cond_2
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makePrepareFlags()I
    .locals 2

    .line 459
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 461
    :try_start_0
    sget v1, Lcom/facebook/soloader/SoLoader;->sFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 466
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 467
    throw v0
.end method

.method public static prependSoSource(Lcom/facebook/soloader/SoSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SoLoader"

    .line 1167
    sget-object v1, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1169
    :try_start_0
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 1170
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makePrepareFlags()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/facebook/soloader/SoSource;->prepare(I)V

    .line 1171
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Lcom/facebook/soloader/SoSource;

    const/4 v5, 0x0

    .line 1172
    aput-object p0, v3, v5

    .line 1173
    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1174
    sput-object v3, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    .line 1175
    sget-object v2, Lcom/facebook/soloader/SoLoader;->sSoSourcesVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v2, 0x3

    .line 1176
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepended to SO sources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1181
    throw p0
.end method

.method public static setInTestMode()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/soloader/SoSource;

    .line 598
    new-instance v1, Lcom/facebook/soloader/NoopSoSource;

    invoke-direct {v1}, Lcom/facebook/soloader/NoopSoSource;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader$TestOnlyUtils;->setSoSources([Lcom/facebook/soloader/SoSource;)V

    return-void
.end method

.method public static setSystemLoadLibraryWrapper(Lcom/facebook/soloader/SystemLoadLibraryWrapper;)V
    .locals 0

    .line 646
    sput-object p0, Lcom/facebook/soloader/SoLoader;->sSystemLoadLibraryWrapper:Lcom/facebook/soloader/SystemLoadLibraryWrapper;

    return-void
.end method

.method public static unpackLibraryAndDependencies(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 997
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->assertInitialized()V

    .line 999
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1001
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static unpackLibraryBySoName(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1128
    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSources:[Lcom/facebook/soloader/SoSource;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1129
    invoke-virtual {v3, p0}, Lcom/facebook/soloader/SoSource;->unpackLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1135
    sget-object p0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1138
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    .line 1135
    sget-object v0, Lcom/facebook/soloader/SoLoader;->sSoSourcesLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1136
    throw p0
.end method

.method public static useDepsFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1245
    invoke-static {v0, p0}, Lcom/facebook/soloader/SysUtil;->makeApkDepBlock(Ljava/io/File;Landroid/content/Context;)[B

    move-result-object p0

    .line 1246
    invoke-static {p0, p1}, Lcom/facebook/soloader/NativeDeps;->useDepsFile([BLjava/lang/String;)Z

    move-result p0

    return p0
.end method
