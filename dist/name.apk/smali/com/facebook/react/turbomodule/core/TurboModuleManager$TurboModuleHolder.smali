.class Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;
.super Ljava/lang/Object;
.source "TurboModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/turbomodule/core/TurboModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TurboModuleHolder"
.end annotation


# static fields
.field private static volatile sHolderCount:I


# instance fields
.field private volatile mIsDoneCreatingModule:Z

.field private volatile mIsTryingToCreate:Z

.field private volatile mModule:Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

.field private volatile mModuleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mModule:Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mIsTryingToCreate:Z

    .line 354
    iput-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mIsDoneCreatingModule:Z

    .line 359
    sget v0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->sHolderCount:I

    iput v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mModuleId:I

    .line 360
    sget v0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->sHolderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->sHolderCount:I

    return-void
.end method


# virtual methods
.method endCreatingModule()V
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mIsTryingToCreate:Z

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mIsDoneCreatingModule:Z

    return-void
.end method

.method getModule()Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mModule:Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    return-object v0
.end method

.method getModuleId()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mModuleId:I

    return v0
.end method

.method isCreatingModule()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mIsTryingToCreate:Z

    return v0
.end method

.method isDoneCreatingModule()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mIsDoneCreatingModule:Z

    return v0
.end method

.method setModule(Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mModule:Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    return-void
.end method

.method startCreatingModule()V
    .locals 1

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager$TurboModuleHolder;->mIsTryingToCreate:Z

    return-void
.end method
