.class public Ljavafx/scene/layout/BorderImage;
.super Ljava/lang/Object;
.source "BorderImage.java"


# instance fields
.field final filled:Z

.field private final hash:I

.field final image:Ljavafx/scene/image/Image;

.field final innerEdge:Ljavafx/geometry/Insets;

.field final insets:Ljavafx/geometry/Insets;

.field final outerEdge:Ljavafx/geometry/Insets;

.field final repeatX:Ljavafx/scene/layout/BorderRepeat;

.field final repeatY:Ljavafx/scene/layout/BorderRepeat;

.field final slices:Ljavafx/scene/layout/BorderWidths;

.field final widths:Ljavafx/scene/layout/BorderWidths;


# direct methods
.method public constructor <init>(Ljavafx/scene/image/Image;Ljavafx/scene/layout/BorderWidths;Ljavafx/geometry/Insets;Ljavafx/scene/layout/BorderWidths;ZLjavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;)V
    .locals 25
    .param p1    # Ljavafx/scene/image/Image;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "image"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/layout/BorderWidths;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "widths"
        .end annotation
    .end param
    .param p3    # Ljavafx/geometry/Insets;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "insets"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/layout/BorderWidths;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "slices"
        .end annotation
    .end param
    .param p5    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "filled"
        .end annotation
    .end param
    .param p6    # Ljavafx/scene/layout/BorderRepeat;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "repeatX"
        .end annotation
    .end param
    .param p7    # Ljavafx/scene/layout/BorderRepeat;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "repeatY"
        .end annotation
    .end param

    .prologue
    .line 144
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/BorderImage;
    move-object/from16 v3, p1

    .local v3, "image":Ljavafx/scene/image/Image;
    move-object/from16 v4, p2

    .local v4, "widths":Ljavafx/scene/layout/BorderWidths;
    move-object/from16 v5, p3

    .local v5, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v6, p4

    .local v6, "slices":Ljavafx/scene/layout/BorderWidths;
    move/from16 v7, p5

    .local v7, "filled":Z
    move-object/from16 v8, p6

    .local v8, "repeatX":Ljavafx/scene/layout/BorderRepeat;
    move-object/from16 v9, p7

    .local v9, "repeatY":Ljavafx/scene/layout/BorderRepeat;
    move-object v11, v2

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 145
    move-object v11, v3

    if-nez v11, :cond_0

    new-instance v11, Ljava/lang/NullPointerException;

    move-object/from16 v24, v11

    move-object/from16 v11, v24

    move-object/from16 v12, v24

    const-string v13, "Image cannot be null"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 146
    :cond_0
    move-object v11, v2

    move-object v12, v3

    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->image:Ljavafx/scene/image/Image;

    .line 147
    move-object v11, v2

    move-object v12, v4

    if-nez v12, :cond_1

    sget-object v12, Ljavafx/scene/layout/BorderWidths;->DEFAULT:Ljavafx/scene/layout/BorderWidths;

    :goto_0
    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    .line 148
    move-object v11, v2

    move-object v12, v5

    if-nez v12, :cond_2

    sget-object v12, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    :goto_1
    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    .line 149
    move-object v11, v2

    move-object v12, v6

    if-nez v12, :cond_3

    sget-object v12, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->DEFAULT:Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    iget-object v12, v12, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->widths:Ljavafx/scene/layout/BorderWidths;

    :goto_2
    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->slices:Ljavafx/scene/layout/BorderWidths;

    .line 150
    move-object v11, v2

    move v12, v7

    iput-boolean v12, v11, Ljavafx/scene/layout/BorderImage;->filled:Z

    .line 151
    move-object v11, v2

    move-object v12, v8

    if-nez v12, :cond_4

    sget-object v12, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    :goto_3
    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->repeatX:Ljavafx/scene/layout/BorderRepeat;

    .line 152
    move-object v11, v2

    move-object v12, v9

    if-nez v12, :cond_5

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/layout/BorderImage;->repeatX:Ljavafx/scene/layout/BorderRepeat;

    :goto_4
    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->repeatY:Ljavafx/scene/layout/BorderRepeat;

    .line 156
    move-object v11, v2

    new-instance v12, Ljavafx/geometry/Insets;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const-wide/16 v14, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v16, v0

    .line 157
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    const-wide/16 v16, 0x0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v18, v0

    .line 158
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v20, v0

    .line 159
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v20

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v22, v0

    .line 160
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->outerEdge:Ljavafx/geometry/Insets;

    .line 161
    move-object v11, v2

    new-instance v12, Ljavafx/geometry/Insets;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    .line 162
    invoke-virtual {v14}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v16, v0

    .line 163
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v18

    add-double v16, v16, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v18, v0

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v20

    add-double v18, v18, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object/from16 v20, v0

    .line 165
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    iput-object v12, v11, Ljavafx/scene/layout/BorderImage;->innerEdge:Ljavafx/geometry/Insets;

    .line 170
    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/layout/BorderImage;->image:Ljavafx/scene/image/Image;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    move v10, v11

    .line 171
    .local v10, "result":I
    const/16 v11, 0x1f

    move v12, v10

    mul-int/2addr v11, v12

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->hashCode()I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 172
    const/16 v11, 0x1f

    move v12, v10

    mul-int/2addr v11, v12

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/layout/BorderImage;->slices:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->hashCode()I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 173
    const/16 v11, 0x1f

    move v12, v10

    mul-int/2addr v11, v12

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/layout/BorderImage;->repeatX:Ljavafx/scene/layout/BorderRepeat;

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderRepeat;->hashCode()I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 174
    const/16 v11, 0x1f

    move v12, v10

    mul-int/2addr v11, v12

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/layout/BorderImage;->repeatY:Ljavafx/scene/layout/BorderRepeat;

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderRepeat;->hashCode()I

    move-result v12

    add-int/2addr v11, v12

    move v10, v11

    .line 175
    const/16 v11, 0x1f

    move v12, v10

    mul-int/2addr v11, v12

    move-object v12, v2

    iget-boolean v12, v12, Ljavafx/scene/layout/BorderImage;->filled:Z

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_5
    add-int/2addr v11, v12

    move v10, v11

    .line 176
    move-object v11, v2

    move v12, v10

    iput v12, v11, Ljavafx/scene/layout/BorderImage;->hash:I

    .line 177
    return-void

    .line 147
    .end local v10    # "result":I
    :cond_1
    move-object v12, v4

    goto/16 :goto_0

    .line 148
    :cond_2
    move-object v12, v5

    goto/16 :goto_1

    .line 149
    :cond_3
    move-object v12, v6

    goto/16 :goto_2

    .line 151
    :cond_4
    move-object v12, v8

    goto/16 :goto_3

    .line 152
    :cond_5
    move-object v12, v9

    goto/16 :goto_4

    .line 175
    .restart local v10    # "result":I
    :cond_6
    const/4 v12, 0x0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 194
    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    :goto_0
    return v0

    .line 184
    .restart local v0    # "this":Ljavafx/scene/layout/BorderImage;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 185
    :cond_2
    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/BorderImage;

    move-object v2, v3

    .line 186
    .local v2, "that":Ljavafx/scene/layout/BorderImage;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/BorderImage;->hash:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/layout/BorderImage;->hash:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 187
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/layout/BorderImage;->filled:Z

    move-object v4, v2

    iget-boolean v4, v4, Ljavafx/scene/layout/BorderImage;->filled:Z

    if-eq v3, v4, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 188
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderImage;->image:Ljavafx/scene/image/Image;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderImage;->image:Ljavafx/scene/image/Image;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 189
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderImage;->repeatX:Ljavafx/scene/layout/BorderRepeat;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderImage;->repeatX:Ljavafx/scene/layout/BorderRepeat;

    if-eq v3, v4, :cond_6

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 190
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderImage;->repeatY:Ljavafx/scene/layout/BorderRepeat;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderImage;->repeatY:Ljavafx/scene/layout/BorderRepeat;

    if-eq v3, v4, :cond_7

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 191
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderImage;->slices:Ljavafx/scene/layout/BorderWidths;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderImage;->slices:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderWidths;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 192
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderWidths;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 194
    :cond_9
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final getImage()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderImage;->image:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return-object v0
.end method

.method public final getInsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderImage;->insets:Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return-object v0
.end method

.method public final getRepeatX()Ljavafx/scene/layout/BorderRepeat;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderImage;->repeatX:Ljavafx/scene/layout/BorderRepeat;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return-object v0
.end method

.method public final getRepeatY()Ljavafx/scene/layout/BorderRepeat;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderImage;->repeatY:Ljavafx/scene/layout/BorderRepeat;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return-object v0
.end method

.method public final getSlices()Ljavafx/scene/layout/BorderWidths;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderImage;->slices:Ljavafx/scene/layout/BorderWidths;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return-object v0
.end method

.method public final getWidths()Ljavafx/scene/layout/BorderWidths;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderImage;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BorderImage;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return v0
.end method

.method public final isFilled()Z
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderImage;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/BorderImage;->filled:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderImage;
    return v0
.end method
