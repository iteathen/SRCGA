.class final Lcom/sun/scenario/effect/impl/state/RenderState$1;
.super Ljava/lang/Object;
.source "RenderState.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/state/RenderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/effect/impl/state/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectTransformSpace()Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    sget-object v1, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->UserSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    return-object v0
.end method

.method public getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "filterClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    return-object v0
.end method

.method public getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    return-object v0
.end method

.method public getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/RenderState$1;
    return-object v0
.end method
