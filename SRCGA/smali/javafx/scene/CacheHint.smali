.class public final enum Ljavafx/scene/CacheHint;
.super Ljava/lang/Enum;
.source "CacheHint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/CacheHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/CacheHint;

.field public static final enum DEFAULT:Ljavafx/scene/CacheHint;

.field public static final enum QUALITY:Ljavafx/scene/CacheHint;

.field public static final enum ROTATE:Ljavafx/scene/CacheHint;

.field public static final enum SCALE:Ljavafx/scene/CacheHint;

.field public static final enum SCALE_AND_ROTATE:Ljavafx/scene/CacheHint;

.field public static final enum SPEED:Ljavafx/scene/CacheHint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Ljavafx/scene/CacheHint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/CacheHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/CacheHint;->DEFAULT:Ljavafx/scene/CacheHint;

    .line 47
    new-instance v0, Ljavafx/scene/CacheHint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SPEED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/CacheHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/CacheHint;->SPEED:Ljavafx/scene/CacheHint;

    .line 62
    new-instance v0, Ljavafx/scene/CacheHint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "QUALITY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/CacheHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/CacheHint;->QUALITY:Ljavafx/scene/CacheHint;

    .line 69
    new-instance v0, Ljavafx/scene/CacheHint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SCALE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/CacheHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/CacheHint;->SCALE:Ljavafx/scene/CacheHint;

    .line 76
    new-instance v0, Ljavafx/scene/CacheHint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ROTATE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/CacheHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/CacheHint;->ROTATE:Ljavafx/scene/CacheHint;

    .line 83
    new-instance v0, Ljavafx/scene/CacheHint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SCALE_AND_ROTATE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/scene/CacheHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/CacheHint;->SCALE_AND_ROTATE:Ljavafx/scene/CacheHint;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljavafx/scene/CacheHint;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/CacheHint;->DEFAULT:Ljavafx/scene/CacheHint;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/CacheHint;->SPEED:Ljavafx/scene/CacheHint;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/CacheHint;->QUALITY:Ljavafx/scene/CacheHint;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/CacheHint;->SCALE:Ljavafx/scene/CacheHint;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/CacheHint;->ROTATE:Ljavafx/scene/CacheHint;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/CacheHint;->SCALE_AND_ROTATE:Ljavafx/scene/CacheHint;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/CacheHint;->$VALUES:[Ljavafx/scene/CacheHint;

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
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CacheHint;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/CacheHint;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/CacheHint;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/CacheHint;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/CacheHint;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ljavafx/scene/CacheHint;->$VALUES:[Ljavafx/scene/CacheHint;

    invoke-virtual {v0}, [Ljavafx/scene/CacheHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/CacheHint;

    return-object v0
.end method
