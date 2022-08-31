.class Lcommunity/revteltech/nfc/NfcManager$1;
.super Ljava/lang/Object;
.source "NfcManager.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcommunity/revteltech/nfc/NfcManager;->enableDisableForegroundDispatch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcommunity/revteltech/nfc/NfcManager;

.field final synthetic val$manager:Lcommunity/revteltech/nfc/NfcManager;


# direct methods
.method constructor <init>(Lcommunity/revteltech/nfc/NfcManager;Lcommunity/revteltech/nfc/NfcManager;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    iput-object p2, p0, Lcommunity/revteltech/nfc/NfcManager$1;->val$manager:Lcommunity/revteltech/nfc/NfcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 6

    .line 1172
    monitor-enter p0

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->val$manager:Lcommunity/revteltech/nfc/NfcManager;

    # setter for: Lcommunity/revteltech/nfc/NfcManager;->tag:Landroid/nfc/Tag;
    invoke-static {v0, p1}, Lcommunity/revteltech/nfc/NfcManager;->access$002(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Landroid/nfc/Tag;

    const-string v0, "ReactNativeNfcManager"

    const-string v1, "readerMode onTagDiscovered"

    .line 1174
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-class v1, Landroid/nfc/tech/Ndef;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1178
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 1179
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    new-array v4, v2, [Landroid/nfc/NdefMessage;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v5

    aput-object v5, v4, v1

    # invokes: Lcommunity/revteltech/nfc/NfcManager;->ndef2React(Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;
    invoke-static {v3, v0, v4}, Lcommunity/revteltech/nfc/NfcManager;->access$100(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/tech/Ndef;[Landroid/os/Parcelable;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    # invokes: Lcommunity/revteltech/nfc/NfcManager;->tag2React(Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;
    invoke-static {v0, p1}, Lcommunity/revteltech/nfc/NfcManager;->access$200(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/Tag;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1185
    iget-object v3, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    const-string v4, "NfcManagerDiscoverTag"

    # invokes: Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    invoke-static {v3, v4, v0}, Lcommunity/revteltech/nfc/NfcManager;->access$300(Lcommunity/revteltech/nfc/NfcManager;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1186
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    # getter for: Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    invoke-static {v0}, Lcommunity/revteltech/nfc/NfcManager;->access$400(Lcommunity/revteltech/nfc/NfcManager;)Lcommunity/revteltech/nfc/TagTechnologyRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    # getter for: Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    invoke-static {v0}, Lcommunity/revteltech/nfc/NfcManager;->access$400(Lcommunity/revteltech/nfc/NfcManager;)Lcommunity/revteltech/nfc/TagTechnologyRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1187
    iget-object v0, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    # getter for: Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    invoke-static {v0}, Lcommunity/revteltech/nfc/NfcManager;->access$400(Lcommunity/revteltech/nfc/NfcManager;)Lcommunity/revteltech/nfc/TagTechnologyRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->connect(Landroid/nfc/Tag;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1189
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    # getter for: Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->access$400(Lcommunity/revteltech/nfc/NfcManager;)Lcommunity/revteltech/nfc/TagTechnologyRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    # getter for: Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    invoke-static {v1}, Lcommunity/revteltech/nfc/NfcManager;->access$400(Lcommunity/revteltech/nfc/NfcManager;)Lcommunity/revteltech/nfc/TagTechnologyRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getTechType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 1192
    :cond_1
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager$1;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    # getter for: Lcommunity/revteltech/nfc/NfcManager;->techRequest:Lcommunity/revteltech/nfc/TagTechnologyRequest;
    invoke-static {p1}, Lcommunity/revteltech/nfc/NfcManager;->access$400(Lcommunity/revteltech/nfc/NfcManager;)Lcommunity/revteltech/nfc/TagTechnologyRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcommunity/revteltech/nfc/TagTechnologyRequest;->getPendingCallback()Lcom/facebook/react/bridge/Callback;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v3, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 1196
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
