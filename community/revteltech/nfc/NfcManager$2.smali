.class Lcommunity/revteltech/nfc/NfcManager$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcommunity/revteltech/nfc/NfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcommunity/revteltech/nfc/NfcManager;


# direct methods
.method constructor <init>(Lcommunity/revteltech/nfc/NfcManager;)V
    .locals 0

    .line 1253
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager$2;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactNativeNfcManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 1259
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v1, 0x1

    .line 1260
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const-string p1, "unknown"

    goto :goto_0

    :cond_0
    const-string p1, "turning_off"

    goto :goto_0

    :cond_1
    const-string p1, "on"

    goto :goto_0

    :cond_2
    const-string p1, "turning_on"

    goto :goto_0

    :cond_3
    const-string p1, "off"

    .line 1279
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v1, "state"

    .line 1280
    invoke-interface {p2, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object p1, p0, Lcommunity/revteltech/nfc/NfcManager$2;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    const-string v1, "NfcManagerStateChanged"

    # invokes: Lcommunity/revteltech/nfc/NfcManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    invoke-static {p1, v1, p2}, Lcommunity/revteltech/nfc/NfcManager;->access$300(Lcommunity/revteltech/nfc/NfcManager;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send nfc state change event fail: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
