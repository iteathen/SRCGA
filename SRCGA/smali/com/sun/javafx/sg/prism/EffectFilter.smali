.class public Lcom/sun/javafx/sg/prism/EffectFilter;
.super Ljava/lang/Object;
.source "EffectFilter.java"


# instance fields
.field private effect:Lcom/sun/scenario/effect/Effect;

.field private nodeInput:Lcom/sun/javafx/sg/prism/NodeEffectInput;


# direct methods
.method constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    move-object v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/EffectFilter;->effect:Lcom/sun/scenario/effect/Effect;

    .line 42
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/sg/prism/NodeEffectInput;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/sg/prism/NodeEffectInput;-><init>(Lcom/sun/javafx/sg/prism/NGNode;)V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/EffectFilter;->nodeInput:Lcom/sun/javafx/sg/prism/NodeEffectInput;

    .line 43
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/EffectFilter;->effect:Lcom/sun/scenario/effect/Effect;

    .line 50
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/EffectFilter;->nodeInput:Lcom/sun/javafx/sg/prism/NodeEffectInput;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->setNode(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 51
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/EffectFilter;->nodeInput:Lcom/sun/javafx/sg/prism/NodeEffectInput;

    .line 52
    return-void
.end method

.method getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/EffectFilter;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/EffectFilter;->nodeInput:Lcom/sun/javafx/sg/prism/NodeEffectInput;

    invoke-virtual {v4, v5, v6}, Lcom/sun/scenario/effect/Effect;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v3, v4

    .line 56
    .local v3, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    return-object v0
.end method

.method getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/EffectFilter;->effect:Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    return-object v0
.end method

.method getNodeInput()Lcom/sun/javafx/sg/prism/NodeEffectInput;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/EffectFilter;->nodeInput:Lcom/sun/javafx/sg/prism/NodeEffectInput;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    return-object v0
.end method

.method render(Lcom/sun/prism/Graphics;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/EffectFilter;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/EffectFilter;->getNodeInput()Lcom/sun/javafx/sg/prism/NodeEffectInput;

    move-result-object v3

    move-object v2, v3

    .line 61
    .local v2, "nodeInput":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/EffectFilter;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->render(Lcom/sun/scenario/effect/Effect;Lcom/sun/prism/Graphics;FFLcom/sun/scenario/effect/Effect;)V

    .line 62
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flush()V

    .line 63
    return-void
.end method
