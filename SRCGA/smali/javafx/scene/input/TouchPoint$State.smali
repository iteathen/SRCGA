.class public final enum Ljavafx/scene/input/TouchPoint$State;
.super Ljava/lang/Enum;
.source "TouchPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/TouchPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/input/TouchPoint$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/input/TouchPoint$State;

.field public static final enum MOVED:Ljavafx/scene/input/TouchPoint$State;

.field public static final enum PRESSED:Ljavafx/scene/input/TouchPoint$State;

.field public static final enum RELEASED:Ljavafx/scene/input/TouchPoint$State;

.field public static final enum STATIONARY:Ljavafx/scene/input/TouchPoint$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 373
    new-instance v0, Ljavafx/scene/input/TouchPoint$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PRESSED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/TouchPoint$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/TouchPoint$State;->PRESSED:Ljavafx/scene/input/TouchPoint$State;

    .line 377
    new-instance v0, Ljavafx/scene/input/TouchPoint$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MOVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/TouchPoint$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/TouchPoint$State;->MOVED:Ljavafx/scene/input/TouchPoint$State;

    .line 381
    new-instance v0, Ljavafx/scene/input/TouchPoint$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STATIONARY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/TouchPoint$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/TouchPoint$State;->STATIONARY:Ljavafx/scene/input/TouchPoint$State;

    .line 385
    new-instance v0, Ljavafx/scene/input/TouchPoint$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RELEASED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/TouchPoint$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/TouchPoint$State;->RELEASED:Ljavafx/scene/input/TouchPoint$State;

    .line 369
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/scene/input/TouchPoint$State;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/TouchPoint$State;->PRESSED:Ljavafx/scene/input/TouchPoint$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/TouchPoint$State;->MOVED:Ljavafx/scene/input/TouchPoint$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/TouchPoint$State;->STATIONARY:Ljavafx/scene/input/TouchPoint$State;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/input/TouchPoint$State;->RELEASED:Ljavafx/scene/input/TouchPoint$State;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/TouchPoint$State;->$VALUES:[Ljavafx/scene/input/TouchPoint$State;

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
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/TouchPoint$State;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/input/TouchPoint$State;
    .locals 3

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/input/TouchPoint$State;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/TouchPoint$State;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/input/TouchPoint$State;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Ljavafx/scene/input/TouchPoint$State;->$VALUES:[Ljavafx/scene/input/TouchPoint$State;

    invoke-virtual {v0}, [Ljavafx/scene/input/TouchPoint$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/input/TouchPoint$State;

    return-object v0
.end method
