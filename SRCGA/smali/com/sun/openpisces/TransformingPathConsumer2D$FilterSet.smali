.class public final Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;
.super Ljava/lang/Object;
.source "TransformingPathConsumer2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/openpisces/TransformingPathConsumer2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterSet"
.end annotation


# instance fields
.field private deltascaler:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;

.field private deltatransformer:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;

.field private scaletranslater:Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;

.field private transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;

.field private translater:Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method


# virtual methods
.method public getConsumer(Lcom/sun/javafx/geom/PathConsumer2D;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathConsumer2D;
    .locals 21

    .prologue
    .line 139
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;
    move-object/from16 v2, p1

    .local v2, "out":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object/from16 v3, p2

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 140
    move-object v10, v2

    move-object v1, v10

    .line 193
    .end local v1    # "this":Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;
    :goto_0
    return-object v1

    .line 142
    .restart local v1    # "this":Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;
    :cond_0
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v10

    double-to-float v10, v10

    move v4, v10

    .line 143
    .local v4, "Mxx":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v10

    double-to-float v10, v10

    move v5, v10

    .line 144
    .local v5, "Mxy":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v10

    double-to-float v10, v10

    move v6, v10

    .line 145
    .local v6, "Mxt":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v10

    double-to-float v10, v10

    move v7, v10

    .line 146
    .local v7, "Myx":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v10

    double-to-float v10, v10

    move v8, v10

    .line 147
    .local v8, "Myy":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v10

    double-to-float v10, v10

    move v9, v10

    .line 148
    .local v9, "Myt":F
    move v10, v5

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_7

    move v10, v7

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_7

    .line 149
    move v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    move v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    .line 150
    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    move v10, v9

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    .line 151
    move-object v10, v2

    move-object v1, v10

    goto :goto_0

    .line 153
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->translater:Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;

    if-nez v10, :cond_2

    .line 154
    move-object v10, v1

    new-instance v11, Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v2

    move v14, v6

    move v15, v9

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;FF)V

    iput-object v11, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->translater:Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;

    .line 158
    :goto_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->translater:Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;

    move-object v1, v10

    goto :goto_0

    .line 156
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->translater:Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;

    move v11, v6

    move v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;->set(FF)V

    goto :goto_1

    .line 161
    :cond_3
    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_5

    move v10, v9

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_5

    .line 162
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltascaler:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;

    if-nez v10, :cond_4

    .line 163
    move-object v10, v1

    new-instance v11, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v2

    move v14, v4

    move v15, v8

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;FF)V

    iput-object v11, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltascaler:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;

    .line 167
    :goto_2
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltascaler:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;

    move-object v1, v10

    goto/16 :goto_0

    .line 165
    :cond_4
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltascaler:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;

    move v11, v4

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->set(FF)V

    goto :goto_2

    .line 169
    :cond_5
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->scaletranslater:Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;

    if-nez v10, :cond_6

    .line 170
    move-object v10, v1

    new-instance v11, Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v2

    move v14, v4

    move v15, v8

    move/from16 v16, v6

    move/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;FFFF)V

    iput-object v11, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->scaletranslater:Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;

    .line 175
    :goto_3
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->scaletranslater:Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;

    move-object v1, v10

    goto/16 :goto_0

    .line 173
    :cond_6
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->scaletranslater:Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;

    move v11, v4

    move v12, v8

    move v13, v6

    move v14, v9

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;->set(FFFF)V

    goto :goto_3

    .line 178
    :cond_7
    move v10, v6

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_9

    move v10, v9

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_9

    .line 179
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltatransformer:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;

    if-nez v10, :cond_8

    .line 180
    move-object v10, v1

    new-instance v11, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v2

    move v14, v4

    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v12 .. v17}, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;FFFF)V

    iput-object v11, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltatransformer:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;

    .line 185
    :goto_4
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltatransformer:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;

    move-object v1, v10

    goto/16 :goto_0

    .line 183
    :cond_8
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->deltatransformer:Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;

    move v11, v4

    move v12, v5

    move v13, v7

    move v14, v8

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;->set(FFFF)V

    goto :goto_4

    .line 187
    :cond_9
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;

    if-nez v10, :cond_a

    .line 188
    move-object v10, v1

    new-instance v11, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    move-object v13, v2

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v12 .. v19}, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;FFFFFF)V

    iput-object v11, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;

    .line 193
    :goto_5
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;

    move-object v1, v10

    goto/16 :goto_0

    .line 191
    :cond_a
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;->transformer:Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->set(FFFFFF)V

    goto :goto_5
.end method
