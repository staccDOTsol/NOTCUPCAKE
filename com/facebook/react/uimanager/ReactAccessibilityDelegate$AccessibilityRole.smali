.class public final enum Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
.super Ljava/lang/Enum;
.source "ReactAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessibilityRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum ADJUSTABLE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum ALERT:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum BUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum CHECKBOX:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum COMBOBOX:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum HEADER:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum IMAGE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum IMAGEBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum KEYBOARDKEY:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum LIST:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum MENU:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum MENUBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum MENUITEM:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum NONE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum PROGRESSBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum RADIO:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum RADIOGROUP:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum SCROLLBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum SEARCH:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum SPINBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum SUMMARY:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum SWITCH:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum TAB:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum TABLIST:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum TEXT:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum TIMER:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum TOGGLEBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field public static final enum TOOLBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 84
    new-instance v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->NONE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 85
    new-instance v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v3, "BUTTON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->BUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 86
    new-instance v3, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v5, "TOGGLEBUTTON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TOGGLEBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 87
    new-instance v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v7, "LINK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 88
    new-instance v7, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v9, "SEARCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SEARCH:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 89
    new-instance v9, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v11, "IMAGE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->IMAGE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 90
    new-instance v11, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v13, "IMAGEBUTTON"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->IMAGEBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 91
    new-instance v13, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v15, "KEYBOARDKEY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->KEYBOARDKEY:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 92
    new-instance v15, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v14, "TEXT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TEXT:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 93
    new-instance v14, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v12, "ADJUSTABLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->ADJUSTABLE:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 94
    new-instance v12, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v10, "SUMMARY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SUMMARY:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 95
    new-instance v10, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v8, "HEADER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->HEADER:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 96
    new-instance v8, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "ALERT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->ALERT:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 97
    new-instance v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v4, "CHECKBOX"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->CHECKBOX:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 98
    new-instance v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v2, "COMBOBOX"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->COMBOBOX:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 99
    new-instance v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "MENU"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->MENU:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 100
    new-instance v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v4, "MENUBAR"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->MENUBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 101
    new-instance v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v2, "MENUITEM"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->MENUITEM:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 102
    new-instance v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "PROGRESSBAR"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->PROGRESSBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 103
    new-instance v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v4, "RADIO"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->RADIO:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 104
    new-instance v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v2, "RADIOGROUP"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->RADIOGROUP:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 105
    new-instance v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "SCROLLBAR"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SCROLLBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 106
    new-instance v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v4, "SPINBUTTON"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SPINBUTTON:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 107
    new-instance v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v4, "SWITCH"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->SWITCH:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 108
    new-instance v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "TAB"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TAB:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 109
    new-instance v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "TABLIST"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TABLIST:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 110
    new-instance v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "TIMER"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TIMER:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 111
    new-instance v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "LIST"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->LIST:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 112
    new-instance v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const-string v6, "TOOLBAR"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->TOOLBAR:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    .line 83
    sput-object v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->$VALUES:[Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    .locals 5

    .line 165
    invoke-static {}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->values()[Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 166
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility role value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getValue(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;)Ljava/lang/String;
    .locals 3

    .line 115
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$3;->$SwitchMap$com$facebook$react$uimanager$ReactAccessibilityDelegate$AccessibilityRole:[I

    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility role value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "android.view.View"

    return-object p0

    :pswitch_1
    const-string p0, "android.widget.AbsListView"

    return-object p0

    :pswitch_2
    const-string p0, "android.widget.Switch"

    return-object p0

    :pswitch_3
    const-string p0, "android.widget.SpinButton"

    return-object p0

    :pswitch_4
    const-string p0, "android.widget.RadioButton"

    return-object p0

    :pswitch_5
    const-string p0, "android.widget.CheckBox"

    return-object p0

    :pswitch_6
    const-string p0, "android.widget.SeekBar"

    return-object p0

    :pswitch_7
    const-string p0, "android.widget.TextView"

    return-object p0

    :pswitch_8
    const-string p0, "android.inputmethodservice.Keyboard$Key"

    return-object p0

    :pswitch_9
    const-string p0, "android.widget.ImageButon"

    return-object p0

    :pswitch_a
    const-string p0, "android.widget.ImageView"

    return-object p0

    :pswitch_b
    const-string p0, "android.widget.EditText"

    return-object p0

    :pswitch_c
    const-string p0, "android.widget.ToggleButton"

    return-object p0

    :pswitch_d
    const-string p0, "android.widget.Button"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    .locals 1

    .line 83
    const-class v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    .locals 1

    .line 83
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->$VALUES:[Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    invoke-virtual {v0}, [Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    return-object v0
.end method
