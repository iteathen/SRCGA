.class public Lcom/sun/scenario/effect/Blend;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "Blend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/Blend$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/CoreEffect",
        "<",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">;"
    }
.end annotation


# instance fields
.field private mode:Lcom/sun/scenario/effect/Blend$Mode;

.field private opacity:F


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V
    .locals 7

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v2, p2

    .local v2, "bottomInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, p3

    .local v3, "topInput":Lcom/sun/scenario/effect/Effect;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lcom/sun/scenario/effect/CoreEffect;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    .line 424
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/Blend;->setMode(Lcom/sun/scenario/effect/Blend$Mode;)V

    .line 425
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/sun/scenario/effect/Blend;->setOpacity(F)V

    .line 426
    return-void
.end method


# virtual methods
.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/scenario/effect/CoreEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method

.method public final getBottomInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method

.method public getMode()Lcom/sun/scenario/effect/Blend$Mode;
    .locals 2

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Blend;->mode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method

.method public getOpacity()F
    .locals 2

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/Blend;->opacity:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    sget-object v6, Lcom/sun/scenario/effect/impl/state/RenderState;->RenderSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method

.method public final getTopInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 5

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Blend;->getBottomInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v1, v3

    .line 597
    .local v1, "bottomInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Blend;->getTopInput()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 598
    .local v2, "topInput":Lcom/sun/scenario/effect/Effect;
    sget-object v3, Lcom/sun/scenario/effect/Blend$1;->$SwitchMap$com$sun$scenario$effect$Blend$Mode:[I

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/scenario/effect/Blend;->getMode()Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/effect/Blend$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 622
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    :goto_0
    return v0

    .line 601
    .restart local v0    # "this":Lcom/sun/scenario/effect/Blend;
    :pswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 603
    :pswitch_1
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 620
    :pswitch_2
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setBottomInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    .local v1, "bottomInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Blend;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 446
    return-void
.end method

.method public setMode(Lcom/sun/scenario/effect/Blend$Mode;)V
    .locals 7

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 491
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Mode must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 493
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Blend;->mode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v2, v3

    .line 494
    .local v2, "old":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/effect/Blend;->mode:Lcom/sun/scenario/effect/Blend$Mode;

    .line 495
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blend_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/scenario/effect/Blend$Mode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Blend;->updatePeerKey(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public setOpacity(F)V
    .locals 7

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move v1, p1

    .local v1, "opacity":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 524
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Opacity must be in the range [0,1]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 526
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/scenario/effect/Blend;->opacity:F

    move v2, v3

    .line 527
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/Blend;->opacity:F

    .line 528
    return-void
.end method

.method public setTopInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    .local v1, "topInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Blend;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 466
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Blend;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Blend;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Blend;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Blend;
    return-object v0
.end method
