.class public final enum Lcom/sun/scenario/effect/Blend$Mode;
.super Ljava/lang/Enum;
.source "Blend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/Blend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/scenario/effect/Blend$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum ADD:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum BLUE:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum COLOR_BURN:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum COLOR_DODGE:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum DARKEN:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum DIFFERENCE:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum EXCLUSION:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum GREEN:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum HARD_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum LIGHTEN:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum MULTIPLY:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum OVERLAY:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum RED:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum SCREEN:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum SOFT_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum SRC_ATOP:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum SRC_OUT:Lcom/sun/scenario/effect/Blend$Mode;

.field public static final enum SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SRC_OVER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    .line 69
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SRC_IN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

    .line 83
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SRC_OUT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OUT:Lcom/sun/scenario/effect/Blend$Mode;

    .line 96
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SRC_ATOP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->SRC_ATOP:Lcom/sun/scenario/effect/Blend$Mode;

    .line 118
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ADD"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->ADD:Lcom/sun/scenario/effect/Blend$Mode;

    .line 145
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MULTIPLY"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->MULTIPLY:Lcom/sun/scenario/effect/Blend$Mode;

    .line 173
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SCREEN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->SCREEN:Lcom/sun/scenario/effect/Blend$Mode;

    .line 197
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OVERLAY"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->OVERLAY:Lcom/sun/scenario/effect/Blend$Mode;

    .line 221
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DARKEN"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->DARKEN:Lcom/sun/scenario/effect/Blend$Mode;

    .line 245
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LIGHTEN"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->LIGHTEN:Lcom/sun/scenario/effect/Blend$Mode;

    .line 259
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLOR_DODGE"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->COLOR_DODGE:Lcom/sun/scenario/effect/Blend$Mode;

    .line 274
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "COLOR_BURN"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->COLOR_BURN:Lcom/sun/scenario/effect/Blend$Mode;

    .line 296
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HARD_LIGHT"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->HARD_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

    .line 301
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SOFT_LIGHT"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->SOFT_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

    .line 327
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DIFFERENCE"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->DIFFERENCE:Lcom/sun/scenario/effect/Blend$Mode;

    .line 354
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EXCLUSION"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->EXCLUSION:Lcom/sun/scenario/effect/Blend$Mode;

    .line 371
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RED"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->RED:Lcom/sun/scenario/effect/Blend$Mode;

    .line 388
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GREEN"

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->GREEN:Lcom/sun/scenario/effect/Blend$Mode;

    .line 405
    new-instance v0, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BLUE"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/Blend$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->BLUE:Lcom/sun/scenario/effect/Blend$Mode;

    .line 45
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/sun/scenario/effect/Blend$Mode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OUT:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SRC_ATOP:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->ADD:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->MULTIPLY:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SCREEN:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->OVERLAY:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->DARKEN:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->LIGHTEN:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->COLOR_DODGE:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xb

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->COLOR_BURN:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xc

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->HARD_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xd

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SOFT_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xe

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->DIFFERENCE:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xf

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->EXCLUSION:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x10

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->RED:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x11

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->GREEN:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x12

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->BLUE:Lcom/sun/scenario/effect/Blend$Mode;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/scenario/effect/Blend$Mode;->$VALUES:[Lcom/sun/scenario/effect/Blend$Mode;

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
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/scenario/effect/Blend$Mode;
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/scenario/effect/Blend$Mode;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/scenario/effect/Blend$Mode;->$VALUES:[Lcom/sun/scenario/effect/Blend$Mode;

    invoke-virtual {v0}, [Lcom/sun/scenario/effect/Blend$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/scenario/effect/Blend$Mode;

    return-object v0
.end method
