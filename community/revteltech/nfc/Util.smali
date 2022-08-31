.class public Lcommunity/revteltech/nfc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NfcPlugin"

.field protected static final hexArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcommunity/revteltech/nfc/Util;->hexArray:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArrayToJSON([B)Lorg/json/JSONArray;
    .locals 4

    .line 98
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 99
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 101
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 107
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 109
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 110
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 112
    sget-object v4, Lcommunity/revteltech/nfc/Util;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 113
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static jsonToByteArray(Lorg/json/JSONArray;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 122
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static jsonToNdefRecords(Ljava/lang/String;)[Landroid/nfc/NdefRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "tnf"

    .line 88
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    const-string v4, "type"

    .line 89
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcommunity/revteltech/nfc/Util;->jsonToByteArray(Lorg/json/JSONArray;)[B

    move-result-object v4

    const-string v5, "id"

    .line 90
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcommunity/revteltech/nfc/Util;->jsonToByteArray(Lorg/json/JSONArray;)[B

    move-result-object v5

    const-string v6, "payload"

    .line 91
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcommunity/revteltech/nfc/Util;->jsonToByteArray(Lorg/json/JSONArray;)[B

    move-result-object v2

    .line 92
    new-instance v6, Landroid/nfc/NdefRecord;

    int-to-short v3, v3

    invoke-direct {v6, v3, v4, v5, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    aput-object v6, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static messageToJSON(Landroid/nfc/NdefMessage;)Lorg/json/JSONArray;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 135
    invoke-static {v3}, Lcommunity/revteltech/nfc/Util;->recordToJSON(Landroid/nfc/NdefRecord;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method static ndefToJSON(Landroid/nfc/tech/Ndef;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "canMakeReadOnly"

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getTag()Landroid/nfc/Tag;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "id"

    .line 30
    invoke-virtual {v2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v4

    invoke-static {v4}, Lcommunity/revteltech/nfc/Util;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "techTypes"

    .line 31
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "type"

    .line 34
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcommunity/revteltech/nfc/Util;->translateType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "maxSize"

    .line 35
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "isWritable"

    .line 36
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "ndefMessage"

    .line 37
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    invoke-static {v3}, Lcommunity/revteltech/nfc/Util;->messageToJSON(Landroid/nfc/NdefMessage;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->canMakeReadOnly()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 44
    :catch_0
    :try_start_2
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert ndef into json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NfcPlugin"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method static recordToJSON(Landroid/nfc/NdefRecord;)Lorg/json/JSONObject;
    .locals 4

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tnf"

    .line 144
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 145
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    invoke-static {v2}, Lcommunity/revteltech/nfc/Util;->byteArrayToJSON([B)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 146
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v2

    invoke-static {v2}, Lcommunity/revteltech/nfc/Util;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload"

    .line 147
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v2}, Lcommunity/revteltech/nfc/Util;->byteArrayToJSON([B)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert ndef record into json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NfcPlugin"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method static tagToJSON(Landroid/nfc/Tag;)Lorg/json/JSONObject;
    .locals 4

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "id"

    .line 58
    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    invoke-static {v2}, Lcommunity/revteltech/nfc/Util;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "techTypes"

    .line 59
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert tag into json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NfcPlugin"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method static translateType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "org.nfcforum.ndef.type1"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NFC Forum Type 1"

    goto :goto_0

    :cond_0
    const-string v0, "org.nfcforum.ndef.type2"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "NFC Forum Type 2"

    goto :goto_0

    :cond_1
    const-string v0, "org.nfcforum.ndef.type3"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "NFC Forum Type 3"

    goto :goto_0

    :cond_2
    const-string v0, "org.nfcforum.ndef.type4"

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "NFC Forum Type 4"

    :cond_3
    :goto_0
    return-object p0
.end method
