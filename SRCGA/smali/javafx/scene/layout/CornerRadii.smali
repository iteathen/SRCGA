.class public Ljavafx/scene/layout/CornerRadii;
.super Ljava/lang/Object;
.source "CornerRadii.java"


# static fields
.field public static final EMPTY:Ljavafx/scene/layout/CornerRadii;


# instance fields
.field private bottomLeftHorizontalRadius:D

.field private final bottomLeftHorizontalRadiusAsPercentage:Z

.field private bottomLeftVerticalRadius:D

.field private final bottomLeftVerticalRadiusAsPercentage:Z

.field private bottomRightHorizontalRadius:D

.field private final bottomRightHorizontalRadiusAsPercentage:Z

.field private bottomRightVerticalRadius:D

.field private final bottomRightVerticalRadiusAsPercentage:Z

.field final hasPercentBasedRadii:Z

.field private final hash:I

.field private topLeftHorizontalRadius:D

.field private final topLeftHorizontalRadiusAsPercentage:Z

.field private topLeftVerticalRadius:D

.field private final topLeftVerticalRadiusAsPercentage:Z

.field private topRightHorizontalRadius:D

.field private final topRightHorizontalRadiusAsPercentage:Z

.field private topRightVerticalRadius:D

.field private final topRightVerticalRadiusAsPercentage:Z

.field final uniform:Z


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .prologue
    .line 45
    new-instance v0, Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v26

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v1 .. v25}, Ljavafx/scene/layout/CornerRadii;-><init>(DDDDDDDDZZZZZZZZ)V

    sput-object v0, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 19
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "radius"
        .end annotation
    .end param

    .prologue
    .line 167
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-wide/from16 v1, p1

    .local v1, "radius":D
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 169
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v15, v3

    move-object v3, v15

    move-object v4, v15

    const-string v5, "The radii value may not be < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_0
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    move-wide v11, v1

    move-object v15, v10

    move-wide/from16 v16, v11

    move-wide/from16 v10, v16

    move-object v12, v15

    move-wide/from16 v13, v16

    iput-wide v13, v12, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    move-object v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v9, v16

    move-object v11, v15

    move-wide/from16 v12, v16

    iput-wide v12, v11, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    move-object v15, v8

    move-wide/from16 v16, v9

    move-wide/from16 v8, v16

    move-object v10, v15

    move-wide/from16 v11, v16

    iput-wide v11, v10, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    move-object v15, v7

    move-wide/from16 v16, v8

    move-wide/from16 v7, v16

    move-object v9, v15

    move-wide/from16 v10, v16

    iput-wide v10, v9, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    move-object v15, v6

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    move-object v8, v15

    move-wide/from16 v9, v16

    iput-wide v9, v8, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    move-object v15, v5

    move-wide/from16 v16, v6

    move-wide/from16 v5, v16

    move-object v7, v15

    move-wide/from16 v8, v16

    iput-wide v8, v7, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    move-object v15, v4

    move-wide/from16 v16, v5

    move-wide/from16 v4, v16

    move-object v6, v15

    move-wide/from16 v7, v16

    iput-wide v7, v6, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    iput-wide v4, v3, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    .line 177
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    const/4 v11, 0x0

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    iput-boolean v12, v11, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    move-object v15, v9

    move/from16 v16, v10

    move/from16 v9, v16

    move-object v10, v15

    move/from16 v11, v16

    iput-boolean v11, v10, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    move-object v15, v8

    move/from16 v16, v9

    move/from16 v8, v16

    move-object v9, v15

    move/from16 v10, v16

    iput-boolean v10, v9, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    move-object v15, v7

    move/from16 v16, v8

    move/from16 v7, v16

    move-object v8, v15

    move/from16 v9, v16

    iput-boolean v9, v8, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v6, v16

    move-object v7, v15

    move/from16 v8, v16

    iput-boolean v8, v7, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v5, v16

    move-object v6, v15

    move/from16 v7, v16

    iput-boolean v7, v6, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v4, v16

    move-object v5, v15

    move/from16 v6, v16

    iput-boolean v6, v5, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    iput-boolean v4, v3, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    .line 182
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/layout/CornerRadii;->hasPercentBasedRadii:Z

    .line 183
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/layout/CornerRadii;->uniform:Z

    .line 184
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/layout/CornerRadii;->preComputeHash()I

    move-result v4

    iput v4, v3, Ljavafx/scene/layout/CornerRadii;->hash:I

    .line 185
    return-void
.end method

.method public constructor <init>(DDDDDDDDZZZZZZZZ)V
    .locals 35
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topLeftHorizontalRadius"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topLeftVerticalRadius"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topRightVerticalRadius"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topRightHorizontalRadius"
        .end annotation
    .end param
    .param p9    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomRightHorizontalRadius"
        .end annotation
    .end param
    .param p11    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomRightVerticalRadius"
        .end annotation
    .end param
    .param p13    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomLeftVerticalRadius"
        .end annotation
    .end param
    .param p15    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomLeftHorizontalRadius"
        .end annotation
    .end param
    .param p17    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topLeftHorizontalRadiusAsPercent"
        .end annotation
    .end param
    .param p18    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topLeftVerticalRadiusAsPercent"
        .end annotation
    .end param
    .param p19    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topRightVerticalRadiusAsPercent"
        .end annotation
    .end param
    .param p20    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topRightHorizontalRadiusAsPercent"
        .end annotation
    .end param
    .param p21    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomRightHorizontalRadiusAsPercent"
        .end annotation
    .end param
    .param p22    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomRightVerticalRadiusAsPercent"
        .end annotation
    .end param
    .param p23    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomLeftVerticalRadiusAsPercent"
        .end annotation
    .end param
    .param p24    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomLeftHorizontalRadiusAsPercent"
        .end annotation
    .end param

    .prologue
    .line 270
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/CornerRadii;
    move-wide/from16 v4, p1

    .local v4, "topLeftHorizontalRadius":D
    move-wide/from16 v6, p3

    .local v6, "topLeftVerticalRadius":D
    move-wide/from16 v8, p5

    .local v8, "topRightVerticalRadius":D
    move-wide/from16 v10, p7

    .local v10, "topRightHorizontalRadius":D
    move-wide/from16 v12, p9

    .local v12, "bottomRightHorizontalRadius":D
    move-wide/from16 v14, p11

    .local v14, "bottomRightVerticalRadius":D
    move-wide/from16 v16, p13

    .local v16, "bottomLeftVerticalRadius":D
    move-wide/from16 v18, p15

    .local v18, "bottomLeftHorizontalRadius":D
    move/from16 v20, p17

    .local v20, "topLeftHorizontalRadiusAsPercent":Z
    move/from16 v21, p18

    .local v21, "topLeftVerticalRadiusAsPercent":Z
    move/from16 v22, p19

    .local v22, "topRightVerticalRadiusAsPercent":Z
    move/from16 v23, p20

    .local v23, "topRightHorizontalRadiusAsPercent":Z
    move/from16 v24, p21

    .local v24, "bottomRightHorizontalRadiusAsPercent":Z
    move/from16 v25, p22

    .local v25, "bottomRightVerticalRadiusAsPercent":Z
    move/from16 v26, p23

    .local v26, "bottomLeftVerticalRadiusAsPercent":Z
    move/from16 v27, p24

    .local v27, "bottomLeftHorizontalRadiusAsPercent":Z
    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 271
    move-wide/from16 v28, v4

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-ltz v28, :cond_0

    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-ltz v28, :cond_0

    move-wide/from16 v28, v8

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-ltz v28, :cond_0

    move-wide/from16 v28, v10

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-ltz v28, :cond_0

    move-wide/from16 v28, v12

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-ltz v28, :cond_0

    move-wide/from16 v28, v14

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-ltz v28, :cond_0

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-ltz v28, :cond_0

    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_1

    .line 275
    :cond_0
    new-instance v28, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    const-string v30, "No radii value may be < 0"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 277
    :cond_1
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    .line 278
    move-object/from16 v28, v3

    move-wide/from16 v29, v6

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    .line 279
    move-object/from16 v28, v3

    move-wide/from16 v29, v8

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    .line 280
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    .line 281
    move-object/from16 v28, v3

    move-wide/from16 v29, v12

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    .line 282
    move-object/from16 v28, v3

    move-wide/from16 v29, v14

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    .line 283
    move-object/from16 v28, v3

    move-wide/from16 v29, v16

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    .line 284
    move-object/from16 v28, v3

    move-wide/from16 v29, v18

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    .line 285
    move-object/from16 v28, v3

    move/from16 v29, v20

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    .line 286
    move-object/from16 v28, v3

    move/from16 v29, v21

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    .line 287
    move-object/from16 v28, v3

    move/from16 v29, v22

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    .line 288
    move-object/from16 v28, v3

    move/from16 v29, v23

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    .line 289
    move-object/from16 v28, v3

    move/from16 v29, v24

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    .line 290
    move-object/from16 v28, v3

    move/from16 v29, v25

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    .line 291
    move-object/from16 v28, v3

    move/from16 v29, v26

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    .line 292
    move-object/from16 v28, v3

    move/from16 v29, v27

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    .line 293
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v29}, Ljavafx/scene/layout/CornerRadii;->preComputeHash()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Ljavafx/scene/layout/CornerRadii;->hash:I

    .line 294
    move-object/from16 v28, v3

    move/from16 v29, v20

    if-nez v29, :cond_2

    move/from16 v29, v21

    if-nez v29, :cond_2

    move/from16 v29, v22

    if-nez v29, :cond_2

    move/from16 v29, v23

    if-nez v29, :cond_2

    move/from16 v29, v24

    if-nez v29, :cond_2

    move/from16 v29, v25

    if-nez v29, :cond_2

    move/from16 v29, v26

    if-nez v29, :cond_2

    move/from16 v29, v27

    if-eqz v29, :cond_3

    :cond_2
    const/16 v29, 0x1

    :goto_0
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->hasPercentBasedRadii:Z

    .line 298
    move-object/from16 v28, v3

    move-wide/from16 v29, v4

    move-wide/from16 v31, v10

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v8

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    move-wide/from16 v29, v4

    move-wide/from16 v31, v12

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v14

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    move-wide/from16 v29, v4

    move-wide/from16 v31, v18

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v16

    cmpl-double v29, v29, v31

    if-nez v29, :cond_4

    move/from16 v29, v20

    move/from16 v30, v23

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    move/from16 v29, v21

    move/from16 v30, v22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    move/from16 v29, v20

    move/from16 v30, v24

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    move/from16 v29, v21

    move/from16 v30, v25

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    move/from16 v29, v20

    move/from16 v30, v27

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    move/from16 v29, v21

    move/from16 v30, v26

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/16 v29, 0x1

    :goto_1
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->uniform:Z

    .line 310
    return-void

    .line 294
    :cond_3
    const/16 v29, 0x0

    goto :goto_0

    .line 298
    :cond_4
    const/16 v29, 0x0

    goto :goto_1
.end method

.method public constructor <init>(DDDDZ)V
    .locals 27
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topLeft"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "topRight"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomRight"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "bottomLeft"
        .end annotation
    .end param
    .param p9    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "asPercent"
        .end annotation
    .end param

    .prologue
    .line 224
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/CornerRadii;
    move-wide/from16 v4, p1

    .local v4, "topLeft":D
    move-wide/from16 v6, p3

    .local v6, "topRight":D
    move-wide/from16 v8, p5

    .local v8, "bottomRight":D
    move-wide/from16 v10, p7

    .local v10, "bottomLeft":D
    move/from16 v12, p9

    .local v12, "asPercent":Z
    move-object v13, v3

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 225
    move-wide v13, v4

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_0

    move-wide v13, v6

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_0

    move-wide v13, v8

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_0

    move-wide v13, v10

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-gez v13, :cond_1

    .line 226
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    const-string v15, "No radii value may be < 0"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 229
    :cond_1
    move-object v13, v3

    move-object v14, v3

    move-wide v15, v4

    move-object/from16 v23, v14

    move-wide/from16 v24, v15

    move-wide/from16 v14, v24

    move-object/from16 v16, v23

    move-wide/from16 v17, v24

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    iput-wide v14, v13, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    .line 230
    move-object v13, v3

    move-object v14, v3

    move-wide v15, v6

    move-object/from16 v23, v14

    move-wide/from16 v24, v15

    move-wide/from16 v14, v24

    move-object/from16 v16, v23

    move-wide/from16 v17, v24

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    iput-wide v14, v13, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    .line 231
    move-object v13, v3

    move-object v14, v3

    move-wide v15, v8

    move-object/from16 v23, v14

    move-wide/from16 v24, v15

    move-wide/from16 v14, v24

    move-object/from16 v16, v23

    move-wide/from16 v17, v24

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    iput-wide v14, v13, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    .line 232
    move-object v13, v3

    move-object v14, v3

    move-wide v15, v10

    move-object/from16 v23, v14

    move-wide/from16 v24, v15

    move-wide/from16 v14, v24

    move-object/from16 v16, v23

    move-wide/from16 v17, v24

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    iput-wide v14, v13, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    .line 233
    move-object v13, v3

    move-object v14, v3

    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move/from16 v21, v12

    move-object/from16 v23, v20

    move/from16 v24, v21

    move/from16 v20, v24

    move-object/from16 v21, v23

    move/from16 v22, v24

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    move-object/from16 v23, v19

    move/from16 v24, v20

    move/from16 v19, v24

    move-object/from16 v20, v23

    move/from16 v21, v24

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    move-object/from16 v23, v18

    move/from16 v24, v19

    move/from16 v18, v24

    move-object/from16 v19, v23

    move/from16 v20, v24

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    move-object/from16 v23, v17

    move/from16 v24, v18

    move/from16 v17, v24

    move-object/from16 v18, v23

    move/from16 v19, v24

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    move-object/from16 v23, v16

    move/from16 v24, v17

    move/from16 v16, v24

    move-object/from16 v17, v23

    move/from16 v18, v24

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    move-object/from16 v23, v15

    move/from16 v24, v16

    move/from16 v15, v24

    move-object/from16 v16, v23

    move/from16 v17, v24

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    move-object/from16 v23, v14

    move/from16 v24, v15

    move/from16 v14, v24

    move-object/from16 v15, v23

    move/from16 v16, v24

    move/from16 v0, v16

    iput-boolean v0, v15, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    iput-boolean v14, v13, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    .line 238
    move-object v13, v3

    move-wide v14, v4

    move-wide/from16 v16, v6

    cmpl-double v14, v14, v16

    if-nez v14, :cond_2

    move-wide v14, v4

    move-wide/from16 v16, v10

    cmpl-double v14, v14, v16

    if-nez v14, :cond_2

    move-wide v14, v4

    move-wide/from16 v16, v8

    cmpl-double v14, v14, v16

    if-nez v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    iput-boolean v14, v13, Ljavafx/scene/layout/CornerRadii;->uniform:Z

    .line 239
    move-object v13, v3

    move v14, v12

    iput-boolean v14, v13, Ljavafx/scene/layout/CornerRadii;->hasPercentBasedRadii:Z

    .line 240
    move-object v13, v3

    move-object v14, v3

    invoke-direct {v14}, Ljavafx/scene/layout/CornerRadii;->preComputeHash()I

    move-result v14

    iput v14, v13, Ljavafx/scene/layout/CornerRadii;->hash:I

    .line 241
    return-void

    .line 238
    :cond_2
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public constructor <init>(DZ)V
    .locals 21
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "radius"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "asPercent"
        .end annotation
    .end param

    .prologue
    .line 195
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/CornerRadii;
    move-wide/from16 v2, p1

    .local v2, "radius":D
    move/from16 v4, p3

    .local v4, "asPercent":Z
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 196
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 197
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v5

    move-object/from16 v5, v17

    move-object/from16 v6, v17

    const-string v7, "The radii value may not be < 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 199
    :cond_0
    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    move-wide v13, v2

    move-object/from16 v17, v12

    move-wide/from16 v18, v13

    move-wide/from16 v12, v18

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    iput-wide v15, v14, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    move-object/from16 v17, v11

    move-wide/from16 v18, v12

    move-wide/from16 v11, v18

    move-object/from16 v13, v17

    move-wide/from16 v14, v18

    iput-wide v14, v13, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    move-wide/from16 v10, v18

    move-object/from16 v12, v17

    move-wide/from16 v13, v18

    iput-wide v13, v12, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    move-object/from16 v17, v9

    move-wide/from16 v18, v10

    move-wide/from16 v9, v18

    move-object/from16 v11, v17

    move-wide/from16 v12, v18

    iput-wide v12, v11, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    move-object/from16 v17, v8

    move-wide/from16 v18, v9

    move-wide/from16 v8, v18

    move-object/from16 v10, v17

    move-wide/from16 v11, v18

    iput-wide v11, v10, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    move-wide/from16 v7, v18

    move-object/from16 v9, v17

    move-wide/from16 v10, v18

    iput-wide v10, v9, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    move-object/from16 v17, v6

    move-wide/from16 v18, v7

    move-wide/from16 v6, v18

    move-object/from16 v8, v17

    move-wide/from16 v9, v18

    iput-wide v9, v8, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    iput-wide v6, v5, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    .line 204
    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    move v13, v4

    move-object/from16 v17, v12

    move/from16 v18, v13

    move/from16 v12, v18

    move-object/from16 v13, v17

    move/from16 v14, v18

    iput-boolean v14, v13, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v11, v18

    move-object/from16 v12, v17

    move/from16 v13, v18

    iput-boolean v13, v12, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    move-object/from16 v17, v10

    move/from16 v18, v11

    move/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v18

    iput-boolean v12, v11, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    move-object/from16 v17, v9

    move/from16 v18, v10

    move/from16 v9, v18

    move-object/from16 v10, v17

    move/from16 v11, v18

    iput-boolean v11, v10, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    move-object/from16 v17, v8

    move/from16 v18, v9

    move/from16 v8, v18

    move-object/from16 v9, v17

    move/from16 v10, v18

    iput-boolean v10, v9, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v7, v18

    move-object/from16 v8, v17

    move/from16 v9, v18

    iput-boolean v9, v8, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v6, v18

    move-object/from16 v7, v17

    move/from16 v8, v18

    iput-boolean v8, v7, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    iput-boolean v6, v5, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    .line 209
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/layout/CornerRadii;->uniform:Z

    .line 210
    move-object v5, v1

    move v6, v4

    iput-boolean v6, v5, Ljavafx/scene/layout/CornerRadii;->hasPercentBasedRadii:Z

    .line 211
    move-object v5, v1

    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/layout/CornerRadii;->preComputeHash()I

    move-result v6

    iput v6, v5, Ljavafx/scene/layout/CornerRadii;->hash:I

    .line 212
    return-void
.end method

.method private preComputeHash()I
    .locals 10

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_0
    move-wide v2, v4

    .line 316
    .local v2, "temp":J
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .line 317
    .local v1, "result":I
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_1
    move-wide v2, v4

    .line 318
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 319
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_2
    move-wide v2, v4

    .line 320
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 321
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_3
    move-wide v2, v4

    .line 322
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 323
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_4
    move-wide v2, v4

    .line 324
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 325
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_5
    move-wide v2, v4

    .line 326
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 327
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_6
    move-wide v2, v4

    .line 328
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 329
    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    :goto_7
    move-wide v2, v4

    .line 330
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 331
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_8
    add-int/2addr v4, v5

    move v1, v4

    .line 332
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    :goto_9
    add-int/2addr v4, v5

    move v1, v4

    .line 333
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_a
    add-int/2addr v4, v5

    move v1, v4

    .line 334
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_b
    add-int/2addr v4, v5

    move v1, v4

    .line 335
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    :goto_c
    add-int/2addr v4, v5

    move v1, v4

    .line 336
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    :goto_d
    add-int/2addr v4, v5

    move v1, v4

    .line 337
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_e
    add-int/2addr v4, v5

    move v1, v4

    .line 338
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    :goto_f
    add-int/2addr v4, v5

    move v1, v4

    .line 339
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move v5, v1

    add-int/2addr v4, v5

    move v1, v4

    .line 340
    move v4, v1

    move v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0

    .line 315
    .end local v1    # "result":I
    .end local v2    # "temp":J
    .restart local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    :cond_0
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 317
    .restart local v1    # "result":I
    .restart local v2    # "temp":J
    :cond_1
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    .line 319
    :cond_2
    const-wide/16 v4, 0x0

    goto/16 :goto_2

    .line 321
    :cond_3
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    .line 323
    :cond_4
    const-wide/16 v4, 0x0

    goto/16 :goto_4

    .line 325
    :cond_5
    const-wide/16 v4, 0x0

    goto/16 :goto_5

    .line 327
    :cond_6
    const-wide/16 v4, 0x0

    goto/16 :goto_6

    .line 329
    :cond_7
    const-wide/16 v4, 0x0

    goto/16 :goto_7

    .line 331
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 332
    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    .line 333
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 334
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 335
    :cond_c
    const/4 v5, 0x0

    goto :goto_c

    .line 336
    :cond_d
    const/4 v5, 0x0

    goto :goto_d

    .line 337
    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    .line 338
    :cond_f
    const/4 v5, 0x0

    goto :goto_f
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 347
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 369
    .end local v1    # "this":Ljavafx/scene/layout/CornerRadii;
    :goto_0
    return v1

    .line 348
    .restart local v1    # "this":Ljavafx/scene/layout/CornerRadii;
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 349
    :cond_2
    move-object v4, v2

    check-cast v4, Ljavafx/scene/layout/CornerRadii;

    move-object v3, v4

    .line 350
    .local v3, "that":Ljavafx/scene/layout/CornerRadii;
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/layout/CornerRadii;->hash:I

    move-object v5, v3

    iget v5, v5, Ljavafx/scene/layout/CornerRadii;->hash:I

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 352
    :cond_3
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 353
    :cond_4
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_5

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 354
    :cond_5
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 355
    :cond_6
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_7

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 356
    :cond_7
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 357
    :cond_8
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_9

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 358
    :cond_9
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 359
    :cond_a
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_b

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 360
    :cond_b
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 361
    :cond_c
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_d

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 362
    :cond_d
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 363
    :cond_e
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_f

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 364
    :cond_f
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 365
    :cond_10
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_11

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 366
    :cond_11
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 367
    :cond_12
    move-object v4, v1

    iget-boolean v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    if-eq v4, v5, :cond_13

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 369
    :cond_13
    const/4 v4, 0x1

    move v1, v4

    goto/16 :goto_0
.end method

.method public final getBottomLeftHorizontalRadius()D
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public final getBottomLeftVerticalRadius()D
    .locals 3

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public final getBottomRightHorizontalRadius()D
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public final getBottomRightVerticalRadius()D
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public final getTopLeftHorizontalRadius()D
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public final getTopLeftVerticalRadius()D
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public final getTopRightHorizontalRadius()D
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public final getTopRightVerticalRadius()D
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/CornerRadii;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isBottomLeftHorizontalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isBottomLeftVerticalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isBottomRightHorizontalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isBottomRightVerticalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isTopLeftHorizontalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isTopLeftVerticalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isTopRightHorizontalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isTopRightVerticalRadiusAsPercentage()Z
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadiusAsPercentage:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public final isUniform()Z
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/CornerRadii;->uniform:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/CornerRadii;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 380
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/CornerRadii;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/layout/CornerRadii;->isUniform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CornerRadii [uniform radius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    iget-wide v3, v3, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 384
    .end local v1    # "this":Ljavafx/scene/layout/CornerRadii;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/layout/CornerRadii;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CornerRadii ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    iget-wide v3, v3, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    move-object v5, v1

    iget-wide v5, v5, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topLeft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    iget-wide v3, v3, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    move-object v5, v1

    iget-wide v5, v5, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", topRight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    iget-wide v3, v3, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    move-object v5, v1

    iget-wide v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", bottomRight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    iget-wide v3, v3, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    move-object v5, v1

    iget-wide v5, v5, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", bottomLeft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto/16 :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topLeftHorizontalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", topLeftVerticalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topLeftVerticalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", topRightVerticalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightVerticalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", topRightHorizontalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->topRightHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", bottomRightHorizontalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottomRightVerticalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomRightVerticalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", bottomLeftVerticalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftVerticalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottomLeftHorizontalRadius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/CornerRadii;->bottomLeftHorizontalRadius:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4
.end method
