.class public Lcom/sun/javafx/geom/Area;
.super Lcom/sun/javafx/geom/Shape;
.source "Area.java"


# static fields
.field private static final EmptyCurves:Ljava/util/Vector;


# instance fields
.field private cachedBounds:Lcom/sun/javafx/geom/RectBounds;

.field private curves:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/util/Vector;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sun/javafx/geom/Area;->EmptyCurves:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 104
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/geom/Area;->EmptyCurves:Ljava/util/Vector;

    iput-object v2, v1, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/PathIterator;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "iter":Lcom/sun/javafx/geom/PathIterator;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 125
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/geom/Area;->pathToCurves(Lcom/sun/javafx/geom/PathIterator;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Shape;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/geom/Shape;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Shape;-><init>()V

    .line 117
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/geom/Area;

    if-eqz v2, :cond_0

    .line 118
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Area;

    iget-object v3, v3, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/geom/Area;->pathToCurves(Lcom/sun/javafx/geom/PathIterator;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    goto :goto_0
.end method

.method private getCachedBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 11

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->cachedBounds:Lcom/sun/javafx/geom/RectBounds;

    if-eqz v4, :cond_0

    .line 427
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->cachedBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v4

    .line 438
    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    .local v1, "r":Lcom/sun/javafx/geom/RectBounds;
    :goto_0
    return-object v0

    .line 429
    .end local v1    # "r":Lcom/sun/javafx/geom/RectBounds;
    .restart local v0    # "this":Lcom/sun/javafx/geom/Area;
    :cond_0
    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v1, v4

    .line 430
    .restart local v1    # "r":Lcom/sun/javafx/geom/RectBounds;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 431
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/Curve;

    move-object v2, v4

    .line 433
    .local v2, "c":Lcom/sun/javafx/geom/Curve;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Curve;->getX0()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Curve;->getY0()D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 434
    const/4 v4, 0x1

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 435
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/Curve;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Curve;->enlarge(Lcom/sun/javafx/geom/RectBounds;)V

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 438
    .end local v2    # "c":Lcom/sun/javafx/geom/Curve;
    .end local v3    # "i":I
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    move-object v6, v10

    iput-object v6, v5, Lcom/sun/javafx/geom/Area;->cachedBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v4

    goto :goto_0
.end method

.method private invalidateBounds()V
    .locals 3

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/geom/Area;->cachedBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 424
    return-void
.end method

.method private static pathToCurves(Lcom/sun/javafx/geom/PathIterator;)Ljava/util/Vector;
    .locals 41

    .prologue
    .line 129
    move-object/from16 v3, p0

    .local v3, "pi":Lcom/sun/javafx/geom/PathIterator;
    new-instance v21, Ljava/util/Vector;

    move-object/from16 v39, v21

    move-object/from16 v21, v39

    move-object/from16 v22, v39

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    move-object/from16 v4, v21

    .line 130
    .local v4, "curves":Ljava/util/Vector;
    move-object/from16 v21, v3

    invoke-interface/range {v21 .. v21}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v21

    move/from16 v5, v21

    .line 145
    .local v5, "windingRule":I
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    move-object/from16 v6, v21

    .line 146
    .local v6, "coords":[F
    const/16 v21, 0x17

    move/from16 v0, v21

    new-array v0, v0, [D

    move-object/from16 v21, v0

    move-object/from16 v7, v21

    .line 147
    .local v7, "tmp":[D
    const-wide/16 v21, 0x0

    move-wide/from16 v8, v21

    .local v8, "movx":D
    const-wide/16 v21, 0x0

    move-wide/from16 v10, v21

    .line 148
    .local v10, "movy":D
    const-wide/16 v21, 0x0

    move-wide/from16 v12, v21

    .local v12, "curx":D
    const-wide/16 v21, 0x0

    move-wide/from16 v14, v21

    .line 150
    .local v14, "cury":D
    :goto_0
    move-object/from16 v21, v3

    invoke-interface/range {v21 .. v21}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v21

    if-nez v21, :cond_0

    .line 151
    move-object/from16 v21, v3

    move-object/from16 v22, v6

    invoke-interface/range {v21 .. v22}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 192
    :goto_1
    move-object/from16 v21, v3

    invoke-interface/range {v21 .. v21}, Lcom/sun/javafx/geom/PathIterator;->next()V

    goto :goto_0

    .line 153
    :pswitch_0
    move-object/from16 v21, v4

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    invoke-static/range {v21 .. v29}, Lcom/sun/javafx/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 154
    move-object/from16 v21, v6

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v39, v21

    move-wide/from16 v21, v39

    move-wide/from16 v23, v39

    move-wide/from16 v8, v23

    move-wide/from16 v12, v21

    .line 155
    move-object/from16 v21, v6

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v39, v21

    move-wide/from16 v21, v39

    move-wide/from16 v23, v39

    move-wide/from16 v10, v23

    move-wide/from16 v14, v21

    .line 156
    move-object/from16 v21, v4

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    invoke-static/range {v21 .. v25}, Lcom/sun/javafx/geom/Curve;->insertMove(Ljava/util/Vector;DD)V

    .line 157
    goto :goto_1

    .line 159
    :pswitch_1
    move-object/from16 v21, v6

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v16, v21

    .line 160
    .local v16, "newx":D
    move-object/from16 v21, v6

    const/16 v22, 0x1

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v18, v21

    .line 161
    .local v18, "newy":D
    move-object/from16 v21, v4

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v16

    move-wide/from16 v28, v18

    invoke-static/range {v21 .. v29}, Lcom/sun/javafx/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 162
    move-wide/from16 v21, v16

    move-wide/from16 v12, v21

    .line 163
    move-wide/from16 v21, v18

    move-wide/from16 v14, v21

    .line 164
    goto :goto_1

    .line 166
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_2
    move-object/from16 v21, v6

    const/16 v22, 0x2

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v16, v21

    .line 167
    .restart local v16    # "newx":D
    move-object/from16 v21, v6

    const/16 v22, 0x3

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v18, v21

    .line 168
    .restart local v18    # "newy":D
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-object/from16 v27, v6

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v29, v6

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v31, v6

    const/16 v32, 0x2

    aget v31, v31, v32

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v6

    const/16 v34, 0x3

    aget v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v21 .. v34}, Lcom/sun/javafx/geom/Curve;->insertQuad(Ljava/util/Vector;[DDDDDDD)V

    .line 172
    move-wide/from16 v21, v16

    move-wide/from16 v12, v21

    .line 173
    move-wide/from16 v21, v18

    move-wide/from16 v14, v21

    .line 174
    goto/16 :goto_1

    .line 176
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_3
    move-object/from16 v21, v6

    const/16 v22, 0x4

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v16, v21

    .line 177
    .restart local v16    # "newx":D
    move-object/from16 v21, v6

    const/16 v22, 0x5

    aget v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v18, v21

    .line 178
    .restart local v18    # "newy":D
    move-object/from16 v21, v4

    move-object/from16 v22, v7

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-object/from16 v27, v6

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v29, v6

    const/16 v30, 0x1

    aget v29, v29, v30

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v31, v6

    const/16 v32, 0x2

    aget v31, v31, v32

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    move-object/from16 v33, v6

    const/16 v34, 0x3

    aget v33, v33, v34

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v35, v6

    const/16 v36, 0x4

    aget v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v37, v6

    const/16 v38, 0x5

    aget v37, v37, v38

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v21 .. v38}, Lcom/sun/javafx/geom/Curve;->insertCubic(Ljava/util/Vector;[DDDDDDDDD)V

    .line 183
    move-wide/from16 v21, v16

    move-wide/from16 v12, v21

    .line 184
    move-wide/from16 v21, v18

    move-wide/from16 v14, v21

    .line 185
    goto/16 :goto_1

    .line 187
    .end local v16    # "newx":D
    .end local v18    # "newy":D
    :pswitch_4
    move-object/from16 v21, v4

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    invoke-static/range {v21 .. v29}, Lcom/sun/javafx/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 188
    move-wide/from16 v21, v8

    move-wide/from16 v12, v21

    .line 189
    move-wide/from16 v21, v10

    move-wide/from16 v14, v21

    goto/16 :goto_1

    .line 194
    :cond_0
    move-object/from16 v21, v4

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    invoke-static/range {v21 .. v29}, Lcom/sun/javafx/geom/Curve;->insertLine(Ljava/util/Vector;DDDD)V

    .line 196
    move/from16 v21, v5

    if-nez v21, :cond_1

    .line 197
    new-instance v21, Lcom/sun/javafx/geom/AreaOp$EOWindOp;

    move-object/from16 v39, v21

    move-object/from16 v21, v39

    move-object/from16 v22, v39

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/geom/AreaOp$EOWindOp;-><init>()V

    move-object/from16 v20, v21

    .line 201
    .local v20, "operator":Lcom/sun/javafx/geom/AreaOp;
    :goto_2
    move-object/from16 v21, v20

    move-object/from16 v22, v4

    sget-object v23, Lcom/sun/javafx/geom/Area;->EmptyCurves:Ljava/util/Vector;

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/geom/AreaOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v21

    move-object/from16 v3, v21

    .end local v3    # "pi":Lcom/sun/javafx/geom/PathIterator;
    return-object v3

    .line 199
    .end local v20    # "operator":Lcom/sun/javafx/geom/AreaOp;
    .restart local v3    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_1
    new-instance v21, Lcom/sun/javafx/geom/AreaOp$NZWindOp;

    move-object/from16 v39, v21

    move-object/from16 v21, v39

    move-object/from16 v22, v39

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/geom/AreaOp$NZWindOp;-><init>()V

    move-object/from16 v20, v21

    .restart local v20    # "operator":Lcom/sun/javafx/geom/AreaOp;
    goto :goto_2

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public add(Lcom/sun/javafx/geom/Area;)V
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "rhs":Lcom/sun/javafx/geom/Area;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/AreaOp$AddOp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/AreaOp$AddOp;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/AreaOp$AddOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 233
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Area;->invalidateBounds()V

    .line 234
    return-void
.end method

.method public contains(FF)Z
    .locals 12

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/geom/Area;->getCachedBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v6

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_0

    .line 519
    const/4 v6, 0x0

    move v0, v6

    .line 527
    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    :goto_0
    return v0

    .line 521
    .restart local v0    # "this":Lcom/sun/javafx/geom/Area;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    move-object v3, v6

    .line 522
    .local v3, "enum_":Ljava/util/Enumeration;
    const/4 v6, 0x0

    move v4, v6

    .line 523
    .local v4, "crossings":I
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 524
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/geom/Curve;

    move-object v5, v6

    .line 525
    .local v5, "c":Lcom/sun/javafx/geom/Curve;
    move v6, v4

    move-object v7, v5

    move v8, v1

    float-to-double v8, v8

    move v10, v2

    float-to-double v10, v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/Curve;->crossingsFor(DD)I

    move-result v7

    add-int/2addr v6, v7

    move v4, v6

    .line 526
    goto :goto_1

    .line 527
    .end local v5    # "c":Lcom/sun/javafx/geom/Curve;
    :cond_1
    move v6, v4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public contains(FFFF)Z
    .locals 16

    .prologue
    .line 542
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Area;
    move/from16 v2, p1

    .local v2, "x":F
    move/from16 v3, p2

    .local v3, "y":F
    move/from16 v4, p3

    .local v4, "w":F
    move/from16 v5, p4

    .local v5, "h":F
    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    move v7, v5

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 543
    :cond_0
    const/4 v7, 0x0

    move v1, v7

    .line 549
    .end local v1    # "this":Lcom/sun/javafx/geom/Area;
    :goto_0
    return v1

    .line 545
    .restart local v1    # "this":Lcom/sun/javafx/geom/Area;
    :cond_1
    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/javafx/geom/Area;->getCachedBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/javafx/geom/Area;->getCachedBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    move v8, v2

    move v9, v4

    add-float/2addr v8, v9

    move v9, v3

    move v10, v5

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;->contains(FF)Z

    move-result v7

    if-nez v7, :cond_3

    .line 546
    :cond_2
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 548
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move v8, v2

    float-to-double v8, v8

    move v10, v3

    float-to-double v10, v10

    move v12, v2

    move v13, v4

    add-float/2addr v12, v13

    float-to-double v12, v12

    move v14, v3

    move v15, v5

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static/range {v7 .. v15}, Lcom/sun/javafx/geom/Crossings;->findCrossings(Ljava/util/Vector;DDDD)Lcom/sun/javafx/geom/Crossings;

    move-result-object v7

    move-object v6, v7

    .line 549
    .local v6, "c":Lcom/sun/javafx/geom/Crossings;
    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v6

    move v8, v3

    float-to-double v8, v8

    move v10, v3

    move v11, v5

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/Crossings;->covers(DD)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    move v1, v7

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/sun/javafx/geom/Point2D;)Z
    .locals 5

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Area;->contains(FF)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/Area;
    .locals 5

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    new-instance v1, Lcom/sun/javafx/geom/Area;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Area;->copy()Lcom/sun/javafx/geom/Area;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return-object v0
.end method

.method public createTransformedArea(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Area;
    .locals 7

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v3, Lcom/sun/javafx/geom/Area;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v2, v3

    .line 510
    .local v2, "a":Lcom/sun/javafx/geom/Area;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Area;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 511
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return-object v0
.end method

.method public exclusiveOr(Lcom/sun/javafx/geom/Area;)V
    .locals 7

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "rhs":Lcom/sun/javafx/geom/Area;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/AreaOp$XorOp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/AreaOp$XorOp;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/AreaOp$XorOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 330
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Area;->invalidateBounds()V

    .line 331
    return-void
.end method

.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 5

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    new-instance v1, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/geom/Area;->getCachedBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/RectBounds;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;
    .locals 7

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v2, Lcom/sun/javafx/geom/AreaIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/geom/AreaIterator;-><init>(Ljava/util/Vector;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return-object v0
.end method

.method public getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;F)Lcom/sun/javafx/geom/PathIterator;
    .locals 8

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "flatness":F
    new-instance v3, Lcom/sun/javafx/geom/FlatteningPathIterator;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/Area;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;F)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return-object v0
.end method

.method public intersect(Lcom/sun/javafx/geom/Area;)V
    .locals 7

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "rhs":Lcom/sun/javafx/geom/Area;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/AreaOp$IntOp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/AreaOp$IntOp;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/AreaOp$IntOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 297
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Area;->invalidateBounds()V

    .line 298
    return-void
.end method

.method public intersects(FFFF)Z
    .locals 16

    .prologue
    .line 556
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Area;
    move/from16 v2, p1

    .local v2, "x":F
    move/from16 v3, p2

    .local v3, "y":F
    move/from16 v4, p3

    .local v4, "w":F
    move/from16 v5, p4

    .local v5, "h":F
    move v7, v4

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    move v7, v5

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 557
    :cond_0
    const/4 v7, 0x0

    move v1, v7

    .line 563
    .end local v1    # "this":Lcom/sun/javafx/geom/Area;
    :goto_0
    return v1

    .line 559
    .restart local v1    # "this":Lcom/sun/javafx/geom/Area;
    :cond_1
    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/javafx/geom/Area;->getCachedBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/RectBounds;->intersects(FFFF)Z

    move-result v7

    if-nez v7, :cond_2

    .line 560
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 562
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move v8, v2

    float-to-double v8, v8

    move v10, v3

    float-to-double v10, v10

    move v12, v2

    move v13, v4

    add-float/2addr v12, v13

    float-to-double v12, v12

    move v14, v3

    move v15, v5

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static/range {v7 .. v15}, Lcom/sun/javafx/geom/Crossings;->findCrossings(Ljava/util/Vector;DDDD)Lcom/sun/javafx/geom/Crossings;

    move-result-object v7

    move-object v6, v7

    .line 563
    .local v6, "c":Lcom/sun/javafx/geom/Crossings;
    move-object v7, v6

    if-eqz v7, :cond_3

    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/javafx/geom/Crossings;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_1
    move v1, v7

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Area;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEquivalent(Lcom/sun/javafx/geom/Area;)Z
    .locals 7

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/Area;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 471
    const/4 v3, 0x1

    move v0, v3

    .line 477
    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    :goto_0
    return v0

    .line 473
    .restart local v0    # "this":Lcom/sun/javafx/geom/Area;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 474
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 476
    :cond_1
    new-instance v3, Lcom/sun/javafx/geom/AreaOp$XorOp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/AreaOp$XorOp;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/AreaOp$XorOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    move-object v2, v3

    .line 477
    .local v2, "c":Ljava/util/Vector;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public isPolygonal()Z
    .locals 4

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move-object v1, v2

    .line 360
    .local v1, "enum_":Ljava/util/Enumeration;
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 362
    const/4 v2, 0x0

    move v0, v2

    .line 365
    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Area;
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public isRectangular()Z
    .locals 8

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v1, v4

    .line 376
    .local v1, "size":I
    move v4, v1

    if-nez v4, :cond_0

    .line 377
    const/4 v4, 0x1

    move v0, v4

    .line 394
    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    :goto_0
    return v0

    .line 379
    .restart local v0    # "this":Lcom/sun/javafx/geom/Area;
    :cond_0
    move v4, v1

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    .line 380
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 382
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/Curve;

    move-object v2, v4

    .line 383
    .local v2, "c1":Lcom/sun/javafx/geom/Curve;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/Curve;

    move-object v3, v4

    .line 384
    .local v3, "c2":Lcom/sun/javafx/geom/Curve;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 385
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 387
    :cond_3
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getXTop()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Curve;->getXBot()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4

    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getXTop()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Curve;->getXBot()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    .line 388
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 390
    :cond_5
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_7

    .line 392
    :cond_6
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 394
    :cond_7
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public isSingular()Z
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 409
    const/4 v2, 0x1

    move v0, v2

    .line 418
    .end local v0    # "this":Lcom/sun/javafx/geom/Area;
    .local v1, "enum_":Ljava/util/Enumeration;
    :goto_0
    return v0

    .line 411
    .end local v1    # "enum_":Ljava/util/Enumeration;
    .restart local v0    # "this":Lcom/sun/javafx/geom/Area;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move-object v1, v2

    .line 412
    .restart local v1    # "enum_":Ljava/util/Enumeration;
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 413
    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/geom/Curve;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v2

    if-nez v2, :cond_1

    .line 415
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 418
    :cond_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, v0

    new-instance v2, Ljava/util/Vector;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 339
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Area;->invalidateBounds()V

    .line 340
    return-void
.end method

.method public subtract(Lcom/sun/javafx/geom/Area;)V
    .locals 7

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "rhs":Lcom/sun/javafx/geom/Area;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/AreaOp$SubOp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/geom/AreaOp$SubOp;-><init>()V

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/AreaOp$SubOp;->calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 265
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Area;->invalidateBounds()V

    .line 266
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 6

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Area;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 489
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "transform must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Area;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/geom/Area;->pathToCurves(Lcom/sun/javafx/geom/PathIterator;)Ljava/util/Vector;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/geom/Area;->curves:Ljava/util/Vector;

    .line 494
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/Area;->invalidateBounds()V

    .line 495
    return-void
.end method
