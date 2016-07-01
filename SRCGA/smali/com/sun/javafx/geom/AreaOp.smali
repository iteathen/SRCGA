.class public abstract Lcom/sun/javafx/geom/AreaOp;
.super Ljava/lang/Object;
.source "AreaOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/AreaOp$EOWindOp;,
        Lcom/sun/javafx/geom/AreaOp$NZWindOp;,
        Lcom/sun/javafx/geom/AreaOp$XorOp;,
        Lcom/sun/javafx/geom/AreaOp$IntOp;,
        Lcom/sun/javafx/geom/AreaOp$SubOp;,
        Lcom/sun/javafx/geom/AreaOp$AddOp;,
        Lcom/sun/javafx/geom/AreaOp$CAGOp;
    }
.end annotation


# static fields
.field public static final CTAG_LEFT:I = 0x0

.field public static final CTAG_RIGHT:I = 0x1

.field public static final ETAG_ENTER:I = 0x1

.field public static final ETAG_EXIT:I = -0x1

.field public static final ETAG_IGNORE:I = 0x0

.field private static final EmptyChainList:[Lcom/sun/javafx/geom/ChainEnd;

.field private static final EmptyLinkList:[Lcom/sun/javafx/geom/CurveLink;

.field public static final RSTAG_INSIDE:I = 0x1

.field public static final RSTAG_OUTSIDE:I = -0x1

.field private static YXTopComparator:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/sun/javafx/geom/AreaOp$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/geom/AreaOp;->YXTopComparator:Ljava/util/Comparator;

    .line 435
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/javafx/geom/CurveLink;

    sput-object v0, Lcom/sun/javafx/geom/AreaOp;->EmptyLinkList:[Lcom/sun/javafx/geom/CurveLink;

    .line 436
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/javafx/geom/ChainEnd;

    sput-object v0, Lcom/sun/javafx/geom/AreaOp;->EmptyChainList:[Lcom/sun/javafx/geom/ChainEnd;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/geom/AreaOp$1;)V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/geom/AreaOp$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/AreaOp;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/AreaOp;->lambda$static$247(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 11

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "edges":Ljava/util/Vector;
    move-object v1, p1

    .local v1, "curves":Ljava/util/Vector;
    move v2, p2

    .local v2, "curvetag":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    move-object v3, v5

    .line 173
    .local v3, "enum_":Ljava/util/Enumeration;
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/geom/Curve;

    move-object v4, v5

    .line 175
    .local v4, "c":Lcom/sun/javafx/geom/Curve;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Curve;->getOrder()I

    move-result v5

    if-lez v5, :cond_0

    .line 176
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/geom/Edge;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    move v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/geom/Edge;-><init>(Lcom/sun/javafx/geom/Curve;I)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 178
    :cond_0
    goto :goto_0

    .line 179
    .end local v4    # "c":Lcom/sun/javafx/geom/Curve;
    :cond_1
    return-void
.end method

.method public static finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 12

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "subcurves":Ljava/util/Vector;
    move-object v1, p1

    .local v1, "chains":Ljava/util/Vector;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    move v2, v8

    .line 416
    .local v2, "numchains":I
    move v8, v2

    if-nez v8, :cond_0

    .line 417
    .line 433
    :goto_0
    return-void

    .line 419
    :cond_0
    move v8, v2

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 420
    new-instance v8, Ljava/lang/InternalError;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Odd number of chains!"

    invoke-direct {v9, v10}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 422
    :cond_1
    move v8, v2

    new-array v8, v8, [Lcom/sun/javafx/geom/ChainEnd;

    move-object v3, v8

    .line 423
    .local v3, "endlist":[Lcom/sun/javafx/geom/ChainEnd;
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 424
    const/4 v8, 0x1

    move v4, v8

    .local v4, "i":I
    :goto_1
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 425
    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    move-object v5, v8

    .line 426
    .local v5, "open":Lcom/sun/javafx/geom/ChainEnd;
    move-object v8, v3

    move v9, v4

    aget-object v8, v8, v9

    move-object v6, v8

    .line 427
    .local v6, "close":Lcom/sun/javafx/geom/ChainEnd;
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/ChainEnd;->linkTo(Lcom/sun/javafx/geom/ChainEnd;)Lcom/sun/javafx/geom/CurveLink;

    move-result-object v8

    move-object v7, v8

    .line 428
    .local v7, "subcurve":Lcom/sun/javafx/geom/CurveLink;
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 429
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 424
    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 432
    .end local v5    # "open":Lcom/sun/javafx/geom/ChainEnd;
    .end local v6    # "close":Lcom/sun/javafx/geom/ChainEnd;
    .end local v7    # "subcurve":Lcom/sun/javafx/geom/CurveLink;
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 433
    goto :goto_0
.end method

.method private static synthetic lambda$static$247(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 16

    .prologue
    .line 182
    move-object/from16 v0, p0

    .local v0, "o1":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "o2":Ljava/lang/Object;
    move-object v8, v0

    check-cast v8, Lcom/sun/javafx/geom/Edge;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v8

    move-object v2, v8

    .line 183
    .local v2, "c1":Lcom/sun/javafx/geom/Curve;
    move-object v8, v1

    check-cast v8, Lcom/sun/javafx/geom/Edge;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v8

    move-object v3, v8

    .line 185
    .local v3, "c2":Lcom/sun/javafx/geom/Curve;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v8

    move-wide v14, v8

    move-wide v8, v14

    move-wide v10, v14

    move-wide v4, v10

    .local v4, "v1":D
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v10

    move-wide v14, v10

    move-wide v10, v14

    move-wide v12, v14

    move-wide v6, v12

    .local v6, "v2":D
    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 186
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Curve;->getXTop()D

    move-result-wide v8

    move-wide v14, v8

    move-wide v8, v14

    move-wide v10, v14

    move-wide v4, v10

    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Curve;->getXTop()D

    move-result-wide v10

    move-wide v14, v10

    move-wide v10, v14

    move-wide v12, v14

    move-wide v6, v12

    cmpl-double v8, v8, v10

    if-nez v8, :cond_0

    .line 187
    const/4 v8, 0x0

    move v0, v8

    .line 193
    .end local v0    # "o1":Ljava/lang/Object;
    :goto_0
    return v0

    .line 190
    .restart local v0    # "o1":Ljava/lang/Object;
    :cond_0
    move-wide v8, v4

    move-wide v10, v6

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 191
    const/4 v8, -0x1

    move v0, v8

    goto :goto_0

    .line 193
    :cond_1
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0
.end method

.method public static obstructs(DDI)Z
    .locals 10

    .prologue
    .line 557
    move-wide v1, p0

    .local v1, "v1":D
    move-wide v3, p2

    .local v3, "v2":D
    move v5, p4

    .local v5, "phase":I
    move v6, v5

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    move-wide v6, v1

    move-wide v8, v3

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    .end local v1    # "v1":D
    return v1

    .restart local v1    # "v1":D
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move-wide v6, v1

    move-wide v8, v3

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private pruneEdges(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 40

    .prologue
    .line 197
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/AreaOp;
    move-object/from16 v4, p1

    .local v4, "edges":Ljava/util/Vector;
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v30

    move/from16 v5, v30

    .line 198
    .local v5, "numedges":I
    move/from16 v30, v5

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 199
    move-object/from16 v30, v4

    move-object/from16 v3, v30

    .line 411
    .end local v3    # "this":Lcom/sun/javafx/geom/AreaOp;
    :goto_0
    return-object v3

    .line 201
    .restart local v3    # "this":Lcom/sun/javafx/geom/AreaOp;
    :cond_0
    move-object/from16 v30, v4

    move/from16 v31, v5

    move/from16 v0, v31

    new-array v0, v0, [Lcom/sun/javafx/geom/Edge;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Lcom/sun/javafx/geom/Edge;

    check-cast v30, [Lcom/sun/javafx/geom/Edge;

    move-object/from16 v6, v30

    .line 202
    .local v6, "edgelist":[Lcom/sun/javafx/geom/Edge;
    move-object/from16 v30, v6

    sget-object v31, Lcom/sun/javafx/geom/AreaOp;->YXTopComparator:Ljava/util/Comparator;

    invoke-static/range {v30 .. v31}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 210
    const/16 v30, 0x0

    move/from16 v8, v30

    .line 211
    .local v8, "left":I
    const/16 v30, 0x0

    move/from16 v9, v30

    .line 212
    .local v9, "right":I
    const/16 v30, 0x0

    move/from16 v10, v30

    .line 213
    .local v10, "cur":I
    const/16 v30, 0x0

    move/from16 v11, v30

    .line 214
    .local v11, "next":I
    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [D

    move-object/from16 v30, v0

    move-object/from16 v12, v30

    .line 215
    .local v12, "yrange":[D
    new-instance v30, Ljava/util/Vector;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    move-object/from16 v13, v30

    .line 216
    .local v13, "subcurves":Ljava/util/Vector;
    new-instance v30, Ljava/util/Vector;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    move-object/from16 v14, v30

    .line 217
    .local v14, "chains":Ljava/util/Vector;
    new-instance v30, Ljava/util/Vector;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    move-object/from16 v15, v30

    .line 219
    .local v15, "links":Ljava/util/Vector;
    :goto_1
    move/from16 v30, v8

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 220
    move-object/from16 v30, v12

    const/16 v31, 0x0

    aget-wide v30, v30, v31

    move-wide/from16 v16, v30

    .line 222
    .local v16, "y":D
    move/from16 v30, v9

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v39, v30

    move/from16 v30, v39

    move/from16 v31, v39

    move/from16 v11, v31

    move/from16 v10, v30

    :goto_2
    move/from16 v30, v10

    move/from16 v31, v8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 223
    move-object/from16 v30, v6

    move/from16 v31, v10

    aget-object v30, v30, v31

    move-object/from16 v7, v30

    .line 224
    .local v7, "e":Lcom/sun/javafx/geom/Edge;
    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v30

    move-wide/from16 v32, v16

    cmpl-double v30, v30, v32

    if-lez v30, :cond_2

    .line 225
    move/from16 v30, v11

    move/from16 v31, v10

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1

    .line 226
    move-object/from16 v30, v6

    move/from16 v31, v11

    move-object/from16 v32, v7

    aput-object v32, v30, v31

    .line 228
    :cond_1
    add-int/lit8 v11, v11, -0x1

    .line 222
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 231
    .end local v7    # "e":Lcom/sun/javafx/geom/Edge;
    :cond_3
    move/from16 v30, v11

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v8, v30

    .line 233
    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_8

    .line 234
    move/from16 v30, v9

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_6

    .line 235
    .line 396
    .end local v16    # "y":D
    :cond_4
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/geom/AreaOp;->finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 397
    new-instance v30, Ljava/util/Vector;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/util/Vector;-><init>()V

    move-object/from16 v16, v30

    .line 398
    .local v16, "ret":Ljava/util/Vector;
    move-object/from16 v30, v13

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v30

    move-object/from16 v17, v30

    .line 399
    .local v17, "enum_":Ljava/util/Enumeration;
    :goto_3
    move-object/from16 v30, v17

    invoke-interface/range {v30 .. v30}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 400
    move-object/from16 v30, v17

    invoke-interface/range {v30 .. v30}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/sun/javafx/geom/CurveLink;

    move-object/from16 v18, v30

    .line 401
    .local v18, "link":Lcom/sun/javafx/geom/CurveLink;
    move-object/from16 v30, v16

    move-object/from16 v31, v18

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/CurveLink;->getMoveto()Lcom/sun/javafx/geom/Curve;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v30

    .line 402
    move-object/from16 v30, v18

    move-object/from16 v19, v30

    .line 403
    .local v19, "nextlink":Lcom/sun/javafx/geom/CurveLink;
    :cond_5
    :goto_4
    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/CurveLink;->getNext()Lcom/sun/javafx/geom/CurveLink;

    move-result-object v30

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    move-object/from16 v19, v31

    if-eqz v30, :cond_1e

    .line 404
    move-object/from16 v30, v18

    move-object/from16 v31, v19

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/geom/CurveLink;->absorb(Lcom/sun/javafx/geom/CurveLink;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 405
    move-object/from16 v30, v16

    move-object/from16 v31, v18

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/CurveLink;->getSubCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v30

    .line 406
    move-object/from16 v30, v19

    move-object/from16 v18, v30

    goto :goto_4

    .line 237
    .end local v17    # "enum_":Ljava/util/Enumeration;
    .end local v18    # "link":Lcom/sun/javafx/geom/CurveLink;
    .end local v19    # "nextlink":Lcom/sun/javafx/geom/CurveLink;
    .local v16, "y":D
    :cond_6
    move-object/from16 v30, v6

    move/from16 v31, v9

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v30

    move-wide/from16 v16, v30

    .line 238
    move-wide/from16 v30, v16

    move-object/from16 v32, v12

    const/16 v33, 0x0

    aget-wide v32, v32, v33

    cmpl-double v30, v30, v32

    if-lez v30, :cond_7

    .line 239
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/geom/AreaOp;->finalizeSubCurves(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 241
    :cond_7
    move-object/from16 v30, v12

    const/16 v31, 0x0

    move-wide/from16 v32, v16

    aput-wide v32, v30, v31

    .line 244
    :cond_8
    :goto_5
    move/from16 v30, v9

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 245
    move-object/from16 v30, v6

    move/from16 v31, v9

    aget-object v30, v30, v31

    move-object/from16 v7, v30

    .line 246
    .restart local v7    # "e":Lcom/sun/javafx/geom/Edge;
    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v30

    move-wide/from16 v32, v16

    cmpl-double v30, v30, v32

    if-lez v30, :cond_b

    .line 247
    .line 254
    .end local v7    # "e":Lcom/sun/javafx/geom/Edge;
    :cond_9
    move-object/from16 v30, v12

    const/16 v31, 0x1

    move-object/from16 v32, v6

    move/from16 v33, v8

    aget-object v32, v32, v33

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v32

    aput-wide v32, v30, v31

    .line 255
    move/from16 v30, v9

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 256
    move-object/from16 v30, v6

    move/from16 v31, v9

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v30

    move-wide/from16 v16, v30

    .line 257
    move-object/from16 v30, v12

    const/16 v31, 0x1

    aget-wide v30, v30, v31

    move-wide/from16 v32, v16

    cmpl-double v30, v30, v32

    if-lez v30, :cond_a

    .line 258
    move-object/from16 v30, v12

    const/16 v31, 0x1

    move-wide/from16 v32, v16

    aput-wide v32, v30, v31

    .line 270
    :cond_a
    const/16 v30, 0x1

    move/from16 v18, v30

    .line 271
    .local v18, "nexteq":I
    move/from16 v30, v8

    move/from16 v10, v30

    :goto_6
    move/from16 v30, v10

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 272
    move-object/from16 v30, v6

    move/from16 v31, v10

    aget-object v30, v30, v31

    move-object/from16 v7, v30

    .line 273
    .restart local v7    # "e":Lcom/sun/javafx/geom/Edge;
    move-object/from16 v30, v7

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/geom/Edge;->setEquivalence(I)V

    .line 274
    move/from16 v30, v10

    move/from16 v11, v30

    :goto_7
    move/from16 v30, v11

    move/from16 v31, v8

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_e

    .line 275
    move-object/from16 v30, v6

    move/from16 v31, v11

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    aget-object v30, v30, v31

    move-object/from16 v19, v30

    .line 276
    .local v19, "prevedge":Lcom/sun/javafx/geom/Edge;
    move-object/from16 v30, v7

    move-object/from16 v31, v19

    move-object/from16 v32, v12

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/geom/Edge;->compareTo(Lcom/sun/javafx/geom/Edge;[D)I

    move-result v30

    move/from16 v20, v30

    .line 277
    .local v20, "ordering":I
    move-object/from16 v30, v12

    const/16 v31, 0x1

    aget-wide v30, v30, v31

    move-object/from16 v32, v12

    const/16 v33, 0x0

    aget-wide v32, v32, v33

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_c

    .line 278
    new-instance v30, Ljava/lang/InternalError;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "backstepping to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v33, v12

    const/16 v34, 0x1

    aget-wide v33, v33, v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " from "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v33, v12

    const/16 v34, 0x0

    aget-wide v33, v33, v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v30

    .line 249
    .end local v18    # "nexteq":I
    .end local v19    # "prevedge":Lcom/sun/javafx/geom/Edge;
    .end local v20    # "ordering":I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 281
    .restart local v18    # "nexteq":I
    .restart local v19    # "prevedge":Lcom/sun/javafx/geom/Edge;
    .restart local v20    # "ordering":I
    :cond_c
    move/from16 v30, v20

    if-ltz v30, :cond_f

    .line 282
    move/from16 v30, v20

    if-nez v30, :cond_e

    .line 287
    move-object/from16 v30, v19

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getEquivalence()I

    move-result v30

    move/from16 v21, v30

    .line 288
    .local v21, "eq":I
    move/from16 v30, v21

    if-nez v30, :cond_d

    .line 289
    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v21, v30

    .line 290
    move-object/from16 v30, v19

    move/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/geom/Edge;->setEquivalence(I)V

    .line 292
    :cond_d
    move-object/from16 v30, v7

    move/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/geom/Edge;->setEquivalence(I)V

    .line 293
    .line 298
    .end local v19    # "prevedge":Lcom/sun/javafx/geom/Edge;
    .end local v20    # "ordering":I
    .end local v21    # "eq":I
    :cond_e
    move-object/from16 v30, v6

    move/from16 v31, v11

    move-object/from16 v32, v7

    aput-object v32, v30, v31

    .line 271
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 296
    .restart local v19    # "prevedge":Lcom/sun/javafx/geom/Edge;
    .restart local v20    # "ordering":I
    :cond_f
    move-object/from16 v30, v6

    move/from16 v31, v11

    move-object/from16 v32, v19

    aput-object v32, v30, v31

    .line 274
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_7

    .line 312
    .end local v7    # "e":Lcom/sun/javafx/geom/Edge;
    .end local v19    # "prevedge":Lcom/sun/javafx/geom/Edge;
    .end local v20    # "ordering":I
    :cond_10
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/AreaOp;->newRow()V

    .line 313
    move-object/from16 v30, v12

    const/16 v31, 0x0

    aget-wide v30, v30, v31

    move-wide/from16 v19, v30

    .line 314
    .local v19, "ystart":D
    move-object/from16 v30, v12

    const/16 v31, 0x1

    aget-wide v30, v30, v31

    move-wide/from16 v21, v30

    .line 315
    .local v21, "yend":D
    move/from16 v30, v8

    move/from16 v10, v30

    :goto_8
    move/from16 v30, v10

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1a

    .line 316
    move-object/from16 v30, v6

    move/from16 v31, v10

    aget-object v30, v30, v31

    move-object/from16 v7, v30

    .line 318
    .restart local v7    # "e":Lcom/sun/javafx/geom/Edge;
    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getEquivalence()I

    move-result v30

    move/from16 v24, v30

    .line 319
    .local v24, "eq":I
    move/from16 v30, v24

    if-eqz v30, :cond_19

    .line 325
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/AreaOp;->getState()I

    move-result v30

    move/from16 v25, v30

    .line 326
    .local v25, "origstate":I
    move/from16 v30, v25

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    const/16 v30, -0x1

    :goto_9
    move/from16 v23, v30

    .line 329
    .local v23, "etag":I
    const/16 v30, 0x0

    move-object/from16 v26, v30

    .line 330
    .local v26, "activematch":Lcom/sun/javafx/geom/Edge;
    move-object/from16 v30, v7

    move-object/from16 v27, v30

    .line 331
    .local v27, "longestmatch":Lcom/sun/javafx/geom/Edge;
    move-wide/from16 v30, v21

    move-wide/from16 v28, v30

    .line 335
    .local v28, "furthesty":D
    :cond_11
    move-object/from16 v30, v3

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/geom/AreaOp;->classify(Lcom/sun/javafx/geom/Edge;)I

    move-result v30

    .line 336
    move-object/from16 v30, v26

    if-nez v30, :cond_12

    move-object/from16 v30, v7

    move-wide/from16 v31, v19

    move/from16 v33, v23

    .line 337
    invoke-virtual/range {v30 .. v33}, Lcom/sun/javafx/geom/Edge;->isActiveFor(DI)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 339
    move-object/from16 v30, v7

    move-object/from16 v26, v30

    .line 341
    :cond_12
    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Curve;->getYBot()D

    move-result-wide v30

    move-wide/from16 v16, v30

    .line 342
    move-wide/from16 v30, v16

    move-wide/from16 v32, v28

    cmpl-double v30, v30, v32

    if-lez v30, :cond_13

    .line 343
    move-object/from16 v30, v7

    move-object/from16 v27, v30

    .line 344
    move-wide/from16 v30, v16

    move-wide/from16 v28, v30

    .line 346
    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v30, v10

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_14

    move-object/from16 v30, v6

    move/from16 v31, v10

    aget-object v30, v30, v31

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    move-object/from16 v7, v31

    .line 347
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getEquivalence()I

    move-result v30

    move/from16 v31, v24

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_11

    .line 348
    :cond_14
    add-int/lit8 v10, v10, -0x1

    .line 349
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/AreaOp;->getState()I

    move-result v30

    move/from16 v31, v25

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 350
    const/16 v30, 0x0

    move/from16 v23, v30

    .line 354
    .line 357
    .end local v25    # "origstate":I
    .end local v26    # "activematch":Lcom/sun/javafx/geom/Edge;
    .end local v27    # "longestmatch":Lcom/sun/javafx/geom/Edge;
    .end local v28    # "furthesty":D
    :goto_a
    move/from16 v30, v23

    if-eqz v30, :cond_15

    .line 358
    move-object/from16 v30, v7

    move-wide/from16 v31, v21

    move/from16 v33, v23

    invoke-virtual/range {v30 .. v33}, Lcom/sun/javafx/geom/Edge;->record(DI)V

    .line 359
    move-object/from16 v30, v15

    new-instance v31, Lcom/sun/javafx/geom/CurveLink;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v33

    move-wide/from16 v34, v19

    move-wide/from16 v36, v21

    move/from16 v38, v23

    invoke-direct/range {v32 .. v38}, Lcom/sun/javafx/geom/CurveLink;-><init>(Lcom/sun/javafx/geom/Curve;DDI)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v30

    .line 315
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 326
    .end local v23    # "etag":I
    .restart local v25    # "origstate":I
    :cond_16
    const/16 v30, 0x1

    goto/16 :goto_9

    .line 352
    .restart local v23    # "etag":I
    .restart local v26    # "activematch":Lcom/sun/javafx/geom/Edge;
    .restart local v27    # "longestmatch":Lcom/sun/javafx/geom/Edge;
    .restart local v28    # "furthesty":D
    :cond_17
    move-object/from16 v30, v26

    if-eqz v30, :cond_18

    move-object/from16 v30, v26

    :goto_b
    move-object/from16 v7, v30

    goto :goto_a

    :cond_18
    move-object/from16 v30, v27

    goto :goto_b

    .line 355
    .end local v23    # "etag":I
    .end local v25    # "origstate":I
    .end local v26    # "activematch":Lcom/sun/javafx/geom/Edge;
    .end local v27    # "longestmatch":Lcom/sun/javafx/geom/Edge;
    .end local v28    # "furthesty":D
    :cond_19
    move-object/from16 v30, v3

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/geom/AreaOp;->classify(Lcom/sun/javafx/geom/Edge;)I

    move-result v30

    move/from16 v23, v30

    .restart local v23    # "etag":I
    goto :goto_a

    .line 363
    .end local v7    # "e":Lcom/sun/javafx/geom/Edge;
    .end local v23    # "etag":I
    .end local v24    # "eq":I
    :cond_1a
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/AreaOp;->getState()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1d

    .line 364
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v31, "Still inside at end of active edge list!"

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "num curves = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v32, v9

    move/from16 v33, v8

    sub-int v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "num links = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v32, v15

    invoke-virtual/range {v32 .. v32}, Ljava/util/Vector;->size()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "y top = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v32, v12

    const/16 v33, 0x0

    aget-wide v32, v32, v33

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    move/from16 v30, v9

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c

    .line 369
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "y top of next curve = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v32, v6

    move/from16 v33, v9

    aget-object v32, v32, v33

    .line 370
    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/Edge;->getCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/Curve;->getYTop()D

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 369
    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :goto_c
    move/from16 v30, v8

    move/from16 v10, v30

    :goto_d
    move/from16 v30, v10

    move/from16 v31, v9

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1d

    .line 375
    move-object/from16 v30, v6

    move/from16 v31, v10

    aget-object v30, v30, v31

    move-object/from16 v7, v30

    .line 376
    .restart local v7    # "e":Lcom/sun/javafx/geom/Edge;
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v31, v7

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 377
    move-object/from16 v30, v7

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/Edge;->getEquivalence()I

    move-result v30

    move/from16 v23, v30

    .line 378
    .local v23, "eq":I
    move/from16 v30, v23

    if-eqz v30, :cond_1b

    .line 379
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v39, v31

    move-object/from16 v31, v39

    move-object/from16 v32, v39

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "  was equal to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move/from16 v32, v23

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 372
    .end local v7    # "e":Lcom/sun/javafx/geom/Edge;
    .end local v23    # "eq":I
    :cond_1c
    sget-object v30, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v31, "no more curves"

    invoke-virtual/range {v30 .. v31}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 390
    :cond_1d
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    invoke-static/range {v30 .. v32}, Lcom/sun/javafx/geom/AreaOp;->resolveLinks(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 391
    move-object/from16 v30, v15

    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->clear()V

    .line 394
    move-object/from16 v30, v12

    const/16 v31, 0x0

    move-wide/from16 v32, v21

    aput-wide v32, v30, v31

    .line 395
    goto/16 :goto_1

    .line 409
    .end local v21    # "yend":D
    .local v16, "ret":Ljava/util/Vector;
    .restart local v17    # "enum_":Ljava/util/Enumeration;
    .local v18, "link":Lcom/sun/javafx/geom/CurveLink;
    .local v19, "nextlink":Lcom/sun/javafx/geom/CurveLink;
    :cond_1e
    move-object/from16 v30, v16

    move-object/from16 v31, v18

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/CurveLink;->getSubCurve()Lcom/sun/javafx/geom/Curve;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v30

    .line 410
    goto/16 :goto_3

    .line 411
    .end local v18    # "link":Lcom/sun/javafx/geom/CurveLink;
    .end local v19    # "nextlink":Lcom/sun/javafx/geom/CurveLink;
    :cond_1f
    move-object/from16 v30, v16

    move-object/from16 v3, v30

    goto/16 :goto_0
.end method

.method public static resolveLinks(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 26

    .prologue
    .line 442
    move-object/from16 v1, p0

    .local v1, "subcurves":Ljava/util/Vector;
    move-object/from16 v2, p1

    .local v2, "chains":Ljava/util/Vector;
    move-object/from16 v3, p2

    .local v3, "links":Ljava/util/Vector;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v4, v20

    .line 444
    .local v4, "numlinks":I
    move/from16 v20, v4

    if-nez v20, :cond_6

    .line 445
    sget-object v20, Lcom/sun/javafx/geom/AreaOp;->EmptyLinkList:[Lcom/sun/javafx/geom/CurveLink;

    move-object/from16 v5, v20

    .line 453
    .local v5, "linklist":[Lcom/sun/javafx/geom/CurveLink;
    :goto_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v6, v20

    .line 455
    .local v6, "numchains":I
    move/from16 v20, v6

    if-nez v20, :cond_8

    .line 456
    sget-object v20, Lcom/sun/javafx/geom/AreaOp;->EmptyChainList:[Lcom/sun/javafx/geom/ChainEnd;

    move-object/from16 v7, v20

    .line 464
    .local v7, "endlist":[Lcom/sun/javafx/geom/ChainEnd;
    :goto_1
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 465
    .local v8, "curchain":I
    const/16 v20, 0x0

    move/from16 v9, v20

    .line 466
    .local v9, "curlink":I
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->clear()V

    .line 467
    move-object/from16 v20, v7

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v10, v20

    .line 468
    .local v10, "chain":Lcom/sun/javafx/geom/ChainEnd;
    move-object/from16 v20, v7

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v11, v20

    .line 469
    .local v11, "nextchain":Lcom/sun/javafx/geom/ChainEnd;
    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v12, v20

    .line 470
    .local v12, "link":Lcom/sun/javafx/geom/CurveLink;
    move-object/from16 v20, v5

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v13, v20

    .line 471
    .local v13, "nextlink":Lcom/sun/javafx/geom/CurveLink;
    :goto_2
    move-object/from16 v20, v10

    if-nez v20, :cond_0

    move-object/from16 v20, v12

    if-eqz v20, :cond_10

    .line 476
    :cond_0
    move-object/from16 v20, v12

    if-nez v20, :cond_a

    const/16 v20, 0x1

    :goto_3
    move/from16 v14, v20

    .line 477
    .local v14, "connectchains":Z
    move-object/from16 v20, v10

    if-nez v20, :cond_b

    const/16 v20, 0x1

    :goto_4
    move/from16 v15, v20

    .line 479
    .local v15, "connectlinks":Z
    move/from16 v20, v14

    if-nez v20, :cond_1

    move/from16 v20, v15

    if-nez v20, :cond_1

    .line 485
    move/from16 v20, v8

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_c

    move-object/from16 v20, v10

    .line 486
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/ChainEnd;->getX()D

    move-result-wide v20

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/ChainEnd;->getX()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-nez v20, :cond_c

    const/16 v20, 0x1

    :goto_5
    move/from16 v14, v20

    .line 487
    move/from16 v20, v9

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_d

    move-object/from16 v20, v12

    .line 488
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/CurveLink;->getX()D

    move-result-wide v20

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/CurveLink;->getX()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-nez v20, :cond_d

    const/16 v20, 0x1

    :goto_6
    move/from16 v15, v20

    .line 490
    move/from16 v20, v14

    if-nez v20, :cond_1

    move/from16 v20, v15

    if-nez v20, :cond_1

    .line 496
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/ChainEnd;->getX()D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 497
    .local v16, "cx":D
    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/CurveLink;->getX()D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 498
    .local v18, "lx":D
    move-object/from16 v20, v11

    if-eqz v20, :cond_e

    move-wide/from16 v20, v16

    move-wide/from16 v22, v18

    cmpg-double v20, v20, v22

    if-gez v20, :cond_e

    move-object/from16 v20, v11

    .line 500
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/ChainEnd;->getX()D

    move-result-wide v20

    move-wide/from16 v22, v18

    move/from16 v24, v8

    invoke-static/range {v20 .. v24}, Lcom/sun/javafx/geom/AreaOp;->obstructs(DDI)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x1

    :goto_7
    move/from16 v14, v20

    .line 501
    move-object/from16 v20, v13

    if-eqz v20, :cond_f

    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    cmpg-double v20, v20, v22

    if-gez v20, :cond_f

    move-object/from16 v20, v13

    .line 503
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/CurveLink;->getX()D

    move-result-wide v20

    move-wide/from16 v22, v16

    move/from16 v24, v9

    invoke-static/range {v20 .. v24}, Lcom/sun/javafx/geom/AreaOp;->obstructs(DDI)Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    :goto_8
    move/from16 v15, v20

    .line 506
    .end local v16    # "cx":D
    .end local v18    # "lx":D
    :cond_1
    move/from16 v20, v14

    if-eqz v20, :cond_3

    .line 507
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/ChainEnd;->linkTo(Lcom/sun/javafx/geom/ChainEnd;)Lcom/sun/javafx/geom/CurveLink;

    move-result-object v20

    move-object/from16 v16, v20

    .line 508
    .local v16, "subcurve":Lcom/sun/javafx/geom/CurveLink;
    move-object/from16 v20, v16

    if-eqz v20, :cond_2

    .line 509
    move-object/from16 v20, v1

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 511
    :cond_2
    add-int/lit8 v8, v8, 0x2

    .line 512
    move-object/from16 v20, v7

    move/from16 v21, v8

    aget-object v20, v20, v21

    move-object/from16 v10, v20

    .line 513
    move-object/from16 v20, v7

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v11, v20

    .line 515
    .end local v16    # "subcurve":Lcom/sun/javafx/geom/CurveLink;
    :cond_3
    move/from16 v20, v15

    if-eqz v20, :cond_4

    .line 516
    new-instance v20, Lcom/sun/javafx/geom/ChainEnd;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v12

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/geom/ChainEnd;-><init>(Lcom/sun/javafx/geom/CurveLink;Lcom/sun/javafx/geom/ChainEnd;)V

    move-object/from16 v16, v20

    .line 517
    .local v16, "openend":Lcom/sun/javafx/geom/ChainEnd;
    new-instance v20, Lcom/sun/javafx/geom/ChainEnd;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v13

    move-object/from16 v23, v16

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/geom/ChainEnd;-><init>(Lcom/sun/javafx/geom/CurveLink;Lcom/sun/javafx/geom/ChainEnd;)V

    move-object/from16 v17, v20

    .line 518
    .local v17, "closeend":Lcom/sun/javafx/geom/ChainEnd;
    move-object/from16 v20, v16

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/ChainEnd;->setOtherEnd(Lcom/sun/javafx/geom/ChainEnd;)V

    .line 519
    move-object/from16 v20, v2

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 520
    move-object/from16 v20, v2

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 521
    add-int/lit8 v9, v9, 0x2

    .line 522
    move-object/from16 v20, v5

    move/from16 v21, v9

    aget-object v20, v20, v21

    move-object/from16 v12, v20

    .line 523
    move-object/from16 v20, v5

    move/from16 v21, v9

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v13, v20

    .line 525
    .end local v16    # "openend":Lcom/sun/javafx/geom/ChainEnd;
    .end local v17    # "closeend":Lcom/sun/javafx/geom/ChainEnd;
    :cond_4
    move/from16 v20, v14

    if-nez v20, :cond_5

    move/from16 v20, v15

    if-nez v20, :cond_5

    .line 529
    move-object/from16 v20, v10

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/geom/ChainEnd;->addLink(Lcom/sun/javafx/geom/CurveLink;)V

    .line 530
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 531
    add-int/lit8 v8, v8, 0x1

    .line 532
    move-object/from16 v20, v11

    move-object/from16 v10, v20

    .line 533
    move-object/from16 v20, v7

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v11, v20

    .line 534
    add-int/lit8 v9, v9, 0x1

    .line 535
    move-object/from16 v20, v13

    move-object/from16 v12, v20

    .line 536
    move-object/from16 v20, v5

    move/from16 v21, v9

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v13, v20

    .line 538
    :cond_5
    goto/16 :goto_2

    .line 447
    .end local v5    # "linklist":[Lcom/sun/javafx/geom/CurveLink;
    .end local v6    # "numchains":I
    .end local v7    # "endlist":[Lcom/sun/javafx/geom/ChainEnd;
    .end local v8    # "curchain":I
    .end local v9    # "curlink":I
    .end local v10    # "chain":Lcom/sun/javafx/geom/ChainEnd;
    .end local v11    # "nextchain":Lcom/sun/javafx/geom/ChainEnd;
    .end local v12    # "link":Lcom/sun/javafx/geom/CurveLink;
    .end local v13    # "nextlink":Lcom/sun/javafx/geom/CurveLink;
    .end local v14    # "connectchains":Z
    .end local v15    # "connectlinks":Z
    :cond_6
    move/from16 v20, v4

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_7

    .line 448
    new-instance v20, Ljava/lang/InternalError;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string v22, "Odd number of new curves!"

    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v20

    .line 450
    :cond_7
    move/from16 v20, v4

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/sun/javafx/geom/CurveLink;

    move-object/from16 v20, v0

    move-object/from16 v5, v20

    .line 451
    .restart local v5    # "linklist":[Lcom/sun/javafx/geom/CurveLink;
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_0

    .line 458
    .restart local v6    # "numchains":I
    :cond_8
    move/from16 v20, v6

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_9

    .line 459
    new-instance v20, Ljava/lang/InternalError;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string v22, "Odd number of chains!"

    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v20

    .line 461
    :cond_9
    move/from16 v20, v6

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/sun/javafx/geom/ChainEnd;

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 462
    .restart local v7    # "endlist":[Lcom/sun/javafx/geom/ChainEnd;
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    goto/16 :goto_1

    .line 476
    .restart local v8    # "curchain":I
    .restart local v9    # "curlink":I
    .restart local v10    # "chain":Lcom/sun/javafx/geom/ChainEnd;
    .restart local v11    # "nextchain":Lcom/sun/javafx/geom/ChainEnd;
    .restart local v12    # "link":Lcom/sun/javafx/geom/CurveLink;
    .restart local v13    # "nextlink":Lcom/sun/javafx/geom/CurveLink;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 477
    .restart local v14    # "connectchains":Z
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 486
    .restart local v15    # "connectlinks":Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 488
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 500
    .local v16, "cx":D
    .restart local v18    # "lx":D
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 503
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 539
    .end local v14    # "connectchains":Z
    .end local v15    # "connectlinks":Z
    .end local v16    # "cx":D
    .end local v18    # "lx":D
    :cond_10
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v20

    const/16 v21, 0x1

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_11

    .line 540
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "Odd number of chains!"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 542
    :cond_11
    return-void
.end method


# virtual methods
.method public calculate(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 8

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/AreaOp;
    move-object v1, p1

    .local v1, "left":Ljava/util/Vector;
    move-object v2, p2

    .local v2, "right":Ljava/util/Vector;
    new-instance v4, Ljava/util/Vector;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move-object v3, v4

    .line 157
    .local v3, "edges":Ljava/util/Vector;
    move-object v4, v3

    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/geom/AreaOp;->addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V

    .line 158
    move-object v4, v3

    move-object v5, v2

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/geom/AreaOp;->addEdges(Ljava/util/Vector;Ljava/util/Vector;I)V

    .line 159
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/AreaOp;->pruneEdges(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    move-object v3, v4

    .line 168
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/AreaOp;
    return-object v0
.end method

.method public abstract classify(Lcom/sun/javafx/geom/Edge;)I
.end method

.method public abstract getState()I
.end method

.method public abstract newRow()V
.end method
