.class public final enum Ljavafx/geometry/NodeOrientation;
.super Ljava/lang/Enum;
.source "NodeOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/geometry/NodeOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/geometry/NodeOrientation;

.field public static final enum INHERIT:Ljavafx/geometry/NodeOrientation;

.field public static final enum LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

.field public static final enum RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Ljavafx/geometry/NodeOrientation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LEFT_TO_RIGHT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/NodeOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    .line 42
    new-instance v0, Ljavafx/geometry/NodeOrientation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RIGHT_TO_LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/NodeOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    .line 47
    new-instance v0, Ljavafx/geometry/NodeOrientation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INHERIT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/NodeOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/geometry/NodeOrientation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/geometry/NodeOrientation;->$VALUES:[Ljavafx/geometry/NodeOrientation;

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
    .line 33
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/NodeOrientation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/geometry/NodeOrientation;
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/geometry/NodeOrientation;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/NodeOrientation;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/geometry/NodeOrientation;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljavafx/geometry/NodeOrientation;->$VALUES:[Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v0}, [Ljavafx/geometry/NodeOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/geometry/NodeOrientation;

    return-object v0
.end method
