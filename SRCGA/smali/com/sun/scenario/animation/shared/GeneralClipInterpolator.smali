.class Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;
.super Lcom/sun/scenario/animation/shared/ClipInterpolator;
.source "GeneralClipInterpolator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

.field private invalid:Z

.field private keyFrameTicks:[J

.field private keyFrames:[Ljavafx/animation/KeyFrame;

.field private undefinedStartValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Ljavafx/animation/KeyFrame;[J)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;
    move-object v1, p1

    .local v1, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v2, p2

    .local v2, "keyFrameTicks":[J
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/scenario/animation/shared/ClipInterpolator;-><init>()V

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    .line 58
    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->undefinedStartValues:[I

    .line 60
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->invalid:Z

    .line 63
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrames:[Ljavafx/animation/KeyFrame;

    .line 64
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrameTicks:[J

    .line 65
    return-void
.end method


# virtual methods
.method interpolate(J)V
    .locals 27

    .prologue
    .line 164
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;
    move-wide/from16 v4, p1

    .local v4, "ticks":J
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v6, v18

    .line 166
    .local v6, "targetCount":I
    const/16 v18, 0x0

    move/from16 v7, v18

    .local v7, "targetIndex":I
    :goto_0
    move/from16 v18, v7

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 167
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v18, v0

    move/from16 v19, v7

    aget-object v18, v18, v19

    move-object/from16 v8, v18

    .line 168
    .local v8, "intervalList":[Lcom/sun/scenario/animation/shared/InterpolationInterval;
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 170
    .local v9, "intervalCount":I
    const-wide/16 v18, 0x0

    move-wide/from16 v10, v18

    .line 172
    .local v10, "leftTicks":J
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "intervalIndex":I
    :goto_1
    move/from16 v18, v12

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 173
    move-object/from16 v18, v8

    move/from16 v19, v12

    aget-object v18, v18, v19

    move-object/from16 v13, v18

    .line 174
    .local v13, "i":Lcom/sun/scenario/animation/shared/InterpolationInterval;
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;->ticks:J

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 175
    .local v14, "rightTicks":J
    move-wide/from16 v18, v4

    move-wide/from16 v20, v14

    cmp-long v18, v18, v20

    if-gtz v18, :cond_0

    .line 177
    move-wide/from16 v18, v4

    move-wide/from16 v20, v10

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v14

    move-wide/from16 v22, v10

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 179
    .local v16, "frac":D
    move-object/from16 v18, v13

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->interpolate(D)V

    .line 180
    .line 166
    .end local v12    # "intervalIndex":I
    .end local v13    # "i":Lcom/sun/scenario/animation/shared/InterpolationInterval;
    .end local v14    # "rightTicks":J
    .end local v16    # "frac":D
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 182
    .restart local v12    # "intervalIndex":I
    .restart local v13    # "i":Lcom/sun/scenario/animation/shared/InterpolationInterval;
    .restart local v14    # "rightTicks":J
    :cond_0
    move-wide/from16 v18, v14

    move-wide/from16 v10, v18

    .line 172
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 185
    .end local v13    # "i":Lcom/sun/scenario/animation/shared/InterpolationInterval;
    .end local v14    # "rightTicks":J
    :cond_1
    move-object/from16 v18, v8

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aget-object v18, v18, v19

    move-object/from16 v12, v18

    .line 188
    .local v12, "i":Lcom/sun/scenario/animation/shared/InterpolationInterval;
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v10

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;->ticks:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v10

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 190
    .local v13, "frac":D
    move-object/from16 v18, v12

    move-wide/from16 v19, v13

    invoke-virtual/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->interpolate(D)V

    goto :goto_2

    .line 192
    .end local v8    # "intervalList":[Lcom/sun/scenario/animation/shared/InterpolationInterval;
    .end local v9    # "intervalCount":I
    .end local v10    # "leftTicks":J
    .end local v12    # "i":Lcom/sun/scenario/animation/shared/InterpolationInterval;
    .end local v13    # "frac":D
    :cond_2
    return-void
.end method

.method setKeyFrames([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;
    move-object v1, p1

    .local v1, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v2, p2

    .local v2, "keyFrameTicks":[J
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->getRealKeyFrameCount([Ljavafx/animation/KeyFrame;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 71
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->create([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-result-object v3

    move-object v0, v3

    .line 76
    .end local v0    # "this":Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;
    :goto_0
    return-object v0

    .line 73
    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrames:[Ljavafx/animation/KeyFrame;

    .line 74
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrameTicks:[J

    .line 75
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->invalid:Z

    .line 76
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method validate(Z)V
    .locals 28

    .prologue
    .line 81
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;
    move/from16 v3, p1

    .local v3, "forceSync":Z
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->invalid:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 82
    new-instance v17, Ljava/util/HashMap;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, v17

    .line 83
    .local v4, "lastKeyValues":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/beans/value/WritableValue<*>;Ljavafx/animation/KeyValue;>;"
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrames:[Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v5, v17

    .line 85
    .local v5, "n":I
    const/16 v17, 0x0

    move/from16 v6, v17

    .local v6, "index":I
    :goto_0
    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 86
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrames:[Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v0

    move/from16 v18, v6

    aget-object v17, v17, v18

    move-object/from16 v7, v17

    .line 87
    .local v7, "keyFrame":Ljavafx/animation/KeyFrame;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrameTicks:[J

    move-object/from16 v17, v0

    move/from16 v18, v6

    aget-wide v17, v17, v18

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 88
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljavafx/animation/KeyFrame;->getValues()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v8, v17

    :goto_1
    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavafx/animation/KeyValue;

    move-object/from16 v9, v17

    .line 89
    .local v9, "keyValue":Ljavafx/animation/KeyValue;
    move-object/from16 v17, v4

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v18

    move-object/from16 v19, v9

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 90
    goto :goto_1

    .line 85
    .end local v9    # "keyValue":Ljavafx/animation/KeyValue;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 96
    .end local v7    # "keyFrame":Ljavafx/animation/KeyFrame;
    :cond_1
    new-instance v17, Ljava/util/HashMap;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v7, v17

    .line 97
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/beans/value/WritableValue<*>;Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;>;"
    new-instance v17, Ljava/util/HashSet;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v8, v17

    .line 99
    .local v8, "undefinedValues":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/beans/value/WritableValue<*>;>;"
    :goto_2
    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 100
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrames:[Ljavafx/animation/KeyFrame;

    move-object/from16 v17, v0

    move/from16 v18, v6

    aget-object v17, v17, v18

    move-object/from16 v9, v17

    .line 101
    .local v9, "keyFrame":Ljavafx/animation/KeyFrame;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->keyFrameTicks:[J

    move-object/from16 v17, v0

    move/from16 v18, v6

    aget-wide v17, v17, v18

    move-wide/from16 v10, v17

    .line 103
    .local v10, "ticks":J
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljavafx/animation/KeyFrame;->getValues()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v12, v17

    :goto_3
    move-object/from16 v17, v12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavafx/animation/KeyValue;

    move-object/from16 v13, v17

    .line 104
    .local v13, "rightKeyValue":Ljavafx/animation/KeyValue;
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v17

    move-object/from16 v14, v17

    .line 105
    .local v14, "target":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<*>;"
    move-object/from16 v17, v7

    move-object/from16 v18, v14

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    move-object/from16 v15, v17

    .line 106
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;"
    move-object/from16 v17, v4

    move-object/from16 v18, v14

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v17

    .line 107
    .local v16, "leftKeyValue":Ljavafx/animation/KeyValue;
    move-object/from16 v17, v15

    if-nez v17, :cond_3

    .line 110
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v17

    .line 111
    move-object/from16 v17, v7

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 112
    move-object/from16 v17, v16

    if-nez v17, :cond_2

    .line 113
    move-object/from16 v17, v15

    move-object/from16 v18, v13

    move-wide/from16 v19, v10

    invoke-static/range {v18 .. v20}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->create(Ljavafx/animation/KeyValue;J)Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 115
    move-object/from16 v17, v8

    move-object/from16 v18, v14

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 127
    :goto_4
    move-object/from16 v17, v4

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 128
    goto :goto_3

    .line 117
    :cond_2
    move-object/from16 v17, v15

    move-object/from16 v18, v13

    move-wide/from16 v19, v10

    move-object/from16 v21, v16

    move-wide/from16 v22, v10

    .line 118
    invoke-static/range {v18 .. v23}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->create(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-result-object v18

    .line 117
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    goto :goto_4

    .line 122
    :cond_3
    sget-boolean v17, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->$assertionsDisabled:Z

    if-nez v17, :cond_4

    move-object/from16 v17, v16

    if-nez v17, :cond_4

    new-instance v17, Ljava/lang/AssertionError;

    move-object/from16 v27, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v27

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 123
    :cond_4
    move-object/from16 v17, v15

    move-object/from16 v18, v13

    move-wide/from16 v19, v10

    move-object/from16 v21, v16

    move-wide/from16 v22, v10

    move-object/from16 v24, v15

    move-object/from16 v25, v15

    .line 125
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;->ticks:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    .line 123
    invoke-static/range {v18 .. v23}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->create(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    goto :goto_4

    .line 99
    .end local v13    # "rightKeyValue":Ljavafx/animation/KeyValue;
    .end local v14    # "target":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<*>;"
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;"
    .end local v16    # "leftKeyValue":Ljavafx/animation/KeyValue;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 132
    .end local v9    # "keyFrame":Ljavafx/animation/KeyFrame;
    .end local v10    # "ticks":J
    :cond_6
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    move/from16 v9, v17

    .line 133
    .local v9, "targetCount":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 134
    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v0, v18

    new-array v0, v0, [[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    .line 136
    :cond_7
    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v10, v17

    .line 137
    .local v10, "undefinedStartValuesCount":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->undefinedStartValues:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 138
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->undefinedStartValues:[I

    .line 140
    :cond_8
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 141
    .local v11, "undefinedStartValuesIndex":I
    move-object/from16 v17, v7

    .line 142
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v12, v17

    .line 143
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavafx/beans/value/WritableValue<*>;Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;>;>;"
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "i":I
    :goto_5
    move/from16 v17, v13

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 144
    move-object/from16 v17, v12

    .line 145
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    move-object/from16 v14, v17

    .line 146
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/beans/value/WritableValue<*>;Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;>;"
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v17, v0

    move/from16 v18, v13

    move-object/from16 v19, v14

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    .line 147
    move-object/from16 v17, v14

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-object v18, v18, v19

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    .line 148
    move-object/from16 v17, v8

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 149
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->undefinedStartValues:[I

    move-object/from16 v17, v0

    move/from16 v18, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v19, v13

    aput v19, v17, v18

    .line 143
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 152
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/beans/value/WritableValue<*>;Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;>;"
    :cond_a
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->invalid:Z

    .line 153
    .line 160
    .end local v4    # "lastKeyValues":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/beans/value/WritableValue<*>;Ljavafx/animation/KeyValue;>;"
    .end local v5    # "n":I
    .end local v6    # "index":I
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/beans/value/WritableValue<*>;Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;>;"
    .end local v8    # "undefinedValues":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/beans/value/WritableValue<*>;>;"
    .end local v9    # "targetCount":I
    .end local v10    # "undefinedStartValuesCount":I
    .end local v11    # "undefinedStartValuesIndex":I
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavafx/beans/value/WritableValue<*>;Ljava/util/List<Lcom/sun/scenario/animation/shared/InterpolationInterval;>;>;>;"
    .end local v13    # "i":I
    :cond_b
    return-void

    .line 153
    :cond_c
    move/from16 v17, v3

    if-eqz v17, :cond_b

    .line 154
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->undefinedStartValues:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v4, v17

    .line 155
    .local v4, "n":I
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "i":I
    :goto_6
    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 156
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->undefinedStartValues:[I

    move-object/from16 v17, v0

    move/from16 v18, v5

    aget v17, v17, v18

    move/from16 v6, v17

    .line 157
    .restart local v6    # "index":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/scenario/animation/shared/GeneralClipInterpolator;->interval:[[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-object/from16 v17, v0

    move/from16 v18, v6

    aget-object v17, v17, v18

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->recalculateStartValue()V

    .line 155
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method
