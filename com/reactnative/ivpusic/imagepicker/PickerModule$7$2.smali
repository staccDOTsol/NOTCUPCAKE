.class Lcom/reactnative/ivpusic/imagepicker/PickerModule$7$2;
.super Ljava/lang/Object;
.source "PickerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/ivpusic/imagepicker/PickerModule$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$7;


# direct methods
.method constructor <init>(Lcom/reactnative/ivpusic/imagepicker/PickerModule$7;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$7$2;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 563
    aget-object p1, p1, v0

    check-cast p1, Lcom/facebook/react/bridge/WritableNativeMap;

    .line 564
    iget-object v0, p0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$7$2;->this$1:Lcom/reactnative/ivpusic/imagepicker/PickerModule$7;

    iget-object v0, v0, Lcom/reactnative/ivpusic/imagepicker/PickerModule$7;->this$0:Lcom/reactnative/ivpusic/imagepicker/PickerModule;

    # getter for: Lcom/reactnative/ivpusic/imagepicker/PickerModule;->resultCollector:Lcom/reactnative/ivpusic/imagepicker/ResultCollector;
    invoke-static {v0}, Lcom/reactnative/ivpusic/imagepicker/PickerModule;->access$800(Lcom/reactnative/ivpusic/imagepicker/PickerModule;)Lcom/reactnative/ivpusic/imagepicker/ResultCollector;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lcom/facebook/react/bridge/WritableNativeMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/reactnative/ivpusic/imagepicker/ResultCollector;->notifyProblem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
