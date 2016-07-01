.class public final enum Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
.super Ljava/lang/Enum;
.source "AbstractShadow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/AbstractShadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShadowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

.field public static final enum GAUSSIAN:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

.field public static final enum ONE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

.field public static final enum THREE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

.field public static final enum TWO_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ONE_PASS_BOX"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->ONE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    .line 49
    new-instance v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TWO_PASS_BOX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->TWO_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    .line 50
    new-instance v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "THREE_PASS_BOX"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->THREE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    .line 51
    new-instance v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GAUSSIAN"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->GAUSSIAN:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->ONE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->TWO_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->THREE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->GAUSSIAN:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->$VALUES:[Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

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
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->$VALUES:[Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    invoke-virtual {v0}, [Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    return-object v0
.end method
