.class public final enum Lcom/sun/scenario/effect/Effect$AccelType;
.super Ljava/lang/Enum;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/scenario/effect/Effect$AccelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/scenario/effect/Effect$AccelType;

.field public static final enum DIRECT3D:Lcom/sun/scenario/effect/Effect$AccelType;

.field public static final enum FIXED:Lcom/sun/scenario/effect/Effect$AccelType;

.field public static final enum INTRINSIC:Lcom/sun/scenario/effect/Effect$AccelType;

.field public static final enum NONE:Lcom/sun/scenario/effect/Effect$AccelType;

.field public static final enum OPENGL:Lcom/sun/scenario/effect/Effect$AccelType;

.field public static final enum SIMD:Lcom/sun/scenario/effect/Effect$AccelType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 517
    new-instance v0, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "INTRINSIC"

    const/4 v3, 0x0

    const-string v4, "Intrinsic"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/Effect$AccelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->INTRINSIC:Lcom/sun/scenario/effect/Effect$AccelType;

    .line 522
    new-instance v0, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "NONE"

    const/4 v3, 0x1

    const-string v4, "CPU/Java"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/Effect$AccelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->NONE:Lcom/sun/scenario/effect/Effect$AccelType;

    .line 528
    new-instance v0, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "SIMD"

    const/4 v3, 0x2

    const-string v4, "CPU/SIMD"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/Effect$AccelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->SIMD:Lcom/sun/scenario/effect/Effect$AccelType;

    .line 534
    new-instance v0, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "FIXED"

    const/4 v3, 0x3

    const-string v4, "CPU/Fixed"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/Effect$AccelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->FIXED:Lcom/sun/scenario/effect/Effect$AccelType;

    .line 539
    new-instance v0, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "OPENGL"

    const/4 v3, 0x4

    const-string v4, "OpenGL"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/Effect$AccelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->OPENGL:Lcom/sun/scenario/effect/Effect$AccelType;

    .line 544
    new-instance v0, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "DIRECT3D"

    const/4 v3, 0x5

    const-string v4, "Direct3D"

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/Effect$AccelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->DIRECT3D:Lcom/sun/scenario/effect/Effect$AccelType;

    .line 512
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/scenario/effect/Effect$AccelType;->INTRINSIC:Lcom/sun/scenario/effect/Effect$AccelType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/scenario/effect/Effect$AccelType;->NONE:Lcom/sun/scenario/effect/Effect$AccelType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/scenario/effect/Effect$AccelType;->SIMD:Lcom/sun/scenario/effect/Effect$AccelType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/scenario/effect/Effect$AccelType;->FIXED:Lcom/sun/scenario/effect/Effect$AccelType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/scenario/effect/Effect$AccelType;->OPENGL:Lcom/sun/scenario/effect/Effect$AccelType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/scenario/effect/Effect$AccelType;->DIRECT3D:Lcom/sun/scenario/effect/Effect$AccelType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->$VALUES:[Lcom/sun/scenario/effect/Effect$AccelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect$AccelType;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "text":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 549
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/scenario/effect/Effect$AccelType;->text:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 1

    .prologue
    .line 512
    sget-object v0, Lcom/sun/scenario/effect/Effect$AccelType;->$VALUES:[Lcom/sun/scenario/effect/Effect$AccelType;

    invoke-virtual {v0}, [Lcom/sun/scenario/effect/Effect$AccelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/scenario/effect/Effect$AccelType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Effect$AccelType;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Effect$AccelType;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Effect$AccelType;
    return-object v0
.end method
