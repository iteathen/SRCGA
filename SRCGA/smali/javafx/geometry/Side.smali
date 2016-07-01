.class public final enum Ljavafx/geometry/Side;
.super Ljava/lang/Enum;
.source "Side.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/geometry/Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/geometry/Side;

.field public static final enum BOTTOM:Ljavafx/geometry/Side;

.field public static final enum LEFT:Ljavafx/geometry/Side;

.field public static final enum RIGHT:Ljavafx/geometry/Side;

.field public static final enum TOP:Ljavafx/geometry/Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Ljavafx/geometry/Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TOP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    .line 41
    new-instance v0, Ljavafx/geometry/Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    .line 46
    new-instance v0, Ljavafx/geometry/Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LEFT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    .line 51
    new-instance v0, Ljavafx/geometry/Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RIGHT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/geometry/Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/geometry/Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/geometry/Side;->$VALUES:[Ljavafx/geometry/Side;

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

    .local v0, "this":Ljavafx/geometry/Side;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/geometry/Side;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/geometry/Side;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Side;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/geometry/Side;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/geometry/Side;->$VALUES:[Ljavafx/geometry/Side;

    invoke-virtual {v0}, [Ljavafx/geometry/Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/geometry/Side;

    return-object v0
.end method


# virtual methods
.method public isHorizontal()Z
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Side;
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/geometry/Side;
    return v0

    .restart local v0    # "this":Ljavafx/geometry/Side;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVertical()Z
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Side;
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/geometry/Side;
    return v0

    .restart local v0    # "this":Ljavafx/geometry/Side;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
