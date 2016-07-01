.class final enum Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;
.super Ljava/lang/Enum;
.source "RotateGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RotateRecognitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

.field public static final enum ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

.field public static final enum FAILURE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

.field public static final enum IDLE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

.field public static final enum INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

.field public static final enum PRE_INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

.field public static final enum TRACKING:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 451
    new-instance v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "IDLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 452
    new-instance v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRACKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 453
    new-instance v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ACTIVE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 454
    new-instance v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PRE_INERTIA"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 455
    new-instance v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INERTIA"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 456
    new-instance v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FAILURE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    .line 450
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->IDLE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->TRACKING:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->ACTIVE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->PRE_INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->INERTIA:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->FAILURE:Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->$VALUES:[Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

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
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;
    .locals 3

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->$VALUES:[Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    invoke-virtual {v0}, [Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/tk/quantum/RotateGestureRecognizer$RotateRecognitionState;

    return-object v0
.end method
