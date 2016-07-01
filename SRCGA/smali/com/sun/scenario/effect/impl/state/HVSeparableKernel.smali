.class public abstract Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;
.super Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
.source "HVSeparableKernel.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResultBounds(Lcom/sun/javafx/geom/Rectangle;I)Lcom/sun/javafx/geom/Rectangle;
    .locals 10

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;
    move-object v1, p1

    .local v1, "srcdimension":Lcom/sun/javafx/geom/Rectangle;
    move v2, p2

    .local v2, "pass":I
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;->getKernelSize(I)I

    move-result v5

    move v3, v5

    .line 39
    .local v3, "ksize":I
    new-instance v5, Lcom/sun/javafx/geom/Rectangle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v4, v5

    .line 40
    .local v4, "ret":Lcom/sun/javafx/geom/Rectangle;
    move v5, v2

    if-nez v5, :cond_0

    .line 41
    move-object v5, v4

    move v6, v3

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 45
    :goto_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;
    return-object v0

    .line 43
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/HVSeparableKernel;
    :cond_0
    move-object v5, v4

    const/4 v6, 0x0

    move v7, v3

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    goto :goto_0
.end method
