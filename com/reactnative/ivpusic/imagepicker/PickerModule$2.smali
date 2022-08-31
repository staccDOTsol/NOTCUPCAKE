.class Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;
.super Ljava/lang/Object;
.source "PickerModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/ivpusic/imagepicker/PickerModule;->cleanSingle(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

.field final synthetic val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

.field final synthetic val$pathToDelete:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/lang/String;Lcom/reactnative/ivpusic/imagepicker/PickerModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iput-object p2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$pathToDelete:Ljava/lang/String;

    iput-object p3, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    iput-object p4, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$pathToDelete:Ljava/lang/String;

    const-string v2, "file://"

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$module:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    # invokes: Lcom/reactnative/ivpusic/imagepicker/PickerModule;->deleteRecursive(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$100(Lcom/reactnative/ivpusic/imagepicker/PickerModule;Ljava/io/File;)V

    .line 214
    iget-object v1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not exist. Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    iget-object v2, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$2;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "E_ERROR_WHILE_CLEANING_FILES"

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
