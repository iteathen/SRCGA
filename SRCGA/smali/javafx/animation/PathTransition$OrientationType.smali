.class public final enum Ljavafx/animation/PathTransition$OrientationType;
.super Ljava/lang/Enum;
.source "PathTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/PathTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrientationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/animation/PathTransition$OrientationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/animation/PathTransition$OrientationType;

.field public static final enum NONE:Ljavafx/animation/PathTransition$OrientationType;

.field public static final enum ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 227
    new-instance v0, Ljavafx/animation/PathTransition$OrientationType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/animation/PathTransition$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    .line 233
    new-instance v0, Ljavafx/animation/PathTransition$OrientationType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ORTHOGONAL_TO_TANGENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/animation/PathTransition$OrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/animation/PathTransition$OrientationType;->ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;

    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/animation/PathTransition$OrientationType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/animation/PathTransition$OrientationType;->NONE:Ljavafx/animation/PathTransition$OrientationType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/animation/PathTransition$OrientationType;->ORTHOGONAL_TO_TANGENT:Ljavafx/animation/PathTransition$OrientationType;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/animation/PathTransition$OrientationType;->$VALUES:[Ljavafx/animation/PathTransition$OrientationType;

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
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/PathTransition$OrientationType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/animation/PathTransition$OrientationType;
    .locals 3

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/animation/PathTransition$OrientationType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/animation/PathTransition$OrientationType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/animation/PathTransition$OrientationType;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Ljavafx/animation/PathTransition$OrientationType;->$VALUES:[Ljavafx/animation/PathTransition$OrientationType;

    invoke-virtual {v0}, [Ljavafx/animation/PathTransition$OrientationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/animation/PathTransition$OrientationType;

    return-object v0
.end method
