.class Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;
.super Ljava/lang/Object;
.source "NfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcommunity/revteltech/nfc/NfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteNdefRequest"
.end annotation


# instance fields
.field callback:Lcom/facebook/react/bridge/Callback;

.field format:Z

.field formatReadOnly:Z

.field message:Landroid/nfc/NdefMessage;

.field final synthetic this$0:Lcommunity/revteltech/nfc/NfcManager;


# direct methods
.method constructor <init>(Lcommunity/revteltech/nfc/NfcManager;Landroid/nfc/NdefMessage;Lcom/facebook/react/bridge/Callback;ZZ)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->this$0:Lcommunity/revteltech/nfc/NfcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->message:Landroid/nfc/NdefMessage;

    .line 75
    iput-object p3, p0, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->callback:Lcom/facebook/react/bridge/Callback;

    .line 76
    iput-boolean p4, p0, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->format:Z

    .line 77
    iput-boolean p5, p0, Lcommunity/revteltech/nfc/NfcManager$WriteNdefRequest;->formatReadOnly:Z

    return-void
.end method
