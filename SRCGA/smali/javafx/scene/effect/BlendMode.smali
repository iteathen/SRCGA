.class public final enum Ljavafx/scene/effect/BlendMode;
.super Ljava/lang/Enum;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/effect/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/effect/BlendMode;

.field public static final enum ADD:Ljavafx/scene/effect/BlendMode;

.field public static final enum BLUE:Ljavafx/scene/effect/BlendMode;

.field public static final enum COLOR_BURN:Ljavafx/scene/effect/BlendMode;

.field public static final enum COLOR_DODGE:Ljavafx/scene/effect/BlendMode;

.field public static final enum DARKEN:Ljavafx/scene/effect/BlendMode;

.field public static final enum DIFFERENCE:Ljavafx/scene/effect/BlendMode;

.field public static final enum EXCLUSION:Ljavafx/scene/effect/BlendMode;

.field public static final enum GREEN:Ljavafx/scene/effect/BlendMode;

.field public static final enum HARD_LIGHT:Ljavafx/scene/effect/BlendMode;

.field public static final enum LIGHTEN:Ljavafx/scene/effect/BlendMode;

.field public static final enum MULTIPLY:Ljavafx/scene/effect/BlendMode;

.field public static final enum OVERLAY:Ljavafx/scene/effect/BlendMode;

.field public static final enum RED:Ljavafx/scene/effect/BlendMode;

.field public static final enum SCREEN:Ljavafx/scene/effect/BlendMode;

.field public static final enum SOFT_LIGHT:Ljavafx/scene/effect/BlendMode;

.field public static final enum SRC_ATOP:Ljavafx/scene/effect/BlendMode;

.field public static final enum SRC_OVER:Ljavafx/scene/effect/BlendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SRC_OVER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    .line 72
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SRC_ATOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->SRC_ATOP:Ljavafx/scene/effect/BlendMode;

    .line 88
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ADD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->ADD:Ljavafx/scene/effect/BlendMode;

    .line 109
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MULTIPLY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->MULTIPLY:Ljavafx/scene/effect/BlendMode;

    .line 131
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SCREEN"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->SCREEN:Ljavafx/scene/effect/BlendMode;

    .line 149
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OVERLAY"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->OVERLAY:Ljavafx/scene/effect/BlendMode;

    .line 165
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DARKEN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->DARKEN:Ljavafx/scene/effect/BlendMode;

    .line 181
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LIGHTEN"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->LIGHTEN:Ljavafx/scene/effect/BlendMode;

    .line 189
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLOR_DODGE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->COLOR_DODGE:Ljavafx/scene/effect/BlendMode;

    .line 198
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLOR_BURN"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->COLOR_BURN:Ljavafx/scene/effect/BlendMode;

    .line 214
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HARD_LIGHT"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->HARD_LIGHT:Ljavafx/scene/effect/BlendMode;

    .line 228
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SOFT_LIGHT"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->SOFT_LIGHT:Ljavafx/scene/effect/BlendMode;

    .line 248
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DIFFERENCE"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->DIFFERENCE:Ljavafx/scene/effect/BlendMode;

    .line 269
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EXCLUSION"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->EXCLUSION:Ljavafx/scene/effect/BlendMode;

    .line 278
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RED"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->RED:Ljavafx/scene/effect/BlendMode;

    .line 287
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GREEN"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->GREEN:Ljavafx/scene/effect/BlendMode;

    .line 296
    new-instance v0, Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BLUE"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljavafx/scene/effect/BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/effect/BlendMode;->BLUE:Ljavafx/scene/effect/BlendMode;

    .line 59
    const/16 v0, 0x11

    new-array v0, v0, [Ljavafx/scene/effect/BlendMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/effect/BlendMode;->SRC_ATOP:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/effect/BlendMode;->ADD:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/effect/BlendMode;->MULTIPLY:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/effect/BlendMode;->SCREEN:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/effect/BlendMode;->OVERLAY:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/effect/BlendMode;->DARKEN:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Ljavafx/scene/effect/BlendMode;->LIGHTEN:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Ljavafx/scene/effect/BlendMode;->COLOR_DODGE:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Ljavafx/scene/effect/BlendMode;->COLOR_BURN:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget-object v3, Ljavafx/scene/effect/BlendMode;->HARD_LIGHT:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Ljavafx/scene/effect/BlendMode;->SOFT_LIGHT:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    sget-object v3, Ljavafx/scene/effect/BlendMode;->DIFFERENCE:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    sget-object v3, Ljavafx/scene/effect/BlendMode;->EXCLUSION:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    sget-object v3, Ljavafx/scene/effect/BlendMode;->RED:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    sget-object v3, Ljavafx/scene/effect/BlendMode;->GREEN:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    sget-object v3, Ljavafx/scene/effect/BlendMode;->BLUE:Ljavafx/scene/effect/BlendMode;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/effect/BlendMode;->$VALUES:[Ljavafx/scene/effect/BlendMode;

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
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/BlendMode;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/effect/BlendMode;
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/effect/BlendMode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/BlendMode;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/effect/BlendMode;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Ljavafx/scene/effect/BlendMode;->$VALUES:[Ljavafx/scene/effect/BlendMode;

    invoke-virtual {v0}, [Ljavafx/scene/effect/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/effect/BlendMode;

    return-object v0
.end method
