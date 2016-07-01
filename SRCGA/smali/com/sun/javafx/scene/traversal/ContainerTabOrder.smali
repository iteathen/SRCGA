.class public Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
.super Ljava/lang/Object;
.source "ContainerTabOrder.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/Algorithm;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 14

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object/from16 v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v8, v9, :cond_0

    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_1

    .line 157
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 158
    .local v4, "cc":D
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 165
    .local v6, "tc":D
    :goto_0
    move-wide v8, v6

    move-wide v10, v4

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    return-wide v0

    .line 161
    .end local v4    # "cc":D
    .end local v6    # "tc":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v4, v8

    .line 162
    .restart local v4    # "cc":D
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v6, v8

    .restart local v6    # "tc":D
    goto :goto_0
.end method

.method private cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 10

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v6, v7, :cond_0

    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_2

    .line 179
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 181
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 199
    .local v4, "distance":D
    :goto_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    return-wide v0

    .line 185
    .end local v4    # "distance":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 190
    .end local v4    # "distance":D
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 192
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 196
    .end local v4    # "distance":D
    :cond_3
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0
.end method

.method private isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z
    .locals 16

    .prologue
    .line 107
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object/from16 v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object/from16 v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-eq v12, v13, :cond_0

    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v12, v13, :cond_1

    .line 108
    :cond_0
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v4, v12

    .line 109
    .local v4, "cmin":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v6, v12

    .line 110
    .local v6, "cmax":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-wide v8, v12

    .line 111
    .local v8, "tmin":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-wide v10, v12

    .line 120
    .local v10, "tmax":D
    :goto_0
    move-wide v12, v8

    move-wide v14, v6

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_2

    move-wide v12, v10

    move-wide v14, v4

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    move v0, v12

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    return v0

    .line 114
    .end local v4    # "cmin":D
    .end local v6    # "cmax":D
    .end local v8    # "tmin":D
    .end local v10    # "tmax":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    :cond_1
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v4, v12

    .line 115
    .restart local v4    # "cmin":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v6, v12

    .line 116
    .restart local v6    # "cmax":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-wide v8, v12

    .line 117
    .restart local v8    # "tmin":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-wide v10, v12

    .restart local v10    # "tmax":D
    goto :goto_0

    .line 120
    :cond_2
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D
    .locals 10

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, p2

    .local v2, "cur":Ljavafx/geometry/Bounds;
    move-object v3, p3

    .local v3, "tgt":Ljavafx/geometry/Bounds;
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_0

    .line 132
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .line 144
    .local v4, "distance":D
    :goto_0
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    return-wide v0

    .line 134
    .end local v4    # "distance":D
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    :cond_0
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_1

    .line 135
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 137
    .end local v4    # "distance":D
    :cond_1
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v6, v7, :cond_2

    .line 138
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0

    .line 141
    .end local v4    # "distance":D
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-wide v4, v6

    .restart local v4    # "distance":D
    goto :goto_0
.end method

.method private trav2D(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Bounds;",
            "Lcom/sun/javafx/scene/traversal/Direction;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;",
            "Lcom/sun/javafx/scene/traversal/TraversalContext;",
            ")I"
        }
    .end annotation

    .prologue
    .line 72
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object/from16 v4, p1

    .local v4, "origin":Ljavafx/geometry/Bounds;
    move-object/from16 v5, p2

    .local v5, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object/from16 v6, p3

    .local v6, "peers":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v7, p4

    .local v7, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    const/16 v20, 0x0

    move-object/from16 v8, v20

    .line 73
    .local v8, "bestBounds":Ljavafx/geometry/Bounds;
    const-wide/16 v20, 0x0

    move-wide/from16 v9, v20

    .line 74
    .local v9, "bestMetric":D
    const/16 v20, -0x1

    move/from16 v11, v20

    .line 76
    .local v11, "bestIndex":I
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "i":I
    :goto_0
    move/from16 v20, v12

    move-object/from16 v21, v6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 77
    move-object/from16 v20, v7

    move-object/from16 v21, v6

    move/from16 v22, v12

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/Node;

    invoke-interface/range {v20 .. v21}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v20

    move-object/from16 v13, v20

    .line 78
    .local v13, "targetBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    move-object/from16 v23, v13

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/scene/traversal/ContainerTabOrder;->outDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 81
    .local v14, "outd":D
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    move-object/from16 v23, v13

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/scene/traversal/ContainerTabOrder;->isOnAxis(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 82
    move-wide/from16 v20, v14

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v25, v13

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/scene/traversal/ContainerTabOrder;->centerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    div-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .line 89
    .local v16, "metric":D
    :goto_1
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 90
    .line 76
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 85
    .end local v16    # "metric":D
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    move-object/from16 v23, v13

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/scene/traversal/ContainerTabOrder;->cornerSideDistance(Lcom/sun/javafx/scene/traversal/Direction;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 86
    .local v18, "cosd":D
    const-wide v20, 0x40f86a0000000000L    # 100000.0

    move-wide/from16 v22, v14

    move-wide/from16 v24, v14

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide/high16 v22, 0x4022000000000000L    # 9.0

    move-wide/from16 v24, v18

    mul-double v22, v22, v24

    move-wide/from16 v24, v18

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v16, v20

    .restart local v16    # "metric":D
    goto :goto_1

    .line 93
    .end local v18    # "cosd":D
    :cond_2
    move-object/from16 v20, v8

    if-eqz v20, :cond_3

    move-wide/from16 v20, v16

    move-wide/from16 v22, v9

    cmpg-double v20, v20, v22

    if-gez v20, :cond_0

    .line 94
    :cond_3
    move-object/from16 v20, v13

    move-object/from16 v8, v20

    .line 95
    move-wide/from16 v20, v16

    move-wide/from16 v9, v20

    .line 96
    move/from16 v20, v12

    move/from16 v11, v20

    goto :goto_2

    .line 100
    .end local v13    # "targetBounds":Ljavafx/geometry/Bounds;
    .end local v14    # "outd":D
    .end local v16    # "metric":D
    :cond_4
    move/from16 v20, v11

    move/from16 v3, v20

    .end local v3    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    return v3
.end method


# virtual methods
.method public select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 11

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, p3

    .local v3, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    sget-object v6, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 57
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    :pswitch_0
    move-object v6, v1

    move-object v7, v3

    invoke-interface {v7}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v8, v2

    sget-object v9, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findNextFocusablePeer(Ljavafx/scene/Node;Ljavafx/scene/Parent;Z)Ljavafx/scene/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 45
    :pswitch_1
    move-object v6, v1

    move-object v7, v3

    invoke-interface {v7}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->findPreviousFocusablePeer(Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 50
    :pswitch_2
    move-object v6, v3

    invoke-interface {v6}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getAllTargetNodes()Ljava/util/List;

    move-result-object v6

    move-object v4, v6

    .line 52
    .local v4, "nodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v6, v0

    move-object v7, v3

    move-object v8, v1

    invoke-interface {v7, v8}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getSceneLayoutBounds(Ljavafx/scene/Node;)Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/traversal/ContainerTabOrder;->trav2D(Ljavafx/geometry/Bounds;Lcom/sun/javafx/scene/traversal/Direction;Ljava/util/List;Lcom/sun/javafx/scene/traversal/TraversalContext;)I

    move-result v6

    move v5, v6

    .line 53
    .local v5, "target":I
    move v6, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 54
    move-object v6, v4

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v0, v6

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->getFirstTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    return-object v0
.end method

.method public selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    move-object v1, p1

    .local v1, "context":Lcom/sun/javafx/scene/traversal/TraversalContext;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/scene/traversal/TraversalContext;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/scene/traversal/TabOrderHelper;->getLastTargetNode(Ljavafx/scene/Parent;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
    return-object v0
.end method
