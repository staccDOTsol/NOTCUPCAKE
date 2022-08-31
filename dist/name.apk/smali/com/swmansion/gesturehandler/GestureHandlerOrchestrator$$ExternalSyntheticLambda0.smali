.class public final synthetic Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;->INSTANCE:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/swmansion/gesturehandler/GestureHandler;

    check-cast p2, Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-static {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->$r8$lambda$Hkr6HjGhzXFZDgR18hFr75UrpYs(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)I

    move-result p1

    return p1
.end method
