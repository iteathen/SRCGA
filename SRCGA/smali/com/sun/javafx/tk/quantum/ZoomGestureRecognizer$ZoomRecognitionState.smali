.class final enum Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;
.super Ljava/lang/Enum;
.source "ZoomGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZoomRecognitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

.field public static final enum ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

.field public static final enum FAILURE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

.field public static final enum IDLE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

.field public static final enum INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

.field public static final enum PRE_INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

.field public static final enum TRACKING:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 422
    new-instance v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "IDLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 423
    new-instance v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRACKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 424
    new-instance v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ACTIVE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 425
    new-instance v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PRE_INERTIA"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 426
    new-instance v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INERTIA"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 427
    new-instance v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FAILURE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    .line 421
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->$VALUES:[Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;
    .locals 3

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->$VALUES:[Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    invoke-virtual {v0}, [Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/tk/quantum/ZoomGestureRecognizer$ZoomRecognitionState;

    return-object v0
.end method
