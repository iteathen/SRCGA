.class Lcom/sun/scenario/effect/InvertMask$1;
.super Ljava/lang/Object;
.source "InvertMask.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/state/RenderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/scenario/effect/InvertMask;->getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/scenario/effect/InvertMask;


# direct methods
.method constructor <init>(Lcom/sun/scenario/effect/InvertMask;)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/scenario/effect/InvertMask;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/InvertMask$1;->this$0:Lcom/sun/scenario/effect/InvertMask;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectTransformSpace()Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask$1;
    sget-object v1, Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;->UserSpace:Lcom/sun/scenario/effect/impl/state/RenderState$EffectCoordinateSpace;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask$1;
    return-object v0
.end method

.method public getInputClip(ILcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 7

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask$1;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "filterClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 257
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/InvertMask$1;->this$0:Lcom/sun/scenario/effect/InvertMask;

    invoke-static {v3}, Lcom/sun/scenario/effect/InvertMask;->access$000(Lcom/sun/scenario/effect/InvertMask;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    new-instance v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v2, v3

    .line 259
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/InvertMask$1;->this$0:Lcom/sun/scenario/effect/InvertMask;

    invoke-static {v4}, Lcom/sun/scenario/effect/InvertMask;->access$000(Lcom/sun/scenario/effect/InvertMask;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/InvertMask$1;->this$0:Lcom/sun/scenario/effect/InvertMask;

    invoke-static {v5}, Lcom/sun/scenario/effect/InvertMask;->access$000(Lcom/sun/scenario/effect/InvertMask;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 262
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask$1;
    return-object v0
.end method

.method public getInputTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask$1;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask$1;
    return-object v0
.end method

.method public getResultTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/InvertMask$1;
    move-object v1, p1

    .local v1, "filterTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/InvertMask$1;
    return-object v0
.end method
