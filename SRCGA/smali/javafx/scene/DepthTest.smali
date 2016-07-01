.class public final enum Ljavafx/scene/DepthTest;
.super Ljava/lang/Enum;
.source "DepthTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/DepthTest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/DepthTest;

.field public static final enum DISABLE:Ljavafx/scene/DepthTest;

.field public static final enum ENABLE:Ljavafx/scene/DepthTest;

.field public static final enum INHERIT:Ljavafx/scene/DepthTest;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Ljavafx/scene/DepthTest;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DISABLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/DepthTest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/DepthTest;->DISABLE:Ljavafx/scene/DepthTest;

    .line 45
    new-instance v0, Ljavafx/scene/DepthTest;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ENABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/DepthTest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/DepthTest;->ENABLE:Ljavafx/scene/DepthTest;

    .line 50
    new-instance v0, Ljavafx/scene/DepthTest;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "INHERIT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/DepthTest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/DepthTest;->INHERIT:Ljavafx/scene/DepthTest;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/DepthTest;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/DepthTest;->DISABLE:Ljavafx/scene/DepthTest;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/DepthTest;->ENABLE:Ljavafx/scene/DepthTest;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/DepthTest;->INHERIT:Ljavafx/scene/DepthTest;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/DepthTest;->$VALUES:[Ljavafx/scene/DepthTest;

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
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/DepthTest;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/DepthTest;
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/DepthTest;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/DepthTest;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/DepthTest;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ljavafx/scene/DepthTest;->$VALUES:[Ljavafx/scene/DepthTest;

    invoke-virtual {v0}, [Ljavafx/scene/DepthTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/DepthTest;

    return-object v0
.end method
