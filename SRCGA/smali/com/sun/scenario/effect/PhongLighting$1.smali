.class Lcom/sun/scenario/effect/PhongLighting$1;
.super Ljava/lang/Object;
.source "PhongLighting.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/state/RenderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/scenario/effect/PhongLighting;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/scenario/effect/PhongLighting;


# direct methods
.method constructor <init>(Lcom/sun/scenario/effect/PhongLighting;)V
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/scenario/effect/PhongLighting;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/PhongLighting$1;->this$0:Lcom/sun/scenario/effect/PhongLighting;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectTransformSpace()Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting$1;
    sget-object v1, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->RenderSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting$1;
    return-object v0
.end method

.method public getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting$1;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "filterClip":Lcom/sun/javafx/geom/Rectangle;
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    if-eqz v4, :cond_0

    .line 329
    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v3, v4

    .line 330
    .local v3, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 331
    move-object v4, v3

    move-object v0, v4

    .line 333
    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting$1;
    .end local v3    # "r":Lcom/sun/javafx/geom/Rectangle;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/PhongLighting$1;
    :cond_0
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method public getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting$1;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting$1;
    return-object v0
.end method

.method public getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/PhongLighting$1;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/PhongLighting$1;
    return-object v0
.end method
