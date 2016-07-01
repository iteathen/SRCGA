.class public final enum Ljavafx/geometry/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/geometry/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/geometry/Orientation;

.field public static final enum HORIZONTAL:Ljavafx/geometry/Orientation;

.field public static final enum VERTICAL:Ljavafx/geometry/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Ljavafx/geometry/Orientation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HORIZONTAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    .line 41
    new-instance v0, Ljavafx/geometry/Orientation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljavafx/geometry/Orientation;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/geometry/Orientation;->$VALUES:[Ljavafx/geometry/Orientation;

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
    .line 32
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Orientation;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/geometry/Orientation;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/geometry/Orientation;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/geometry/Orientation;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/geometry/Orientation;->$VALUES:[Ljavafx/geometry/Orientation;

    invoke-virtual {v0}, [Ljavafx/geometry/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/geometry/Orientation;

    return-object v0
.end method
