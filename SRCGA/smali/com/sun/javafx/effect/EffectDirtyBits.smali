.class public final enum Lcom/sun/javafx/effect/EffectDirtyBits;
.super Ljava/lang/Enum;
.source "EffectDirtyBits.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/effect/EffectDirtyBits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/effect/EffectDirtyBits;

.field public static final enum BOUNDS_CHANGED:Lcom/sun/javafx/effect/EffectDirtyBits;

.field public static final enum EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;


# instance fields
.field private mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcom/sun/javafx/effect/EffectDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EFFECT_DIRTY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/effect/EffectDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    .line 37
    new-instance v0, Lcom/sun/javafx/effect/EffectDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOUNDS_CHANGED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/effect/EffectDirtyBits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/effect/EffectDirtyBits;->BOUNDS_CHANGED:Lcom/sun/javafx/effect/EffectDirtyBits;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/javafx/effect/EffectDirtyBits;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/effect/EffectDirtyBits;->BOUNDS_CHANGED:Lcom/sun/javafx/effect/EffectDirtyBits;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/effect/EffectDirtyBits;->$VALUES:[Lcom/sun/javafx/effect/EffectDirtyBits;

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
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/effect/EffectDirtyBits;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/effect/EffectDirtyBits;->ordinal()I

    move-result v5

    shl-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/effect/EffectDirtyBits;->mask:I

    .line 43
    return-void
.end method

.method public static isSet(ILcom/sun/javafx/effect/EffectDirtyBits;)Z
    .locals 4

    .prologue
    .line 50
    move v0, p0

    .local v0, "value":I
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/effect/EffectDirtyBits;
    move v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/effect/EffectDirtyBits;->getMask()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "value":I
    return v0

    .restart local v0    # "value":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/effect/EffectDirtyBits;
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/effect/EffectDirtyBits;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/effect/EffectDirtyBits;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/effect/EffectDirtyBits;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sun/javafx/effect/EffectDirtyBits;->$VALUES:[Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v0}, [Lcom/sun/javafx/effect/EffectDirtyBits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/effect/EffectDirtyBits;

    return-object v0
.end method


# virtual methods
.method public final getMask()I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/effect/EffectDirtyBits;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/effect/EffectDirtyBits;->mask:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/effect/EffectDirtyBits;
    return v0
.end method
