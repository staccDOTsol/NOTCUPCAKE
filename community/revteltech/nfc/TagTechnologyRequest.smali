.class Lcommunity/revteltech/nfc/TagTechnologyRequest;
.super Ljava/lang/Object;
.source "TagTechnologyRequest.java"


# static fields
.field static LOG_TAG:Ljava/lang/String; = "NfcManager-tech"


# instance fields
.field mJsCallback:Lcom/facebook/react/bridge/Callback;

.field mTag:Landroid/nfc/Tag;

.field mTech:Landroid/nfc/tech/TagTechnology;

.field mTechType:Ljava/lang/String;

.field mTechTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/react/bridge/Callback;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechTypes:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mJsCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    invoke-interface {v0}, Landroid/nfc/tech/TagTechnology;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    sget-object v0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fail to close tech"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method connect(Landroid/nfc/Tag;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "received null tag at connect()"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTag:Landroid/nfc/Tag;

    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 62
    iget-object v2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Ndef"

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto/16 :goto_1

    :cond_1
    const-string v3, "NfcA"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_2
    const-string v3, "NfcB"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-static {p1}, Landroid/nfc/tech/NfcB;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_3
    const-string v3, "NfcF"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    invoke-static {p1}, Landroid/nfc/tech/NfcF;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_4
    const-string v3, "NfcV"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    invoke-static {p1}, Landroid/nfc/tech/NfcV;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_5
    const-string v3, "IsoDep"

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 75
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_6
    const-string v3, "MifareClassic"

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 77
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_7
    const-string v3, "MifareUltralight"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 79
    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    goto :goto_1

    :cond_8
    const-string v3, "NdefFormatable"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 81
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v3

    iput-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    .line 84
    :cond_9
    :goto_1
    iget-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    if-nez v3, :cond_a

    goto :goto_2

    .line 89
    :cond_a
    :try_start_0
    sget-object v3, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    invoke-interface {v3}, Landroid/nfc/tech/TagTechnology;->connect()V

    .line 91
    iput-object v2, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 94
    :catch_0
    sget-object v2, Lcommunity/revteltech/nfc/TagTechnologyRequest;->LOG_TAG:Ljava/lang/String;

    const-string v3, "fail to connect tech"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    .line 100
    iput-object p1, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechType:Ljava/lang/String;

    return v0
.end method

.method getPendingCallback()Lcom/facebook/react/bridge/Callback;
    .locals 1

    .line 38
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mJsCallback:Lcom/facebook/react/bridge/Callback;

    return-object v0
.end method

.method getTagHandle()Landroid/nfc/Tag;
    .locals 1

    .line 46
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method getTechHandle()Landroid/nfc/tech/TagTechnology;
    .locals 1

    .line 42
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    return-object v0
.end method

.method getTechType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTechType:Ljava/lang/String;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcommunity/revteltech/nfc/TagTechnologyRequest;->mTech:Landroid/nfc/tech/TagTechnology;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
