.class Lcom/sun/javafx/sg/prism/NGCanvas$MyBlend;
.super Lcom/sun/scenario/effect/Blend;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyBlend"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 8

    .prologue
    .line 1625
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$MyBlend;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v2, p2

    .local v2, "bottomInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, p3

    .local v3, "topInput":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 1626
    return-void
.end method


# virtual methods
.method public varargs getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;
    .locals 9

    .prologue
    .line 1636
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$MyBlend;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, p3

    .local v3, "inputDatas":[Lcom/sun/scenario/effect/ImageData;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Lcom/sun/scenario/effect/Blend;->getResultBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v5

    move-object v4, v5

    .line 1637
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1638
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$MyBlend;
    return-object v0
.end method
