.class Lcom/facebook/react/devsupport/DevServerHelper$4;
.super Landroid/os/AsyncTask;
.source "DevServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevServerHelper;->closeInspectorConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevServerHelper;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevServerHelper;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$4;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 240
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$4;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    # getter for: Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    invoke-static {p1}, Lcom/facebook/react/devsupport/DevServerHelper;->access$200(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$4;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    # getter for: Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    invoke-static {p1}, Lcom/facebook/react/devsupport/DevServerHelper;->access$200(Lcom/facebook/react/devsupport/DevServerHelper;)Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/devsupport/InspectorPackagerConnection;->closeQuietly()V

    .line 245
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevServerHelper$4;->this$0:Lcom/facebook/react/devsupport/DevServerHelper;

    # setter for: Lcom/facebook/react/devsupport/DevServerHelper;->mInspectorPackagerConnection:Lcom/facebook/react/devsupport/InspectorPackagerConnection;
    invoke-static {p1, v0}, Lcom/facebook/react/devsupport/DevServerHelper;->access$202(Lcom/facebook/react/devsupport/DevServerHelper;Lcom/facebook/react/devsupport/InspectorPackagerConnection;)Lcom/facebook/react/devsupport/InspectorPackagerConnection;

    :cond_0
    return-object v0
.end method
