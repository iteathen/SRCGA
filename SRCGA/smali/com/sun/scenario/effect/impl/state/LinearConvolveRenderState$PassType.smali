.class public final enum Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
.super Ljava/lang/Enum;
.source "LinearConvolveRenderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PassType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

.field public static final enum GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

.field public static final enum HORIZONTAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

.field public static final enum VERTICAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 99
    new-instance v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HORIZONTAL_CENTERED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->HORIZONTAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    .line 114
    new-instance v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "VERTICAL_CENTERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->VERTICAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    .line 122
    new-instance v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GENERAL_VECTOR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->HORIZONTAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->VERTICAL_CENTERED:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->$VALUES:[Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

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
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->$VALUES:[Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    invoke-virtual {v0}, [Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    return-object v0
.end method
