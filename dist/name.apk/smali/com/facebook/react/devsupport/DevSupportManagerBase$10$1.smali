.class Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase$10;->onOptionSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$10;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase$10;Landroid/widget/EditText;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$10;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 476
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$10;

    iget-object p2, p2, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    # getter for: Lcom/facebook/react/devsupport/DevSupportManagerBase;->mDevSettings:Lcom/facebook/react/devsupport/DevInternalSettings;
    invoke-static {p2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$200(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/devsupport/DevInternalSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/react/devsupport/DevInternalSettings;->getPackagerConnectionSettings()Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;->setDebugServerHost(Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$10$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerBase$10;

    iget-object p1, p1, Lcom/facebook/react/devsupport/DevSupportManagerBase$10;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-virtual {p1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->handleReloadJS()V

    return-void
.end method
