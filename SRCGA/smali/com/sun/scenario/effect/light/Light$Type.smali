.class public final enum Lcom/sun/scenario/effect/light/Light$Type;
.super Ljava/lang/Enum;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/light/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/scenario/effect/light/Light$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/scenario/effect/light/Light$Type;

.field public static final enum DISTANT:Lcom/sun/scenario/effect/light/Light$Type;

.field public static final enum POINT:Lcom/sun/scenario/effect/light/Light$Type;

.field public static final enum SPOT:Lcom/sun/scenario/effect/light/Light$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/sun/scenario/effect/light/Light$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DISTANT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/light/Light$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/light/Light$Type;->DISTANT:Lcom/sun/scenario/effect/light/Light$Type;

    .line 42
    new-instance v0, Lcom/sun/scenario/effect/light/Light$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "POINT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/light/Light$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/light/Light$Type;->POINT:Lcom/sun/scenario/effect/light/Light$Type;

    .line 44
    new-instance v0, Lcom/sun/scenario/effect/light/Light$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SPOT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/light/Light$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/light/Light$Type;->SPOT:Lcom/sun/scenario/effect/light/Light$Type;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/scenario/effect/light/Light$Type;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/scenario/effect/light/Light$Type;->DISTANT:Lcom/sun/scenario/effect/light/Light$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/scenario/effect/light/Light$Type;->POINT:Lcom/sun/scenario/effect/light/Light$Type;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/scenario/effect/light/Light$Type;->SPOT:Lcom/sun/scenario/effect/light/Light$Type;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/scenario/effect/light/Light$Type;->$VALUES:[Lcom/sun/scenario/effect/light/Light$Type;

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
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/light/Light$Type;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/scenario/effect/light/Light$Type;
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/scenario/effect/light/Light$Type;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/light/Light$Type;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/scenario/effect/light/Light$Type;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sun/scenario/effect/light/Light$Type;->$VALUES:[Lcom/sun/scenario/effect/light/Light$Type;

    invoke-virtual {v0}, [Lcom/sun/scenario/effect/light/Light$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/scenario/effect/light/Light$Type;

    return-object v0
.end method
