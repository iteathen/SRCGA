.class abstract Lcom/sun/scenario/effect/CoreEffect;
.super Lcom/sun/scenario/effect/FilterEffect;
.source "CoreEffect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">",
        "Lcom/sun/scenario/effect/FilterEffect",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private peerCount:I

.field private peerKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/FilterEffect;-><init>()V

    .line 41
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/scenario/effect/CoreEffect;->peerCount:I

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/FilterEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 41
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/scenario/effect/CoreEffect;->peerCount:I

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "input1":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "input2":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/effect/FilterEffect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 41
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/scenario/effect/CoreEffect;->peerCount:I

    .line 53
    return-void
.end method

.method private getPeer(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move v2, p2

    .local v2, "approxW":I
    move v3, p3

    .local v3, "approxH":I
    move-object v4, v1

    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Effect;II)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v4

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/CoreEffect;->peerKey:Ljava/lang/String;

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/CoreEffect;->peerCount:I

    .line 66
    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/scenario/effect/impl/Renderer;->getPeerInstance(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    return-object v0
.end method


# virtual methods
.method public varargs filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/scenario/effect/FilterContext;",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "Lcom/sun/javafx/geom/Rectangle;",
            "TT;[",
            "Lcom/sun/scenario/effect/ImageData;",
            ")",
            "Lcom/sun/scenario/effect/ImageData;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v4, p4

    .local v4, "rstate":Lcom/sun/scenario/effect/impl/state/RenderState;, "TT;"
    move-object/from16 v5, p5

    .local v5, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/sun/scenario/effect/CoreEffect;->getPeer(Lcom/sun/scenario/effect/FilterContext;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v6

    move-object v7, v0

    move-object v8, v4

    move-object v9, v2

    move-object v10, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/scenario/effect/impl/EffectPeer;->filter(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/impl/state/RenderState;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    return-object v0
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x400

    const/16 v6, 0x400

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/scenario/effect/CoreEffect;->getPeer(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v3

    move-object v2, v3

    .line 115
    .local v2, "peer":Lcom/sun/scenario/effect/impl/EffectPeer;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/scenario/effect/impl/EffectPeer;->getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    return-object v0
.end method

.method final getPeer(Lcom/sun/scenario/effect/FilterContext;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 11

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "inputs":[Lcom/sun/scenario/effect/ImageData;
    move-object v6, v2

    array-length v6, v6

    if-lez v6, :cond_0

    .line 84
    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    move-object v5, v6

    .line 85
    .local v5, "approxBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v6, v5

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v3, v6

    .line 86
    .local v3, "approxW":I
    move-object v6, v5

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v4, v6

    .line 92
    .end local v5    # "approxBounds":Lcom/sun/javafx/geom/Rectangle;
    .local v4, "approxH":I
    :goto_0
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/scenario/effect/CoreEffect;->getPeer(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    return-object v0

    .line 90
    .end local v3    # "approxW":I
    .end local v4    # "approxH":I
    .restart local v0    # "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    :cond_0
    const/16 v6, 0x1f4

    move v10, v6

    move v6, v10

    move v7, v10

    move v4, v7

    .restart local v4    # "approxH":I
    move v3, v6

    .restart local v3    # "approxW":I
    goto :goto_0
.end method

.method final updatePeerKey(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/CoreEffect;->updatePeerKey(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method final updatePeerKey(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/CoreEffect;, "Lcom/sun/scenario/effect/CoreEffect<TT;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move v2, p2

    .local v2, "unrollCount":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/effect/CoreEffect;->peerKey:Ljava/lang/String;

    .line 61
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/scenario/effect/CoreEffect;->peerCount:I

    .line 62
    return-void
.end method
