.class public final enum Ljavafx/stage/StageStyle;
.super Ljava/lang/Enum;
.source "StageStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/stage/StageStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/stage/StageStyle;

.field public static final enum DECORATED:Ljavafx/stage/StageStyle;

.field public static final enum TRANSPARENT:Ljavafx/stage/StageStyle;

.field public static final enum UNDECORATED:Ljavafx/stage/StageStyle;

.field public static final enum UNIFIED:Ljavafx/stage/StageStyle;

.field public static final enum UTILITY:Ljavafx/stage/StageStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Ljavafx/stage/StageStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DECORATED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/stage/StageStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/StageStyle;->DECORATED:Ljavafx/stage/StageStyle;

    .line 42
    new-instance v0, Ljavafx/stage/StageStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNDECORATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/stage/StageStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/StageStyle;->UNDECORATED:Ljavafx/stage/StageStyle;

    .line 47
    new-instance v0, Ljavafx/stage/StageStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TRANSPARENT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/stage/StageStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;

    .line 53
    new-instance v0, Ljavafx/stage/StageStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UTILITY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/stage/StageStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/StageStyle;->UTILITY:Ljavafx/stage/StageStyle;

    .line 65
    new-instance v0, Ljavafx/stage/StageStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNIFIED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/stage/StageStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/stage/StageStyle;->UNIFIED:Ljavafx/stage/StageStyle;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljavafx/stage/StageStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/stage/StageStyle;->DECORATED:Ljavafx/stage/StageStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/stage/StageStyle;->UNDECORATED:Ljavafx/stage/StageStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/stage/StageStyle;->UTILITY:Ljavafx/stage/StageStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/stage/StageStyle;->UNIFIED:Ljavafx/stage/StageStyle;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/stage/StageStyle;->$VALUES:[Ljavafx/stage/StageStyle;

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

    .local v0, "this":Ljavafx/stage/StageStyle;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/stage/StageStyle;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/stage/StageStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/stage/StageStyle;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/stage/StageStyle;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/stage/StageStyle;->$VALUES:[Ljavafx/stage/StageStyle;

    invoke-virtual {v0}, [Ljavafx/stage/StageStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/stage/StageStyle;

    return-object v0
.end method
