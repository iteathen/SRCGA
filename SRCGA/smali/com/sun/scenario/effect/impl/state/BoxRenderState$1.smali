.class synthetic Lcom/sun/scenario/effect/impl/state/BoxRenderState$1;
.super Ljava/lang/Object;
.source "BoxRenderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/impl/state/BoxRenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$scenario$effect$Effect$AccelType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 300
    invoke-static {}, Lcom/sun/scenario/effect/Effect$AccelType;->values()[Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState$1;->$SwitchMap$com$sun$scenario$effect$Effect$AccelType:[I

    :try_start_0
    sget-object v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState$1;->$SwitchMap$com$sun$scenario$effect$Effect$AccelType:[I

    sget-object v2, Lcom/sun/scenario/effect/Effect$AccelType;->NONE:Lcom/sun/scenario/effect/Effect$AccelType;

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Effect$AccelType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/scenario/effect/impl/state/BoxRenderState$1;->$SwitchMap$com$sun$scenario$effect$Effect$AccelType:[I

    sget-object v2, Lcom/sun/scenario/effect/Effect$AccelType;->SIMD:Lcom/sun/scenario/effect/Effect$AccelType;

    invoke-virtual {v2}, Lcom/sun/scenario/effect/Effect$AccelType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method
