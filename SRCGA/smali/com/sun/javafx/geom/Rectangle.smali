.class public Lcom/sun/javafx/geom/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    .line 142
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    .line 193
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 178
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 179
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 180
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 181
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, p1

    .local v1, "b":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 151
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 7

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(IIII)V

    .line 165
    return-void
.end method

.method private reshape(IIII)V
    .locals 7

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 633
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 634
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 635
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 636
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 18

    .prologue
    .line 476
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v2, p1

    .local v2, "newx":I
    move/from16 v3, p2

    .local v3, "newy":I
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    or-int/2addr v10, v11

    if-gez v10, :cond_0

    .line 477
    move-object v10, v1

    move v11, v2

    iput v11, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 478
    move-object v10, v1

    move v11, v3

    iput v11, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 479
    move-object v10, v1

    move-object v11, v1

    const/4 v12, 0x0

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    iput v11, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 480
    .line 497
    :goto_0
    return-void

    .line 482
    :cond_0
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    move v4, v10

    .line 483
    .local v4, "x1":I
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v5, v10

    .line 484
    .local v5, "y1":I
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-long v10, v10

    move-wide v6, v10

    .line 485
    .local v6, "x2":J
    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-long v10, v10

    move-wide v8, v10

    .line 486
    .local v8, "y2":J
    move-wide v10, v6

    move v12, v4

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v6, v10

    .line 487
    move-wide v10, v8

    move v12, v5

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v8, v10

    .line 488
    move v10, v4

    move v11, v2

    if-le v10, v11, :cond_1

    move v10, v2

    move v4, v10

    .line 489
    :cond_1
    move v10, v5

    move v11, v3

    if-le v10, v11, :cond_2

    move v10, v3

    move v5, v10

    .line 490
    :cond_2
    move-wide v10, v6

    move v12, v2

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    move v10, v2

    int-to-long v10, v10

    move-wide v6, v10

    .line 491
    :cond_3
    move-wide v10, v8

    move v12, v3

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    move v10, v3

    int-to-long v10, v10

    move-wide v8, v10

    .line 492
    :cond_4
    move-wide v10, v6

    move v12, v4

    int-to-long v12, v12

    sub-long/2addr v10, v12

    move-wide v6, v10

    .line 493
    move-wide v10, v8

    move v12, v5

    int-to-long v12, v12

    sub-long/2addr v10, v12

    move-wide v8, v10

    .line 494
    move-wide v10, v6

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    const-wide/32 v10, 0x7fffffff

    move-wide v6, v10

    .line 495
    :cond_5
    move-wide v10, v8

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    const-wide/32 v10, 0x7fffffff

    move-wide v8, v10

    .line 496
    :cond_6
    move-object v10, v1

    move v11, v4

    move v12, v5

    move-wide v13, v6

    long-to-int v13, v13

    move-wide v14, v8

    long-to-int v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    .line 497
    goto :goto_0
.end method

.method public add(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 22

    .prologue
    .line 523
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p1

    .local v3, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v4, v16

    .line 524
    .local v4, "tx2":J
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v6, v16

    .line 525
    .local v6, "ty2":J
    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    or-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_0

    .line 526
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    .line 528
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v8, v16

    .line 529
    .local v8, "rx2":J
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v10, v16

    .line 530
    .local v10, "ry2":J
    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    or-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    .line 531
    .line 553
    :goto_0
    return-void

    .line 533
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    move/from16 v12, v16

    .line 534
    .local v12, "tx1":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move/from16 v13, v16

    .line 535
    .local v13, "ty1":I
    move-wide/from16 v16, v4

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v4, v16

    .line 536
    move-wide/from16 v16, v6

    move/from16 v18, v13

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v6, v16

    .line 537
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    move/from16 v14, v16

    .line 538
    .local v14, "rx1":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move/from16 v15, v16

    .line 539
    .local v15, "ry1":I
    move-wide/from16 v16, v8

    move/from16 v18, v14

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v8, v16

    .line 540
    move-wide/from16 v16, v10

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v10, v16

    .line 541
    move/from16 v16, v12

    move/from16 v17, v14

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    move/from16 v16, v14

    move/from16 v12, v16

    .line 542
    :cond_2
    move/from16 v16, v13

    move/from16 v17, v15

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    move/from16 v16, v15

    move/from16 v13, v16

    .line 543
    :cond_3
    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    cmp-long v16, v16, v18

    if-gez v16, :cond_4

    move-wide/from16 v16, v8

    move-wide/from16 v4, v16

    .line 544
    :cond_4
    move-wide/from16 v16, v6

    move-wide/from16 v18, v10

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    move-wide/from16 v16, v10

    move-wide/from16 v6, v16

    .line 545
    :cond_5
    move-wide/from16 v16, v4

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v4, v16

    .line 546
    move-wide/from16 v16, v6

    move/from16 v18, v13

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v6, v16

    .line 550
    move-wide/from16 v16, v4

    const-wide/32 v18, 0x7fffffff

    cmp-long v16, v16, v18

    if-lez v16, :cond_6

    const-wide/32 v16, 0x7fffffff

    move-wide/from16 v4, v16

    .line 551
    :cond_6
    move-wide/from16 v16, v6

    const-wide/32 v18, 0x7fffffff

    cmp-long v16, v16, v18

    if-lez v16, :cond_7

    const-wide/32 v16, 0x7fffffff

    move-wide/from16 v6, v16

    .line 552
    :cond_7
    move-object/from16 v16, v2

    move/from16 v17, v12

    move/from16 v18, v13

    move-wide/from16 v19, v4

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v6

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v16 .. v20}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    .line 553
    goto/16 :goto_0
.end method

.method public contains(II)Z
    .locals 9

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move v1, p1

    .local v1, "cx":I
    move v2, p2

    .local v2, "cy":I
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v3, v7

    .line 252
    .local v3, "tw":I
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v4, v7

    .line 253
    .local v4, "th":I
    move v7, v3

    move v8, v4

    or-int/2addr v7, v8

    if-gez v7, :cond_0

    .line 255
    const/4 v7, 0x0

    move v0, v7

    .line 266
    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    :goto_0
    return v0

    .line 258
    .restart local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    :cond_0
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->x:I

    move v5, v7

    .line 259
    .local v5, "tx":I
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v6, v7

    .line 260
    .local v6, "ty":I
    move v7, v1

    move v8, v5

    if-lt v7, v8, :cond_1

    move v7, v2

    move v8, v6

    if-ge v7, v8, :cond_2

    .line 261
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 263
    :cond_2
    move v7, v3

    move v8, v5

    add-int/2addr v7, v8

    move v3, v7

    .line 264
    move v7, v4

    move v8, v6

    add-int/2addr v7, v8

    move v4, v7

    .line 266
    move v7, v3

    move v8, v5

    if-lt v7, v8, :cond_3

    move v7, v3

    move v8, v1

    if-le v7, v8, :cond_5

    :cond_3
    move v7, v4

    move v8, v6

    if-lt v7, v8, :cond_4

    move v7, v4

    move v8, v2

    if-le v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public contains(IIII)Z
    .locals 11

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move v1, p1

    .local v1, "cx":I
    move v2, p2

    .local v2, "cy":I
    move v3, p3

    .local v3, "cw":I
    move v4, p4

    .local v4, "ch":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v5, v9

    .line 299
    .local v5, "tw":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v6, v9

    .line 300
    .local v6, "th":I
    move v9, v5

    move v10, v6

    or-int/2addr v9, v10

    move v10, v3

    or-int/2addr v9, v10

    move v10, v4

    or-int/2addr v9, v10

    if-gez v9, :cond_0

    .line 302
    const/4 v9, 0x0

    move v0, v9

    .line 331
    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    :goto_0
    return v0

    .line 305
    .restart local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    :cond_0
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->x:I

    move v7, v9

    .line 306
    .local v7, "tx":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v8, v9

    .line 307
    .local v8, "ty":I
    move v9, v1

    move v10, v7

    if-lt v9, v10, :cond_1

    move v9, v2

    move v10, v8

    if-ge v9, v10, :cond_2

    .line 308
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 310
    :cond_2
    move v9, v5

    move v10, v7

    add-int/2addr v9, v10

    move v5, v9

    .line 311
    move v9, v3

    move v10, v1

    add-int/2addr v9, v10

    move v3, v9

    .line 312
    move v9, v3

    move v10, v1

    if-gt v9, v10, :cond_4

    .line 317
    move v9, v5

    move v10, v7

    if-ge v9, v10, :cond_3

    move v9, v3

    move v10, v5

    if-le v9, v10, :cond_5

    :cond_3
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 322
    :cond_4
    move v9, v5

    move v10, v7

    if-lt v9, v10, :cond_5

    move v9, v3

    move v10, v5

    if-le v9, v10, :cond_5

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 324
    :cond_5
    move v9, v6

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 325
    move v9, v4

    move v10, v2

    add-int/2addr v9, v10

    move v4, v9

    .line 326
    move v9, v4

    move v10, v2

    if-gt v9, v10, :cond_7

    .line 327
    move v9, v6

    move v10, v8

    if-ge v9, v10, :cond_6

    move v9, v4

    move v10, v6

    if-le v9, v10, :cond_8

    :cond_6
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 329
    :cond_7
    move v9, v6

    move v10, v8

    if-lt v9, v10, :cond_8

    move v9, v4

    move v10, v6

    if-le v9, v10, :cond_8

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 331
    :cond_8
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method public contains(Lcom/sun/javafx/geom/Rectangle;)Z
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->contains(IIII)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/Rectangle;

    if-eqz v3, :cond_1

    .line 660
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v2, v3

    .line 661
    .local v2, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->x:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->height:I

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 666
    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    .end local v2    # "r":Lcom/sun/javafx/geom/Rectangle;
    :goto_1
    return v0

    .line 661
    .restart local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    .restart local v2    # "r":Lcom/sun/javafx/geom/Rectangle;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 666
    .end local v2    # "r":Lcom/sun/javafx/geom/Rectangle;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_1
.end method

.method public grow(II)V
    .locals 20

    .prologue
    .line 579
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v4, p1

    .local v4, "h":I
    move/from16 v5, p2

    .local v5, "v":I
    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-long v14, v14

    move-wide v6, v14

    .line 580
    .local v6, "x0":J
    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-long v14, v14

    move-wide v8, v14

    .line 581
    .local v8, "y0":J
    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-long v14, v14

    move-wide v10, v14

    .line 582
    .local v10, "x1":J
    move-object v14, v3

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-long v14, v14

    move-wide v12, v14

    .line 583
    .local v12, "y1":J
    move-wide v14, v10

    move-wide/from16 v16, v6

    add-long v14, v14, v16

    move-wide v10, v14

    .line 584
    move-wide v14, v12

    move-wide/from16 v16, v8

    add-long v14, v14, v16

    move-wide v12, v14

    .line 586
    move-wide v14, v6

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-wide v6, v14

    .line 587
    move-wide v14, v8

    move/from16 v16, v5

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-wide v8, v14

    .line 588
    move-wide v14, v10

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-wide v10, v14

    .line 589
    move-wide v14, v12

    move/from16 v16, v5

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-wide v12, v14

    .line 591
    move-wide v14, v10

    move-wide/from16 v16, v6

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    .line 596
    move-wide v14, v10

    move-wide/from16 v16, v6

    sub-long v14, v14, v16

    move-wide v10, v14

    .line 597
    move-wide v14, v10

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_0

    const-wide/32 v14, -0x80000000

    move-wide v10, v14

    .line 598
    :cond_0
    move-wide v14, v6

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    const-wide/32 v14, -0x80000000

    move-wide v6, v14

    .line 614
    :cond_1
    :goto_0
    move-wide v14, v12

    move-wide/from16 v16, v8

    cmp-long v14, v14, v16

    if-gez v14, :cond_a

    .line 616
    move-wide v14, v12

    move-wide/from16 v16, v8

    sub-long v14, v14, v16

    move-wide v12, v14

    .line 617
    move-wide v14, v12

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_2

    const-wide/32 v14, -0x80000000

    move-wide v12, v14

    .line 618
    :cond_2
    move-wide v14, v8

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_9

    const-wide/32 v14, -0x80000000

    move-wide v8, v14

    .line 628
    :cond_3
    :goto_1
    move-object v14, v3

    move-wide v15, v6

    long-to-int v15, v15

    move-wide/from16 v16, v8

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v10

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    .line 629
    return-void

    .line 599
    :cond_4
    move-wide v14, v6

    const-wide/32 v16, 0x7fffffff

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    const-wide/32 v14, 0x7fffffff

    move-wide v6, v14

    goto :goto_0

    .line 603
    :cond_5
    move-wide v14, v6

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    const-wide/32 v14, -0x80000000

    move-wide v6, v14

    .line 605
    :cond_6
    :goto_2
    move-wide v14, v10

    move-wide/from16 v16, v6

    sub-long v14, v14, v16

    move-wide v10, v14

    .line 610
    move-wide v14, v10

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_8

    const-wide/32 v14, -0x80000000

    move-wide v10, v14

    goto :goto_0

    .line 604
    :cond_7
    move-wide v14, v6

    const-wide/32 v16, 0x7fffffff

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    const-wide/32 v14, 0x7fffffff

    move-wide v6, v14

    goto :goto_2

    .line 611
    :cond_8
    move-wide v14, v10

    const-wide/32 v16, 0x7fffffff

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    const-wide/32 v14, 0x7fffffff

    move-wide v10, v14

    goto/16 :goto_0

    .line 619
    :cond_9
    move-wide v14, v8

    const-wide/32 v16, 0x7fffffff

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    const-wide/32 v14, 0x7fffffff

    move-wide v8, v14

    goto :goto_1

    .line 621
    :cond_a
    move-wide v14, v8

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_c

    const-wide/32 v14, -0x80000000

    move-wide v8, v14

    .line 623
    :cond_b
    :goto_3
    move-wide v14, v12

    move-wide/from16 v16, v8

    sub-long v14, v14, v16

    move-wide v12, v14

    .line 624
    move-wide v14, v12

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-gez v14, :cond_d

    const-wide/32 v14, -0x80000000

    move-wide v12, v14

    goto/16 :goto_1

    .line 622
    :cond_c
    move-wide v14, v8

    const-wide/32 v16, 0x7fffffff

    cmp-long v14, v14, v16

    if-lez v14, :cond_b

    const-wide/32 v14, 0x7fffffff

    move-wide v8, v14

    goto :goto_3

    .line 625
    :cond_d
    move-wide v14, v12

    const-wide/32 v16, 0x7fffffff

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    const-wide/32 v14, 0x7fffffff

    move-wide v12, v14

    goto/16 :goto_1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 672
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x25

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v2, v3

    move v1, v2

    .line 673
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2b

    mul-int/lit8 v3, v3, 0x2b

    add-int/2addr v2, v3

    move v1, v2

    .line 674
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x2f

    mul-int/lit8 v3, v3, 0x2f

    add-int/2addr v2, v3

    move v1, v2

    .line 675
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    return v0
.end method

.method public intersectWith(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 22

    .prologue
    .line 341
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p1

    .local v3, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v16, v3

    if-nez v16, :cond_0

    .line 342
    .line 364
    :goto_0
    return-void

    .line 344
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    move/from16 v4, v16

    .line 345
    .local v4, "tx1":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move/from16 v5, v16

    .line 346
    .local v5, "ty1":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    move/from16 v6, v16

    .line 347
    .local v6, "rx1":I
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 348
    .local v7, "ry1":I
    move/from16 v16, v4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v8, v16

    .local v8, "tx2":J
    move-wide/from16 v16, v8

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v8, v16

    .line 349
    move/from16 v16, v5

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v10, v16

    .local v10, "ty2":J
    move-wide/from16 v16, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v10, v16

    .line 350
    move/from16 v16, v6

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v12, v16

    .local v12, "rx2":J
    move-wide/from16 v16, v12

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v12, v16

    .line 351
    move/from16 v16, v7

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v14, v16

    .local v14, "ry2":J
    move-wide/from16 v16, v14

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 352
    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    move/from16 v16, v6

    move/from16 v4, v16

    .line 353
    :cond_1
    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    move/from16 v16, v7

    move/from16 v5, v16

    .line 354
    :cond_2
    move-wide/from16 v16, v8

    move-wide/from16 v18, v12

    cmp-long v16, v16, v18

    if-lez v16, :cond_3

    move-wide/from16 v16, v12

    move-wide/from16 v8, v16

    .line 355
    :cond_3
    move-wide/from16 v16, v10

    move-wide/from16 v18, v14

    cmp-long v16, v16, v18

    if-lez v16, :cond_4

    move-wide/from16 v16, v14

    move-wide/from16 v10, v16

    .line 356
    :cond_4
    move-wide/from16 v16, v8

    move/from16 v18, v4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v8, v16

    .line 357
    move-wide/from16 v16, v10

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v10, v16

    .line 361
    move-wide/from16 v16, v8

    const-wide/32 v18, -0x80000000

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    const-wide/32 v16, -0x80000000

    move-wide/from16 v8, v16

    .line 362
    :cond_5
    move-wide/from16 v16, v10

    const-wide/32 v18, -0x80000000

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    const-wide/32 v16, -0x80000000

    move-wide/from16 v10, v16

    .line 363
    :cond_6
    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v19, v8

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    .line 364
    goto/16 :goto_0
.end method

.method public intersection(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
    .locals 7

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/Rectangle;
    new-instance v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v2, v3

    .line 336
    .local v2, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 337
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-lez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 10

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/Rectangle;->reshape(IIII)V

    .line 228
    return-void
.end method

.method public setBounds(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 7

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, p1

    .local v1, "b":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 232
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 233
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v2, v4

    .line 234
    .local v2, "x2":I
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v3, v4

    .line 235
    .local v3, "y2":I
    move-object v4, v0

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->x:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 236
    move-object v4, v0

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 237
    return-void
.end method

.method public setBounds(Lcom/sun/javafx/geom/Rectangle;)V
    .locals 7

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    .line 207
    return-void
.end method

.method public toRectBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 9

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    new-instance v1, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->y:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->height:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Rectangle;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Rectangle;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Rectangle;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Rectangle;
    return-object v0
.end method

.method public translate(II)V
    .locals 10

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Rectangle;
    move v1, p1

    .local v1, "dx":I
    move v2, p2

    .local v2, "dy":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    move v3, v5

    .line 379
    .local v3, "oldv":I
    move v5, v3

    move v6, v1

    add-int/2addr v5, v6

    move v4, v5

    .line 380
    .local v4, "newv":I
    move v5, v1

    if-gez v5, :cond_4

    .line 382
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_1

    .line 385
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ltz v5, :cond_0

    .line 393
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v7, v4

    const/high16 v8, -0x80000000

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 399
    :cond_0
    const/high16 v5, -0x80000000

    move v4, v5

    .line 416
    :cond_1
    :goto_0
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->x:I

    .line 418
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v3, v5

    .line 419
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move v4, v5

    .line 420
    move v5, v2

    if-gez v5, :cond_6

    .line 422
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_3

    .line 424
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-ltz v5, :cond_2

    .line 425
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v7, v4

    const/high16 v8, -0x80000000

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 428
    :cond_2
    const/high16 v5, -0x80000000

    move v4, v5

    .line 441
    :cond_3
    :goto_1
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->y:I

    .line 442
    return-void

    .line 403
    :cond_4
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 405
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-ltz v5, :cond_5

    .line 408
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v7, v4

    const v8, 0x7fffffff

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 411
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    if-gez v5, :cond_5

    move-object v5, v0

    const v6, 0x7fffffff

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    .line 413
    :cond_5
    const v5, 0x7fffffff

    move v4, v5

    goto :goto_0

    .line 432
    :cond_6
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_3

    .line 434
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-ltz v5, :cond_7

    .line 435
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v7, v4

    const v8, 0x7fffffff

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 436
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    if-gez v5, :cond_7

    move-object v5, v0

    const v6, 0x7fffffff

    iput v6, v5, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 438
    :cond_7
    const v5, 0x7fffffff

    move v4, v5

    goto :goto_1
.end method
