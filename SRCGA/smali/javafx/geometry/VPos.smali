.class public final enum Ljavafx/geometry/VPos;
.super Ljava/lang/Enum;
.source "VPos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/geometry/VPos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/geometry/VPos;

.field public static final enum BASELINE:Ljavafx/geometry/VPos;

.field public static final enum BOTTOM:Ljavafx/geometry/VPos;

.field public static final enum CENTER:Ljavafx/geometry/VPos;

.field public static final enum TOP:Ljavafx/geometry/VPos;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Ljavafx/geometry/VPos;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TOP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/VPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    .line 41
    new-instance v0, Ljavafx/geometry/VPos;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/VPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 46
    new-instance v0, Ljavafx/geometry/VPos;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BASELINE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/VPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    .line 51
    new-instance v0, Ljavafx/geometry/VPos;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOTTOM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/VPos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/geometry/VPos;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/geometry/VPos;->$VALUES:[Ljavafx/geometry/VPos;

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

    .local v0, "this":Ljavafx/geometry/VPos;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/geometry/VPos;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/geometry/VPos;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/VPos;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/geometry/VPos;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/geometry/VPos;->$VALUES:[Ljavafx/geometry/VPos;

    invoke-virtual {v0}, [Ljavafx/geometry/VPos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/geometry/VPos;

    return-object v0
.end method
