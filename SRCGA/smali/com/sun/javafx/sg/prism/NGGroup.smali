.class public Lcom/sun/javafx/sg/prism/NGGroup;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGGroup.java"


# static fields
.field private static final REGION_INTERSECTS_MASK:I = 0x15555555


# instance fields
.field private blendMode:Lcom/sun/scenario/effect/Blend$Mode;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;"
        }
    .end annotation
.end field

.field private removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;"
        }
    .end annotation
.end field

.field private unmod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 50
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGGroup;->blendMode:Lcom/sun/scenario/effect/Blend$Mode;

    .line 56
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    .line 57
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGGroup;->unmod:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILcom/sun/javafx/sg/prism/NGNode;)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move v4, v1

    const/4 v5, -0x1

    if-lt v4, v5, :cond_0

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 86
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "invalid index"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_1
    move-object v4, v2

    move-object v3, v4

    .line 104
    .local v3, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGNode;->setParent(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 105
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/sg/prism/NGGroup;->childDirty:Z

    .line 106
    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 107
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 111
    :goto_0
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 112
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGGroup;->markTreeDirtyNoIncrement()V

    .line 113
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGGroup;->geometryChanged()V

    .line 114
    return-void

    .line 109
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addToRemoved(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, p1

    .local v1, "n":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->removed:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGGroup;->removed:Ljava/util/List;

    .line 131
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->dirtyChildrenAccumulated:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_1

    .line 132
    .line 141
    :goto_0
    return-void

    .line 135
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->removed:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 136
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGGroup;->dirtyChildrenAccumulated:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGGroup;->dirtyChildrenAccumulated:I

    .line 138
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->dirtyChildrenAccumulated:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 139
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->removed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 141
    :cond_2
    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGGroup;->childDirty:Z

    .line 171
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGGroup;->geometryChanged()V

    .line 172
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGGroup;->markTreeDirtyNoIncrement()V

    .line 173
    return-void
.end method

.method protected clearDirty()V
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirty()V

    .line 146
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGGroup;->removed:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGGroup;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    :cond_0
    return-void
.end method

.method public clearFrom(I)V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move v1, p1

    .local v1, "fromIndex":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 118
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 119
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->geometryChanged()V

    .line 120
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGGroup;->childDirty:Z

    .line 121
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->markTreeDirtyNoIncrement()V

    .line 123
    :cond_0
    return-void
.end method

.method protected computeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;
    .locals 62

    .prologue
    .line 324
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object/from16 v3, p1

    .local v3, "path":Lcom/sun/javafx/sg/prism/NodePath;
    move-object/from16 v4, p2

    .local v4, "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v5, p3

    .local v5, "cullingIndex":I
    move-object/from16 v6, p4

    .local v6, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v7, p5

    .local v7, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move/from16 v37, v5

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    .line 325
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->cullingBits:I

    move/from16 v37, v0

    move/from16 v38, v5

    const/16 v39, 0x2

    mul-int/lit8 v38, v38, 0x2

    shr-int v37, v37, v38

    move/from16 v8, v37

    .line 326
    .local v8, "bits":I
    move/from16 v37, v8

    const/16 v38, 0x3

    and-int/lit8 v37, v37, 0x3

    if-nez v37, :cond_0

    .line 327
    sget-object v37, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v2, v37

    .line 405
    .end local v2    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    .end local v8    # "bits":I
    :goto_0
    return-object v2

    .line 329
    .restart local v2    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    .restart local v8    # "bits":I
    :cond_0
    move/from16 v37, v8

    const/16 v38, 0x2

    and-int/lit8 v37, v37, 0x2

    if-eqz v37, :cond_1

    .line 330
    const/16 v37, -0x1

    move/from16 v5, v37

    .line 335
    .end local v8    # "bits":I
    :cond_1
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGGroup;->isVisible()Z

    move-result v37

    if-nez v37, :cond_2

    .line 336
    sget-object v37, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v2, v37

    goto :goto_0

    .line 339
    :cond_2
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGGroup;->getOpacity()F

    move-result v37

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    cmpl-double v37, v37, v39

    if-nez v37, :cond_4

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGGroup;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v37

    if-eqz v37, :cond_3

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGGroup;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v37

    if-nez v37, :cond_4

    :cond_3
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGGroup;->needsBlending()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 340
    :cond_4
    sget-object v37, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v2, v37

    goto :goto_0

    .line 343
    :cond_5
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGGroup;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v37

    if-eqz v37, :cond_7

    .line 344
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGGroup;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v37

    move-object/from16 v8, v37

    .line 345
    .local v8, "clip":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v37, v8

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/sg/prism/NGNode;->getOpaqueRegion()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v37

    move-object/from16 v9, v37

    .line 346
    .local v9, "clipBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v37, v9

    if-nez v37, :cond_6

    .line 347
    sget-object v37, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v2, v37

    goto :goto_0

    .line 349
    :cond_6
    sget-object v37, Lcom/sun/javafx/sg/prism/NGGroup;->TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v38, v6

    invoke-virtual/range {v37 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v37

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/sg/prism/NGGroup;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v37

    move-object/from16 v38, v8

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v37

    .line 350
    move-object/from16 v37, v9

    move-object/from16 v38, v4

    sget-object v39, Lcom/sun/javafx/sg/prism/NGGroup;->TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v40, v7

    invoke-static/range {v37 .. v40}, Lcom/sun/javafx/sg/prism/NGGroup;->checkBoundsInQuad(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Z

    move-result v37

    if-nez v37, :cond_7

    .line 351
    sget-object v37, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v2, v37

    goto/16 :goto_0

    .line 357
    .end local v8    # "clip":Lcom/sun/javafx/sg/prism/NGNode;
    .end local v9    # "clipBounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_7
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v37

    move-wide/from16 v8, v37

    .line 358
    .local v8, "mxx":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v37

    move-wide/from16 v10, v37

    .line 359
    .local v10, "mxy":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v37

    move-wide/from16 v12, v37

    .line 360
    .local v12, "mxz":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v37

    move-wide/from16 v14, v37

    .line 362
    .local v14, "mxt":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v37

    move-wide/from16 v16, v37

    .line 363
    .local v16, "myx":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v37

    move-wide/from16 v18, v37

    .line 364
    .local v18, "myy":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v37

    move-wide/from16 v20, v37

    .line 365
    .local v20, "myz":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v37

    move-wide/from16 v22, v37

    .line 367
    .local v22, "myt":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v37

    move-wide/from16 v24, v37

    .line 368
    .local v24, "mzx":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v37

    move-wide/from16 v26, v37

    .line 369
    .local v26, "mzy":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v37

    move-wide/from16 v28, v37

    .line 370
    .local v28, "mzz":D
    move-object/from16 v37, v6

    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v37

    move-wide/from16 v30, v37

    .line 371
    .local v30, "mzt":D
    move-object/from16 v37, v6

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/sg/prism/NGGroup;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v37

    move-object/from16 v32, v37

    .line 374
    .local v32, "chTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v37, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v33, v37

    .line 376
    .local v33, "result":Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;
    const/16 v37, 0x1

    move/from16 v34, v37

    .line 378
    .local v34, "followingChildrenClean":Z
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v37

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v35, v37

    .local v35, "resultIdx":I
    :goto_1
    move/from16 v37, v35

    if-ltz v37, :cond_8

    .line 380
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object/from16 v37, v0

    move/from16 v38, v35

    invoke-interface/range {v37 .. v38}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v36, v37

    .line 381
    .local v36, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v37, v36

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move/from16 v40, v5

    move-object/from16 v41, v32

    move-object/from16 v42, v7

    invoke-virtual/range {v37 .. v42}, Lcom/sun/javafx/sg/prism/NGNode;->computeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-result-object v37

    move-object/from16 v33, v37

    .line 384
    move/from16 v37, v34

    move-object/from16 v38, v36

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/sg/prism/NGNode;->isClean()Z

    move-result v38

    and-int v37, v37, v38

    move/from16 v34, v37

    .line 386
    move-object/from16 v37, v33

    sget-object v38, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->HAS_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_9

    .line 390
    move-object/from16 v37, v3

    move-object/from16 v38, v2

    invoke-virtual/range {v37 .. v38}, Lcom/sun/javafx/sg/prism/NodePath;->add(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 391
    .line 404
    .end local v36    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_8
    :goto_2
    move-object/from16 v37, v6

    move-wide/from16 v38, v8

    move-wide/from16 v40, v10

    move-wide/from16 v42, v12

    move-wide/from16 v44, v14

    move-wide/from16 v46, v16

    move-wide/from16 v48, v18

    move-wide/from16 v50, v20

    move-wide/from16 v52, v22

    move-wide/from16 v54, v24

    move-wide/from16 v56, v26

    move-wide/from16 v58, v28

    move-wide/from16 v60, v30

    invoke-virtual/range {v37 .. v61}, Lcom/sun/javafx/geom/transform/BaseTransform;->restoreTransform(DDDDDDDDDDDD)V

    .line 405
    move-object/from16 v37, v33

    move-object/from16 v2, v37

    goto/16 :goto_0

    .line 392
    .restart local v36    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_9
    move-object/from16 v37, v33

    sget-object v38, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->HAS_RENDER_ROOT_AND_IS_CLEAN:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_a

    .line 393
    move-object/from16 v37, v3

    move-object/from16 v38, v2

    invoke-virtual/range {v37 .. v38}, Lcom/sun/javafx/sg/prism/NodePath;->add(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 397
    move/from16 v37, v34

    if-nez v37, :cond_8

    .line 398
    sget-object v37, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->HAS_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object/from16 v33, v37

    goto :goto_2

    .line 378
    :cond_a
    add-int/lit8 v35, v35, -0x1

    goto/16 :goto_1
.end method

.method public drawDirtyOpts(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;Lcom/sun/javafx/geom/Rectangle;[II)V
    .locals 15

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object/from16 v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v3, p3

    .local v3, "clipBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v4, p4

    .local v4, "countBuffer":[I
    move/from16 v5, p5

    .local v5, "dirtyRegionIndex":I
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move v14, v5

    invoke-super/range {v9 .. v14}, Lcom/sun/javafx/sg/prism/NGNode;->drawDirtyOpts(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;Lcom/sun/javafx/geom/Rectangle;[II)V

    .line 459
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    move-object v6, v9

    .line 460
    .local v6, "clone":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v6

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/NGGroup;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    move-object v6, v9

    .line 461
    const/4 v9, 0x0

    move v7, v9

    .local v7, "childIndex":I
    :goto_0
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 462
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v8, v9

    .line 463
    .local v8, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v9, v8

    move-object v10, v6

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/sun/javafx/sg/prism/NGNode;->drawDirtyOpts(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;Lcom/sun/javafx/geom/Rectangle;[II)V

    .line 461
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 465
    .end local v8    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGGroup;->unmod:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    return-object v0
.end method

.method public getRemovedChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGGroup;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    return-object v0
.end method

.method protected hasOverlappingContents()Z
    .locals 4

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->blendMode:Lcom/sun/scenario/effect/Blend$Mode;

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    if-eq v2, v3, :cond_0

    .line 286
    const/4 v2, 0x0

    move v0, v2

    .line 292
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    .local v1, "n":I
    :goto_0
    return v0

    .line 288
    .end local v1    # "n":I
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 289
    .restart local v1    # "n":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 290
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->hasOverlappingContents()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 288
    .end local v1    # "n":I
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 292
    .restart local v1    # "n":I
    :cond_2
    move v2, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected hasVisuals()Z
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected markCullRegions(Lcom/sun/javafx/geom/DirtyRegionContainer;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 60

    .prologue
    .line 416
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object/from16 v4, p1

    .local v4, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move/from16 v5, p2

    .local v5, "cullingRegionsBitsOfParent":I
    move-object/from16 v6, p3

    .local v6, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v7, p4

    .local v7, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v37, v5

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    invoke-super/range {v35 .. v39}, Lcom/sun/javafx/sg/prism/NGNode;->markCullRegions(Lcom/sun/javafx/geom/DirtyRegionContainer;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 421
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->cullingBits:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_0

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->cullingBits:I

    move/from16 v35, v0

    if-eqz v35, :cond_2

    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->cullingBits:I

    move/from16 v35, v0

    const v36, 0x15555555

    and-int v35, v35, v36

    if-eqz v35, :cond_2

    .line 423
    :cond_0
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v35

    move-wide/from16 v8, v35

    .line 424
    .local v8, "mxx":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v35

    move-wide/from16 v10, v35

    .line 425
    .local v10, "mxy":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v35

    move-wide/from16 v12, v35

    .line 426
    .local v12, "mxz":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v35

    move-wide/from16 v14, v35

    .line 428
    .local v14, "mxt":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v35

    move-wide/from16 v16, v35

    .line 429
    .local v16, "myx":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v35

    move-wide/from16 v18, v35

    .line 430
    .local v18, "myy":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v35

    move-wide/from16 v20, v35

    .line 431
    .local v20, "myz":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v35

    move-wide/from16 v22, v35

    .line 433
    .local v22, "myt":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v35

    move-wide/from16 v24, v35

    .line 434
    .local v24, "mzx":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v35

    move-wide/from16 v26, v35

    .line 435
    .local v26, "mzy":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v35

    move-wide/from16 v28, v35

    .line 436
    .local v28, "mzz":D
    move-object/from16 v35, v6

    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v35

    move-wide/from16 v30, v35

    .line 437
    .local v30, "mzt":D
    move-object/from16 v35, v6

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/sg/prism/NGGroup;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v35

    move-object/from16 v32, v35

    .line 440
    .local v32, "chTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    const/16 v35, 0x0

    move/from16 v34, v35

    .local v34, "chldIdx":I
    :goto_0
    move/from16 v35, v34

    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    .line 441
    move-object/from16 v35, v3

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object/from16 v35, v0

    move/from16 v36, v34

    invoke-interface/range {v35 .. v36}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v33, v35

    .line 442
    .local v33, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v35, v33

    move-object/from16 v36, v4

    move-object/from16 v37, v3

    move-object/from16 v0, v37

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->cullingBits:I

    move/from16 v37, v0

    move-object/from16 v38, v32

    move-object/from16 v39, v7

    invoke-virtual/range {v35 .. v39}, Lcom/sun/javafx/sg/prism/NGNode;->markCullRegions(Lcom/sun/javafx/geom/DirtyRegionContainer;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 440
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 449
    .end local v33    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_1
    move-object/from16 v35, v6

    move-wide/from16 v36, v8

    move-wide/from16 v38, v10

    move-wide/from16 v40, v12

    move-wide/from16 v42, v14

    move-wide/from16 v44, v16

    move-wide/from16 v46, v18

    move-wide/from16 v48, v20

    move-wide/from16 v50, v22

    move-wide/from16 v52, v24

    move-wide/from16 v54, v26

    move-wide/from16 v56, v28

    move-wide/from16 v58, v30

    invoke-virtual/range {v35 .. v59}, Lcom/sun/javafx/geom/transform/BaseTransform;->restoreTransform(DDDDDDDDDDDD)V

    .line 451
    .end local v8    # "mxx":D
    .end local v10    # "mxy":D
    .end local v12    # "mxz":D
    .end local v14    # "mxt":D
    .end local v16    # "myx":D
    .end local v18    # "myy":D
    .end local v20    # "myz":D
    .end local v22    # "myt":D
    .end local v24    # "mzx":D
    .end local v26    # "mzy":D
    .end local v28    # "mzz":D
    .end local v30    # "mzt":D
    .end local v32    # "chTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v34    # "chldIdx":I
    :cond_2
    return-void
.end method

.method protected needsBlending()Z
    .locals 3

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->getNodeBlendMode()Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v2

    move-object v1, v2

    .line 310
    .local v1, "mode":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGGroup;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 163
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->geometryChanged()V

    .line 164
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGGroup;->childDirty:Z

    .line 165
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->markTreeDirtyNoIncrement()V

    .line 166
    return-void
.end method

.method public remove(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 156
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->geometryChanged()V

    .line 157
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGGroup;->childDirty:Z

    .line 158
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->markTreeDirtyNoIncrement()V

    .line 159
    return-void
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 25

    .prologue
    .line 204
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object/from16 v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    if-nez v15, :cond_0

    .line 205
    .line 280
    :goto_0
    return-void

    .line 208
    :cond_0
    move-object v15, v2

    invoke-interface {v15}, Lcom/sun/prism/Graphics;->getRenderRoot()Lcom/sun/javafx/sg/prism/NodePath;

    move-result-object v15

    move-object v3, v15

    .line 209
    .local v3, "renderRoot":Lcom/sun/javafx/sg/prism/NodePath;
    const/4 v15, 0x0

    move v4, v15

    .line 210
    .local v4, "startPos":I
    move-object v15, v3

    if-eqz v15, :cond_1

    .line 211
    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/javafx/sg/prism/NodePath;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 212
    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/javafx/sg/prism/NodePath;->next()V

    .line 213
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/sg/prism/NodePath;->getCurrentNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    move v4, v15

    .line 215
    const/4 v15, 0x0

    move v5, v15

    .local v5, "i":I
    :goto_1
    move v15, v5

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 216
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move/from16 v16, v5

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v15}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 223
    .end local v5    # "i":I
    :cond_1
    :goto_2
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGGroup;->blendMode:Lcom/sun/scenario/effect/Blend$Mode;

    sget-object v16, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    .line 224
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 226
    :cond_2
    move v15, v4

    move v5, v15

    .restart local v5    # "i":I
    :goto_3
    move v15, v5

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 229
    move-object v15, v1

    :try_start_0
    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move/from16 v16, v5

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/sg/prism/NGNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v15

    .line 232
    .line 234
    .local v6, "child":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_4
    move-object v15, v6

    if-eqz v15, :cond_3

    .line 235
    move-object v15, v6

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/sg/prism/NGNode;->render(Lcom/sun/prism/Graphics;)V

    .line 226
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 219
    .end local v5    # "i":I
    .end local v6    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_4
    move-object v15, v2

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/sun/prism/Graphics;->setRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;)V

    goto :goto_2

    .line 230
    .restart local v5    # "i":I
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 231
    .local v7, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    move-object v6, v15

    .restart local v6    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    goto :goto_4

    .line 238
    .end local v6    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    goto/16 :goto_0

    .line 241
    .end local v5    # "i":I
    :cond_6
    new-instance v15, Lcom/sun/scenario/effect/Blend;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->blendMode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v19}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    move-object v5, v15

    .line 242
    .local v5, "b":Lcom/sun/scenario/effect/Blend;
    move-object v15, v2

    invoke-static {v15}, Lcom/sun/javafx/sg/prism/NGGroup;->getFilterContext(Lcom/sun/prism/Graphics;)Lcom/sun/scenario/effect/FilterContext;

    move-result-object v15

    move-object v6, v15

    .line 244
    .local v6, "fctx":Lcom/sun/scenario/effect/FilterContext;
    const/4 v15, 0x0

    move-object v7, v15

    .line 245
    .local v7, "bot":Lcom/sun/scenario/effect/ImageData;
    const/4 v15, 0x1

    move v8, v15

    .line 248
    .local v8, "idValid":Z
    :cond_7
    move-object v15, v2

    invoke-interface {v15}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v15

    move-object v9, v15

    .line 249
    .local v9, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v15, v7

    if-eqz v15, :cond_8

    .line 250
    move-object v15, v7

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 251
    const/4 v15, 0x0

    move-object v7, v15

    .line 253
    :cond_8
    move-object v15, v2

    invoke-static {v15}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->getGraphicsClipNoClone(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v15

    move-object v10, v15

    .line 254
    .local v10, "rclip":Lcom/sun/javafx/geom/Rectangle;
    move v15, v4

    move v11, v15

    .local v11, "i":I
    :goto_5
    move v15, v11

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 255
    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v12, v15

    .line 256
    .local v12, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v15, v6

    move-object/from16 v16, v12

    const/16 v17, 0x0

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 257
    invoke-static/range {v15 .. v19}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->getImageDataForNode(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/sg/prism/NGNode;ZLcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v15

    move-object v13, v15

    .line 258
    .local v13, "top":Lcom/sun/scenario/effect/ImageData;
    move-object v15, v7

    if-nez v15, :cond_9

    .line 259
    move-object v15, v13

    move-object v7, v15

    .line 254
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 261
    :cond_9
    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v20, v0

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x0

    move-object/from16 v23, v7

    aput-object v23, v21, v22

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const/16 v22, 0x1

    move-object/from16 v23, v13

    aput-object v23, v21, v22

    .line 262
    invoke-virtual/range {v15 .. v20}, Lcom/sun/scenario/effect/Blend;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v15

    move-object v14, v15

    .line 263
    .local v14, "newbot":Lcom/sun/scenario/effect/ImageData;
    move-object v15, v7

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 264
    move-object v15, v13

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 265
    move-object v15, v14

    move-object v7, v15

    goto :goto_6

    .line 268
    .end local v12    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    .end local v13    # "top":Lcom/sun/scenario/effect/ImageData;
    .end local v14    # "newbot":Lcom/sun/scenario/effect/ImageData;
    :cond_a
    move-object v15, v7

    if-eqz v15, :cond_b

    move-object v15, v7

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v15

    move/from16 v24, v15

    move/from16 v15, v24

    move/from16 v16, v24

    move/from16 v8, v16

    if-eqz v15, :cond_b

    .line 269
    move-object v15, v7

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v15

    move-object v11, v15

    .line 270
    .local v11, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v15, v7

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v15

    check-cast v15, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v12, v15

    .line 271
    .local v12, "botimg":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v15, v2

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 272
    move-object v15, v2

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v16

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-interface/range {v15 .. v20}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 275
    .end local v11    # "r":Lcom/sun/javafx/geom/Rectangle;
    .end local v12    # "botimg":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    :cond_b
    move-object v15, v7

    if-eqz v15, :cond_7

    move v15, v8

    if-eqz v15, :cond_7

    .line 277
    move-object v15, v7

    if-eqz v15, :cond_c

    .line 278
    move-object v15, v7

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 280
    :cond_c
    goto/16 :goto_0
.end method

.method public renderForcedContent(Lcom/sun/prism/Graphics;)V
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, p1

    .local v1, "gOptional":Lcom/sun/prism/Graphics;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    if-nez v3, :cond_0

    .line 195
    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 198
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGGroup;->children:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGNode;->renderForcedContent(Lcom/sun/prism/Graphics;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_1
    goto :goto_0
.end method

.method public setBlendMode(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v1, p1

    .local v1, "blendMode":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Mode must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGGroup;->blendMode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 187
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/scenario/effect/Blend$Mode;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGGroup;->blendMode:Lcom/sun/scenario/effect/Blend$Mode;

    .line 188
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGGroup;->visualsChanged()V

    .line 190
    :cond_1
    return-void
.end method
