.class public final synthetic Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$WhenMappings;
.super Ljava/lang/Object;
.source "GestureHandlerOrchestrator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/swmansion/gesturehandler/PointerEventsConfig;->values()[Lcom/swmansion/gesturehandler/PointerEventsConfig;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/PointerEventsConfig;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->BOX_ONLY:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/PointerEventsConfig;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->BOX_NONE:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/PointerEventsConfig;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/swmansion/gesturehandler/PointerEventsConfig;->AUTO:Lcom/swmansion/gesturehandler/PointerEventsConfig;

    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/PointerEventsConfig;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
