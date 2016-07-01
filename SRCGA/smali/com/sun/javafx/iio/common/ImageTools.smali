.class public Lcom/sun/javafx/iio/common/ImageTools;
.super Ljava/lang/Object;
.source "ImageTools.java"


# static fields
.field public static final PROGRESS_INTERVAL:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageTools;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeDimensions(IIIIZ)[I
    .locals 13

    .prologue
    .line 654
    move v0, p0

    .local v0, "sourceWidth":I
    move v1, p1

    .local v1, "sourceHeight":I
    move v2, p2

    .local v2, "maxWidth":I
    move/from16 v3, p3

    .local v3, "maxHeight":I
    move/from16 v4, p4

    .local v4, "preserveAspectRatio":Z
    move v8, v2

    if-gez v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    move v5, v8

    .line 655
    .local v5, "finalWidth":I
    move v8, v3

    if-gez v8, :cond_2

    const/4 v8, 0x0

    :goto_1
    move v6, v8

    .line 657
    .local v6, "finalHeight":I
    move v8, v5

    if-nez v8, :cond_3

    move v8, v6

    if-nez v8, :cond_3

    .line 659
    move v8, v0

    move v5, v8

    .line 660
    move v8, v1

    move v6, v8

    .line 694
    :cond_0
    :goto_2
    const/4 v8, 0x2

    new-array v8, v8, [I

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v5

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v6

    aput v11, v9, v10

    move-object v0, v8

    .end local v0    # "sourceWidth":I
    return-object v0

    .line 654
    .end local v5    # "finalWidth":I
    .end local v6    # "finalHeight":I
    .restart local v0    # "sourceWidth":I
    :cond_1
    move v8, v2

    goto :goto_0

    .line 655
    .restart local v5    # "finalWidth":I
    :cond_2
    move v8, v3

    goto :goto_1

    .line 661
    .restart local v6    # "finalHeight":I
    :cond_3
    move v8, v5

    move v9, v0

    if-ne v8, v9, :cond_4

    move v8, v6

    move v9, v1

    if-eq v8, v9, :cond_0

    .line 662
    :cond_4
    move v8, v4

    if-eqz v8, :cond_9

    .line 664
    move v8, v5

    if-nez v8, :cond_7

    .line 665
    move v8, v0

    int-to-float v8, v8

    move v9, v6

    int-to-float v9, v9

    mul-float/2addr v8, v9

    move v9, v1

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 685
    :cond_5
    :goto_3
    move v8, v5

    if-nez v8, :cond_6

    .line 686
    const/4 v8, 0x1

    move v5, v8

    .line 688
    :cond_6
    move v8, v6

    if-nez v8, :cond_0

    .line 689
    const/4 v8, 0x1

    move v6, v8

    goto :goto_2

    .line 666
    :cond_7
    move v8, v6

    if-nez v8, :cond_8

    .line 667
    move v8, v1

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    mul-float/2addr v8, v9

    move v9, v0

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    goto :goto_3

    .line 669
    :cond_8
    move v8, v5

    int-to-float v8, v8

    move v9, v0

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v9, v6

    int-to-float v9, v9

    move v10, v1

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    move v7, v8

    .line 670
    .local v7, "scale":F
    move v8, v0

    int-to-float v8, v8

    move v9, v7

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v5, v8

    .line 671
    move v8, v1

    int-to-float v8, v8

    move v9, v7

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 672
    goto :goto_3

    .line 675
    .end local v7    # "scale":F
    :cond_9
    move v8, v6

    if-nez v8, :cond_a

    .line 676
    move v8, v1

    move v6, v8

    .line 678
    :cond_a
    move v8, v5

    if-nez v8, :cond_5

    .line 679
    move v8, v0

    move v5, v8

    goto :goto_3
.end method

.method private static computeUpdatedPixels(IIIIIIIII[II)V
    .locals 24

    .prologue
    .line 532
    move/from16 v2, p0

    .local v2, "sourceOffset":I
    move/from16 v3, p1

    .local v3, "sourceExtent":I
    move/from16 v4, p2

    .local v4, "destinationOffset":I
    move/from16 v5, p3

    .local v5, "dstMin":I
    move/from16 v6, p4

    .local v6, "dstMax":I
    move/from16 v7, p5

    .local v7, "sourceSubsampling":I
    move/from16 v8, p6

    .local v8, "passStart":I
    move/from16 v9, p7

    .local v9, "passExtent":I
    move/from16 v10, p8

    .local v10, "passPeriod":I
    move-object/from16 v11, p9

    .local v11, "vals":[I
    move/from16 v12, p10

    .local v12, "offset":I
    const/16 v20, 0x0

    move/from16 v13, v20

    .line 533
    .local v13, "gotPixel":Z
    const/16 v20, -0x1

    move/from16 v14, v20

    .line 534
    .local v14, "firstDst":I
    const/16 v20, -0x1

    move/from16 v15, v20

    .line 535
    .local v15, "secondDst":I
    const/16 v20, -0x1

    move/from16 v16, v20

    .line 537
    .local v16, "lastDst":I
    const/16 v20, 0x0

    move/from16 v17, v20

    .local v17, "i":I
    :goto_0
    move/from16 v20, v17

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 538
    move/from16 v20, v8

    move/from16 v21, v17

    move/from16 v22, v10

    mul-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v18, v20

    .line 539
    .local v18, "src":I
    move/from16 v20, v18

    move/from16 v21, v2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 540
    .line 537
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 542
    :cond_0
    move/from16 v20, v18

    move/from16 v21, v2

    sub-int v20, v20, v21

    move/from16 v21, v7

    rem-int v20, v20, v21

    if-eqz v20, :cond_1

    .line 543
    goto :goto_1

    .line 545
    :cond_1
    move/from16 v20, v18

    move/from16 v21, v2

    move/from16 v22, v3

    add-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 546
    .line 567
    .end local v18    # "src":I
    :cond_2
    :goto_2
    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v14

    aput v22, v20, v21

    .line 570
    move/from16 v20, v13

    if-nez v20, :cond_8

    .line 571
    move-object/from16 v20, v11

    move/from16 v21, v12

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 577
    :goto_3
    move-object/from16 v20, v11

    move/from16 v21, v12

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    move/from16 v22, v15

    move/from16 v23, v14

    sub-int v22, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    aput v22, v20, v21

    .line 578
    return-void

    .line 549
    .restart local v18    # "src":I
    :cond_3
    move/from16 v20, v4

    move/from16 v21, v18

    move/from16 v22, v2

    sub-int v21, v21, v22

    move/from16 v22, v7

    div-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v19, v20

    .line 551
    .local v19, "dst":I
    move/from16 v20, v19

    move/from16 v21, v5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 552
    goto :goto_1

    .line 554
    :cond_4
    move/from16 v20, v19

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 555
    goto :goto_2

    .line 558
    :cond_5
    move/from16 v20, v13

    if-nez v20, :cond_7

    .line 559
    move/from16 v20, v19

    move/from16 v14, v20

    .line 560
    const/16 v20, 0x1

    move/from16 v13, v20

    .line 564
    :cond_6
    :goto_4
    move/from16 v20, v19

    move/from16 v16, v20

    goto/16 :goto_1

    .line 561
    :cond_7
    move/from16 v20, v15

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 562
    move/from16 v20, v19

    move/from16 v15, v20

    goto :goto_4

    .line 573
    .end local v18    # "src":I
    .end local v19    # "dst":I
    :cond_8
    move-object/from16 v20, v11

    move/from16 v21, v12

    const/16 v22, 0x2

    add-int/lit8 v21, v21, 0x2

    move/from16 v22, v16

    move/from16 v23, v14

    sub-int v22, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    aput v22, v20, v21

    goto :goto_3
.end method

.method public static computeUpdatedPixels(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Point2D;IIIIIIIIIIII)[I
    .locals 27

    .prologue
    .line 637
    move-object/from16 v1, p0

    .local v1, "sourceRegion":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v2, p1

    .local v2, "destinationOffset":Lcom/sun/javafx/geom/Point2D;
    move/from16 v3, p2

    .local v3, "dstMinX":I
    move/from16 v4, p3

    .local v4, "dstMinY":I
    move/from16 v5, p4

    .local v5, "dstMaxX":I
    move/from16 v6, p5

    .local v6, "dstMaxY":I
    move/from16 v7, p6

    .local v7, "sourceXSubsampling":I
    move/from16 v8, p7

    .local v8, "sourceYSubsampling":I
    move/from16 v9, p8

    .local v9, "passXStart":I
    move/from16 v10, p9

    .local v10, "passYStart":I
    move/from16 v11, p10

    .local v11, "passWidth":I
    move/from16 v12, p11

    .local v12, "passHeight":I
    move/from16 v13, p12

    .local v13, "passPeriodX":I
    move/from16 v14, p13

    .local v14, "passPeriodY":I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v15, v16

    .line 638
    .local v15, "vals":[I
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v9

    move/from16 v23, v11

    move/from16 v24, v13

    move-object/from16 v25, v15

    const/16 v26, 0x0

    invoke-static/range {v16 .. v26}, Lcom/sun/javafx/iio/common/ImageTools;->computeUpdatedPixels(IIIIIIIII[II)V

    .line 643
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v23, v12

    move/from16 v24, v14

    move-object/from16 v25, v15

    const/16 v26, 0x1

    invoke-static/range {v16 .. v26}, Lcom/sun/javafx/iio/common/ImageTools;->computeUpdatedPixels(IIIIIIIII[II)V

    .line 648
    move-object/from16 v16, v15

    move-object/from16 v1, v16

    .end local v1    # "sourceRegion":Lcom/sun/javafx/geom/Rectangle;
    return-object v1
.end method

.method public static convert(IILcom/sun/javafx/iio/ImageStorage$ImageType;[BII[BII[[BIZ)[B
    .locals 35

    .prologue
    .line 273
    move/from16 v2, p0

    .local v2, "width":I
    move/from16 v3, p1

    .local v3, "height":I
    move-object/from16 v4, p2

    .local v4, "inputType":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object/from16 v5, p3

    .local v5, "input":[B
    move/from16 v6, p4

    .local v6, "inputOffset":I
    move/from16 v7, p5

    .local v7, "inRowStride":I
    move-object/from16 v8, p6

    .local v8, "output":[B
    move/from16 v9, p7

    .local v9, "outputOffset":I
    move/from16 v10, p8

    .local v10, "outRowStride":I
    move-object/from16 v11, p9

    .local v11, "palette":[[B
    move/from16 v12, p10

    .local v12, "transparentIndex":I
    move/from16 v13, p11

    .local v13, "skipTransparent":Z
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_0

    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_0

    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 276
    :cond_0
    move-object/from16 v29, v5

    move-object/from16 v30, v8

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_2

    .line 277
    move/from16 v29, v2

    move/from16 v14, v29

    .line 278
    .local v14, "bytesPerRow":I
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 279
    move/from16 v29, v14

    const/16 v30, 0x3

    mul-int/lit8 v29, v29, 0x3

    move/from16 v14, v29

    .line 283
    :cond_1
    :goto_0
    move/from16 v29, v3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 284
    move-object/from16 v29, v5

    move/from16 v30, v6

    move-object/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v14

    invoke-static/range {v29 .. v33}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    .line 451
    .end local v14    # "bytesPerRow":I
    :cond_2
    :goto_1
    move-object/from16 v29, v8

    move-object/from16 v2, v29

    .end local v2    # "width":I
    return-object v2

    .line 280
    .restart local v2    # "width":I
    .restart local v14    # "bytesPerRow":I
    :cond_3
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 281
    move/from16 v29, v14

    const/16 v30, 0x4

    mul-int/lit8 v29, v29, 0x4

    move/from16 v14, v29

    goto :goto_0

    .line 286
    :cond_4
    move/from16 v29, v6

    move/from16 v15, v29

    .line 287
    .local v15, "inRowOffset":I
    move/from16 v29, v9

    move/from16 v16, v29

    .line 288
    .local v16, "outRowOffset":I
    const/16 v29, 0x0

    move/from16 v17, v29

    .local v17, "row":I
    :goto_2
    move/from16 v29, v17

    move/from16 v30, v3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 289
    move-object/from16 v29, v5

    move/from16 v30, v15

    move-object/from16 v31, v8

    move/from16 v32, v16

    move/from16 v33, v14

    invoke-static/range {v29 .. v33}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    move/from16 v29, v15

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 291
    move/from16 v29, v16

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v16, v29

    .line 288
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 295
    .end local v14    # "bytesPerRow":I
    .end local v15    # "inRowOffset":I
    .end local v16    # "outRowOffset":I
    .end local v17    # "row":I
    :cond_5
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_6

    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 296
    :cond_6
    move/from16 v29, v6

    move/from16 v14, v29

    .line 297
    .local v14, "inOffset":I
    move/from16 v29, v9

    move/from16 v15, v29

    .line 298
    .local v15, "outOffset":I
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 299
    const/16 v29, 0x0

    move/from16 v16, v29

    .local v16, "y":I
    :goto_3
    move/from16 v29, v16

    move/from16 v30, v3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 300
    move/from16 v29, v14

    move/from16 v17, v29

    .line 301
    .local v17, "inOff":I
    move/from16 v29, v15

    move/from16 v18, v29

    .line 302
    .local v18, "outOff":I
    const/16 v29, 0x0

    move/from16 v19, v29

    .local v19, "x":I
    :goto_4
    move/from16 v29, v19

    move/from16 v30, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    .line 304
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    move/from16 v20, v29

    .line 305
    .local v20, "gray":B
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    const/16 v30, 0xff

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v21, v29

    .line 306
    .local v21, "alpha":I
    move/from16 v29, v21

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x437f0000    # 255.0f

    div-float v29, v29, v30

    move/from16 v22, v29

    .line 307
    .local v22, "f":F
    move/from16 v29, v22

    move/from16 v30, v20

    const/16 v31, 0xff

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    move/from16 v20, v29

    .line 308
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v20

    aput-byte v31, v29, v30

    .line 309
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v20

    aput-byte v31, v29, v30

    .line 310
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v20

    aput-byte v31, v29, v30

    .line 311
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v21

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 302
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 313
    .end local v20    # "gray":B
    .end local v21    # "alpha":I
    .end local v22    # "f":F
    :cond_7
    move/from16 v29, v14

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v14, v29

    .line 314
    move/from16 v29, v15

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 299
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 332
    .end local v17    # "inOff":I
    .end local v18    # "outOff":I
    .end local v19    # "x":I
    :cond_8
    goto/16 :goto_1

    .line 317
    .end local v16    # "y":I
    :cond_9
    const/16 v29, 0x0

    move/from16 v16, v29

    .restart local v16    # "y":I
    :goto_5
    move/from16 v29, v16

    move/from16 v30, v3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 318
    move/from16 v29, v14

    move/from16 v17, v29

    .line 319
    .restart local v17    # "inOff":I
    move/from16 v29, v15

    move/from16 v18, v29

    .line 320
    .restart local v18    # "outOff":I
    const/16 v29, 0x0

    move/from16 v19, v29

    .restart local v19    # "x":I
    :goto_6
    move/from16 v29, v19

    move/from16 v30, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 322
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    move/from16 v20, v29

    .line 323
    .restart local v20    # "gray":B
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v20

    aput-byte v31, v29, v30

    .line 324
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v20

    aput-byte v31, v29, v30

    .line 325
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v20

    aput-byte v31, v29, v30

    .line 326
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v31, v5

    move/from16 v32, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 320
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 328
    .end local v20    # "gray":B
    :cond_a
    move/from16 v29, v14

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v14, v29

    .line 329
    move/from16 v29, v15

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 317
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 332
    .end local v14    # "inOffset":I
    .end local v15    # "outOffset":I
    .end local v16    # "y":I
    .end local v17    # "inOff":I
    .end local v18    # "outOff":I
    .end local v19    # "x":I
    :cond_b
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 333
    move/from16 v29, v6

    move/from16 v14, v29

    .line 334
    .restart local v14    # "inOffset":I
    move/from16 v29, v9

    move/from16 v15, v29

    .line 335
    .restart local v15    # "outOffset":I
    move-object/from16 v29, v11

    const/16 v30, 0x0

    aget-object v29, v29, v30

    move-object/from16 v16, v29

    .line 336
    .local v16, "red":[B
    move-object/from16 v29, v11

    const/16 v30, 0x1

    aget-object v29, v29, v30

    move-object/from16 v17, v29

    .line 337
    .local v17, "green":[B
    move-object/from16 v29, v11

    const/16 v30, 0x2

    aget-object v29, v29, v30

    move-object/from16 v18, v29

    .line 338
    .local v18, "blue":[B
    move/from16 v29, v14

    move/from16 v19, v29

    .line 339
    .local v19, "inOff":I
    move/from16 v29, v15

    move/from16 v20, v29

    .line 342
    .local v20, "outOff":I
    const/16 v29, 0x0

    move/from16 v21, v29

    .local v21, "x":I
    :goto_7
    move/from16 v29, v21

    move/from16 v30, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    .line 343
    move-object/from16 v29, v5

    move/from16 v30, v19

    add-int/lit8 v19, v19, 0x1

    aget-byte v29, v29, v30

    const/16 v30, 0xff

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v22, v29

    .line 345
    .local v22, "index":I
    move-object/from16 v29, v8

    move/from16 v30, v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v31, v16

    move/from16 v32, v22

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 346
    move-object/from16 v29, v8

    move/from16 v30, v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v31, v17

    move/from16 v32, v22

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 347
    move-object/from16 v29, v8

    move/from16 v30, v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v31, v18

    move/from16 v32, v22

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 349
    move/from16 v29, v15

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 342
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 351
    .end local v22    # "index":I
    :cond_c
    goto/16 :goto_1

    .end local v14    # "inOffset":I
    .end local v15    # "outOffset":I
    .end local v16    # "red":[B
    .end local v17    # "green":[B
    .end local v18    # "blue":[B
    .end local v19    # "inOff":I
    .end local v20    # "outOff":I
    .end local v21    # "x":I
    :cond_d
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 352
    move/from16 v29, v6

    move/from16 v14, v29

    .line 353
    .restart local v14    # "inOffset":I
    move/from16 v29, v9

    move/from16 v15, v29

    .line 354
    .restart local v15    # "outOffset":I
    move-object/from16 v29, v11

    const/16 v30, 0x0

    aget-object v29, v29, v30

    move-object/from16 v16, v29

    .line 355
    .restart local v16    # "red":[B
    move-object/from16 v29, v11

    const/16 v30, 0x1

    aget-object v29, v29, v30

    move-object/from16 v17, v29

    .line 356
    .restart local v17    # "green":[B
    move-object/from16 v29, v11

    const/16 v30, 0x2

    aget-object v29, v29, v30

    move-object/from16 v18, v29

    .line 357
    .restart local v18    # "blue":[B
    move-object/from16 v29, v11

    const/16 v30, 0x3

    aget-object v29, v29, v30

    move-object/from16 v19, v29

    .line 358
    .local v19, "alpha":[B
    move/from16 v29, v14

    move/from16 v20, v29

    .line 359
    .local v20, "inOff":I
    move/from16 v29, v15

    move/from16 v21, v29

    .line 360
    .local v21, "outOff":I
    const/16 v29, 0x0

    move/from16 v22, v29

    .local v22, "x":I
    :goto_8
    move/from16 v29, v22

    move/from16 v30, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 361
    move-object/from16 v29, v5

    move/from16 v30, v20

    add-int/lit8 v20, v20, 0x1

    aget-byte v29, v29, v30

    const/16 v30, 0xff

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v23, v29

    .line 362
    .local v23, "index":I
    move-object/from16 v29, v16

    move/from16 v30, v23

    aget-byte v29, v29, v30

    move/from16 v24, v29

    .line 363
    .local v24, "r":B
    move-object/from16 v29, v17

    move/from16 v30, v23

    aget-byte v29, v29, v30

    move/from16 v25, v29

    .line 364
    .local v25, "g":B
    move-object/from16 v29, v18

    move/from16 v30, v23

    aget-byte v29, v29, v30

    move/from16 v26, v29

    .line 365
    .local v26, "b":B
    move-object/from16 v29, v19

    move/from16 v30, v23

    aget-byte v29, v29, v30

    const/16 v30, 0xff

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v27, v29

    .line 366
    .local v27, "a":I
    move/from16 v29, v27

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x437f0000    # 255.0f

    div-float v29, v29, v30

    move/from16 v28, v29

    .line 367
    .local v28, "f":F
    move-object/from16 v29, v8

    move/from16 v30, v21

    add-int/lit8 v21, v21, 0x1

    move/from16 v31, v28

    move/from16 v32, v24

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 368
    move-object/from16 v29, v8

    move/from16 v30, v21

    add-int/lit8 v21, v21, 0x1

    move/from16 v31, v28

    move/from16 v32, v25

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 369
    move-object/from16 v29, v8

    move/from16 v30, v21

    add-int/lit8 v21, v21, 0x1

    move/from16 v31, v28

    move/from16 v32, v26

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 370
    move-object/from16 v29, v8

    move/from16 v30, v21

    add-int/lit8 v21, v21, 0x1

    move/from16 v31, v27

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 360
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8

    .line 372
    .end local v23    # "index":I
    .end local v24    # "r":B
    .end local v25    # "g":B
    .end local v26    # "b":B
    .end local v27    # "a":I
    .end local v28    # "f":F
    :cond_e
    move/from16 v29, v14

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v14, v29

    .line 373
    move/from16 v29, v15

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 374
    goto/16 :goto_1

    .end local v14    # "inOffset":I
    .end local v15    # "outOffset":I
    .end local v16    # "red":[B
    .end local v17    # "green":[B
    .end local v18    # "blue":[B
    .end local v19    # "alpha":[B
    .end local v20    # "inOff":I
    .end local v21    # "outOff":I
    .end local v22    # "x":I
    :cond_f
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_ALPHA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 375
    move/from16 v29, v6

    move/from16 v14, v29

    .line 376
    .restart local v14    # "inOffset":I
    move/from16 v29, v9

    move/from16 v15, v29

    .line 377
    .restart local v15    # "outOffset":I
    move-object/from16 v29, v11

    const/16 v30, 0x0

    aget-object v29, v29, v30

    move-object/from16 v16, v29

    .line 378
    .restart local v16    # "red":[B
    move-object/from16 v29, v11

    const/16 v30, 0x1

    aget-object v29, v29, v30

    move-object/from16 v17, v29

    .line 379
    .restart local v17    # "green":[B
    move-object/from16 v29, v11

    const/16 v30, 0x2

    aget-object v29, v29, v30

    move-object/from16 v18, v29

    .line 380
    .restart local v18    # "blue":[B
    move-object/from16 v29, v11

    const/16 v30, 0x3

    aget-object v29, v29, v30

    move-object/from16 v19, v29

    .line 381
    .restart local v19    # "alpha":[B
    const/16 v29, 0x0

    move/from16 v20, v29

    .local v20, "y":I
    :goto_9
    move/from16 v29, v20

    move/from16 v30, v3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    .line 382
    move/from16 v29, v14

    move/from16 v21, v29

    .line 383
    .local v21, "inOff":I
    move/from16 v29, v15

    move/from16 v22, v29

    .line 384
    .local v22, "outOff":I
    const/16 v29, 0x0

    move/from16 v23, v29

    .local v23, "x":I
    :goto_a
    move/from16 v29, v23

    move/from16 v30, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_10

    .line 385
    move-object/from16 v29, v5

    move/from16 v30, v21

    add-int/lit8 v21, v21, 0x1

    aget-byte v29, v29, v30

    const/16 v30, 0xff

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v24, v29

    .line 386
    .local v24, "index":I
    move-object/from16 v29, v8

    move/from16 v30, v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v31, v16

    move/from16 v32, v24

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 387
    move-object/from16 v29, v8

    move/from16 v30, v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v31, v17

    move/from16 v32, v24

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 388
    move-object/from16 v29, v8

    move/from16 v30, v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v31, v18

    move/from16 v32, v24

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 389
    move-object/from16 v29, v8

    move/from16 v30, v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v31, v19

    move/from16 v32, v24

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 384
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 391
    .end local v24    # "index":I
    :cond_10
    move/from16 v29, v14

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v14, v29

    .line 392
    move/from16 v29, v15

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 381
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 394
    .end local v21    # "inOff":I
    .end local v22    # "outOff":I
    .end local v23    # "x":I
    :cond_11
    goto/16 :goto_1

    .end local v14    # "inOffset":I
    .end local v15    # "outOffset":I
    .end local v16    # "red":[B
    .end local v17    # "green":[B
    .end local v18    # "blue":[B
    .end local v19    # "alpha":[B
    .end local v20    # "y":I
    :cond_12
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->PALETTE_TRANS:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 395
    move/from16 v29, v6

    move/from16 v14, v29

    .line 396
    .restart local v14    # "inOffset":I
    move/from16 v29, v9

    move/from16 v15, v29

    .line 397
    .restart local v15    # "outOffset":I
    const/16 v29, 0x0

    move/from16 v16, v29

    .local v16, "y":I
    :goto_b
    move/from16 v29, v16

    move/from16 v30, v3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_16

    .line 398
    move/from16 v29, v14

    move/from16 v17, v29

    .line 399
    .local v17, "inOff":I
    move/from16 v29, v15

    move/from16 v18, v29

    .line 400
    .local v18, "outOff":I
    move-object/from16 v29, v11

    const/16 v30, 0x0

    aget-object v29, v29, v30

    move-object/from16 v19, v29

    .line 401
    .local v19, "red":[B
    move-object/from16 v29, v11

    const/16 v30, 0x1

    aget-object v29, v29, v30

    move-object/from16 v20, v29

    .line 402
    .local v20, "green":[B
    move-object/from16 v29, v11

    const/16 v30, 0x2

    aget-object v29, v29, v30

    move-object/from16 v21, v29

    .line 403
    .local v21, "blue":[B
    const/16 v29, 0x0

    move/from16 v22, v29

    .local v22, "x":I
    :goto_c
    move/from16 v29, v22

    move/from16 v30, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_15

    .line 404
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    const/16 v30, 0xff

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v23, v29

    .line 405
    .local v23, "index":I
    move/from16 v29, v23

    move/from16 v30, v12

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 406
    move/from16 v29, v13

    if-eqz v29, :cond_13

    .line 407
    add-int/lit8 v18, v18, 0x4

    .line 403
    :goto_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 409
    :cond_13
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    .line 410
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    .line 411
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    .line 412
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    goto :goto_d

    .line 415
    :cond_14
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v31, v19

    move/from16 v32, v23

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 416
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v31, v20

    move/from16 v32, v23

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 417
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v31, v21

    move/from16 v32, v23

    aget-byte v31, v31, v32

    aput-byte v31, v29, v30

    .line 418
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    const/16 v31, -0x1

    aput-byte v31, v29, v30

    goto :goto_d

    .line 421
    .end local v23    # "index":I
    :cond_15
    move/from16 v29, v14

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v14, v29

    .line 422
    move/from16 v29, v15

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 397
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    .line 424
    .end local v17    # "inOff":I
    .end local v18    # "outOff":I
    .end local v19    # "red":[B
    .end local v20    # "green":[B
    .end local v21    # "blue":[B
    .end local v22    # "x":I
    :cond_16
    goto/16 :goto_1

    .end local v14    # "inOffset":I
    .end local v15    # "outOffset":I
    .end local v16    # "y":I
    :cond_17
    move-object/from16 v29, v4

    sget-object v30, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 425
    move/from16 v29, v6

    move/from16 v14, v29

    .line 426
    .restart local v14    # "inOffset":I
    move/from16 v29, v9

    move/from16 v15, v29

    .line 427
    .restart local v15    # "outOffset":I
    const/16 v29, 0x0

    move/from16 v16, v29

    .restart local v16    # "y":I
    :goto_e
    move/from16 v29, v16

    move/from16 v30, v3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_19

    .line 428
    move/from16 v29, v14

    move/from16 v17, v29

    .line 429
    .restart local v17    # "inOff":I
    move/from16 v29, v15

    move/from16 v18, v29

    .line 430
    .restart local v18    # "outOff":I
    const/16 v29, 0x0

    move/from16 v19, v29

    .local v19, "x":I
    :goto_f
    move/from16 v29, v19

    move/from16 v30, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    .line 432
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    move/from16 v20, v29

    .line 433
    .local v20, "red":B
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    move/from16 v21, v29

    .line 434
    .local v21, "green":B
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    move/from16 v22, v29

    .line 435
    .local v22, "blue":B
    move-object/from16 v29, v5

    move/from16 v30, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v29, v29, v30

    const/16 v30, 0xff

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    move/from16 v23, v29

    .line 436
    .local v23, "alpha":I
    move/from16 v29, v23

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x437f0000    # 255.0f

    div-float v29, v29, v30

    move/from16 v24, v29

    .line 437
    .local v24, "f":F
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v24

    move/from16 v32, v20

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 438
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v24

    move/from16 v32, v21

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 439
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v24

    move/from16 v32, v22

    const/16 v33, 0xff

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 440
    move-object/from16 v29, v8

    move/from16 v30, v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v31, v23

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    .line 430
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_f

    .line 443
    .end local v20    # "red":B
    .end local v21    # "green":B
    .end local v22    # "blue":B
    .end local v23    # "alpha":I
    .end local v24    # "f":F
    :cond_18
    move/from16 v29, v14

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v14, v29

    .line 444
    move/from16 v29, v15

    move/from16 v30, v10

    add-int v29, v29, v30

    move/from16 v15, v29

    .line 427
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    .line 446
    .end local v17    # "inOff":I
    .end local v18    # "outOff":I
    .end local v19    # "x":I
    :cond_19
    goto/16 :goto_1

    .line 447
    .end local v14    # "inOffset":I
    .end local v15    # "outOffset":I
    .end local v16    # "y":I
    :cond_1a
    new-instance v29, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    new-instance v31, Ljava/lang/StringBuilder;

    move-object/from16 v34, v31

    move-object/from16 v31, v34

    move-object/from16 v32, v34

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unsupported ImageType "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v32, v4

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v29
.end method

.method public static convertImageFrame(Lcom/sun/javafx/iio/ImageFrame;)Lcom/sun/javafx/iio/ImageFrame;
    .locals 34

    .prologue
    .line 224
    move-object/from16 v2, p0

    .local v2, "frame":Lcom/sun/javafx/iio/ImageFrame;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/iio/ImageFrame;->getImageType()Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-result-object v19

    move-object/from16 v4, v19

    .line 225
    .local v4, "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object/from16 v19, v4

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/iio/common/ImageTools;->getConvertedType(Lcom/sun/javafx/iio/ImageStorage$ImageType;)Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-result-object v19

    move-object/from16 v5, v19

    .line 226
    .local v5, "convertedType":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 227
    move-object/from16 v19, v2

    move-object/from16 v3, v19

    .line 263
    .local v3, "retFrame":Lcom/sun/javafx/iio/ImageFrame;
    :goto_0
    move-object/from16 v19, v3

    move-object/from16 v2, v19

    .end local v2    # "frame":Lcom/sun/javafx/iio/ImageFrame;
    return-object v2

    .line 229
    .end local v3    # "retFrame":Lcom/sun/javafx/iio/ImageFrame;
    .restart local v2    # "frame":Lcom/sun/javafx/iio/ImageFrame;
    :cond_0
    const/16 v19, 0x0

    move-object/from16 v6, v19

    .line 230
    .local v6, "inArray":[B
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/iio/ImageFrame;->getImageData()Ljava/nio/Buffer;

    move-result-object v19

    move-object/from16 v7, v19

    .line 231
    .local v7, "buf":Ljava/nio/Buffer;
    move-object/from16 v19, v7

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 232
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    const-string v21, "!(frame.getImageData() instanceof ByteBuffer)"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 234
    :cond_1
    move-object/from16 v19, v7

    check-cast v19, Ljava/nio/ByteBuffer;

    move-object/from16 v8, v19

    .line 235
    .local v8, "bbuf":Ljava/nio/ByteBuffer;
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 236
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    move-object/from16 v6, v19

    .line 241
    :goto_1
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/iio/ImageFrame;->getWidth()I

    move-result v19

    move/from16 v9, v19

    .line 242
    .local v9, "width":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/iio/ImageFrame;->getHeight()I

    move-result v19

    move/from16 v10, v19

    .line 243
    .local v10, "height":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/iio/ImageFrame;->getStride()I

    move-result v19

    move/from16 v11, v19

    .line 244
    .local v11, "inStride":I
    move-object/from16 v19, v5

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-static/range {v19 .. v21}, Lcom/sun/javafx/iio/common/ImageTools;->createImageArray(Lcom/sun/javafx/iio/ImageStorage$ImageType;II)[B

    move-result-object v19

    move-object/from16 v12, v19

    .line 245
    .local v12, "outArray":[B
    move-object/from16 v19, v12

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v13, v19

    .line 246
    .local v13, "newBuf":Ljava/nio/ByteBuffer;
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v20, v10

    div-int v19, v19, v20

    move/from16 v14, v19

    .line 247
    .local v14, "outStride":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/iio/ImageFrame;->getPalette()[[B

    move-result-object v19

    move-object/from16 v15, v19

    .line 248
    .local v15, "palette":[[B
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/iio/ImageFrame;->getMetadata()Lcom/sun/javafx/iio/ImageMetadata;

    move-result-object v19

    move-object/from16 v16, v19

    .line 249
    .local v16, "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->transparentIndex:Ljava/lang/Integer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->transparentIndex:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    :goto_2
    move/from16 v17, v19

    .line 250
    .local v17, "transparentIndex":I
    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    const/16 v23, 0x0

    move/from16 v24, v11

    move-object/from16 v25, v12

    const/16 v26, 0x0

    move/from16 v27, v14

    move-object/from16 v28, v15

    move/from16 v29, v17

    const/16 v30, 0x0

    invoke-static/range {v19 .. v30}, Lcom/sun/javafx/iio/common/ImageTools;->convert(IILcom/sun/javafx/iio/ImageStorage$ImageType;[BII[BII[[BIZ)[B

    move-result-object v19

    .line 253
    new-instance v19, Lcom/sun/javafx/iio/ImageMetadata;

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    move-object/from16 v21, v16

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->gamma:Ljava/lang/Float;

    move-object/from16 v21, v0

    move-object/from16 v22, v16

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->blackIsZero:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v16

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v26, v16

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->delayTime:Ljava/lang/Integer;

    move-object/from16 v26, v0

    move-object/from16 v27, v16

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->loopCount:Ljava/lang/Integer;

    move-object/from16 v27, v0

    move-object/from16 v28, v16

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->imageWidth:Ljava/lang/Integer;

    move-object/from16 v28, v0

    move-object/from16 v29, v16

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->imageHeight:Ljava/lang/Integer;

    move-object/from16 v29, v0

    move-object/from16 v30, v16

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->imageLeftPosition:Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v31, v16

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->imageTopPosition:Ljava/lang/Integer;

    move-object/from16 v31, v0

    move-object/from16 v32, v16

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/iio/ImageMetadata;->disposalMethod:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-direct/range {v20 .. v32}, Lcom/sun/javafx/iio/ImageMetadata;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object/from16 v18, v19

    .line 260
    .local v18, "imd":Lcom/sun/javafx/iio/ImageMetadata;
    new-instance v19, Lcom/sun/javafx/iio/ImageFrame;

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    move-object/from16 v21, v5

    move-object/from16 v22, v13

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v14

    const/16 v26, 0x0

    check-cast v26, [[B

    move-object/from16 v27, v18

    invoke-direct/range {v20 .. v27}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    move-object/from16 v3, v19

    .restart local v3    # "retFrame":Lcom/sun/javafx/iio/ImageFrame;
    goto/16 :goto_0

    .line 238
    .end local v3    # "retFrame":Lcom/sun/javafx/iio/ImageFrame;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "inStride":I
    .end local v12    # "outArray":[B
    .end local v13    # "newBuf":Ljava/nio/ByteBuffer;
    .end local v14    # "outStride":I
    .end local v15    # "palette":[[B
    .end local v16    # "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    .end local v17    # "transparentIndex":I
    .end local v18    # "imd":Lcom/sun/javafx/iio/ImageMetadata;
    :cond_2
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    .line 239
    move-object/from16 v19, v8

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    goto/16 :goto_1

    .line 249
    .restart local v9    # "width":I
    .restart local v10    # "height":I
    .restart local v11    # "inStride":I
    .restart local v12    # "outArray":[B
    .restart local v13    # "newBuf":Ljava/nio/ByteBuffer;
    .restart local v14    # "outStride":I
    .restart local v15    # "palette":[[B
    .restart local v16    # "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method public static createImageArray(Lcom/sun/javafx/iio/ImageStorage$ImageType;II)[B
    .locals 9

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    const/4 v4, 0x0

    move v3, v4

    .line 198
    .local v3, "numBands":I
    sget-object v4, Lcom/sun/javafx/iio/common/ImageTools$1;->$SwitchMap$com$sun$javafx$iio$ImageStorage$ImageType:[I

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/iio/ImageStorage$ImageType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 217
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported ImageType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    :pswitch_1
    const/4 v4, 0x1

    move v3, v4

    .line 219
    :goto_0
    move v4, v1

    move v5, v2

    mul-int/2addr v4, v5

    move v5, v3

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    move-object v0, v4

    .end local v0    # "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    return-object v0

    .line 207
    .restart local v0    # "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    :pswitch_2
    const/4 v4, 0x2

    move v3, v4

    .line 208
    goto :goto_0

    .line 210
    :pswitch_3
    const/4 v4, 0x3

    move v3, v4

    .line 211
    goto :goto_0

    .line 214
    :pswitch_4
    const/4 v4, 0x4

    move v3, v4

    .line 215
    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static createInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "input":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v1, v3

    .line 477
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 478
    .local v2, "file":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    new-instance v3, Ljava/io/FileInputStream;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 483
    .line 484
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 485
    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 486
    .local v2, "url":Ljava/net/URL;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 488
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "input":Ljava/lang/String;
    return-object v0

    .line 481
    .restart local v0    # "input":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static getConvertedType(Lcom/sun/javafx/iio/ImageStorage$ImageType;)Lcom/sun/javafx/iio/ImageStorage$ImageType;
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object v2, v0

    move-object v1, v2

    .line 171
    .local v1, "retType":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    sget-object v2, Lcom/sun/javafx/iio/common/ImageTools$1;->$SwitchMap$com$sun$javafx$iio$ImageStorage$ImageType:[I

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/iio/ImageStorage$ImageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported ImageType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :pswitch_0
    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->GRAY:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v1, v2

    .line 193
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    return-object v0

    .line 181
    .restart local v0    # "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    :pswitch_1
    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v1, v2

    .line 182
    goto :goto_0

    .line 185
    :pswitch_2
    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGB:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v1, v2

    .line 186
    goto :goto_0

    .line 188
    :pswitch_3
    sget-object v2, Lcom/sun/javafx/iio/ImageStorage$ImageType;->RGBA_PRE:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v1, v2

    .line 189
    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getScaledImageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 456
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v5, v0

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move v2, v5

    .line 457
    .local v2, "slash":I
    move v5, v2

    if-gez v5, :cond_2

    move-object v5, v0

    :goto_0
    move-object v3, v5

    .line 458
    .local v3, "name":Ljava/lang/String;
    move-object v5, v3

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 459
    .local v4, "dot":I
    move v5, v4

    if-gez v5, :cond_0

    .line 460
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    .line 462
    :cond_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 463
    move-object v5, v1

    move-object v6, v0

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 465
    :cond_1
    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 466
    move-object v5, v1

    const-string v6, "@2x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 467
    move-object v5, v1

    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 468
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "path":Ljava/lang/String;
    return-object v0

    .line 457
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "dot":I
    .restart local v0    # "path":Ljava/lang/String;
    :cond_2
    move-object v5, v0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "b":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/iio/common/ImageTools;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    move v0, v2

    .end local v0    # "stream":Ljava/io/InputStream;
    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "stream":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move v6, v3

    if-gez v6, :cond_0

    .line 73
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 75
    :cond_0
    move v6, v3

    move v4, v6

    .line 77
    .local v4, "requestedLength":I
    move v6, v2

    if-ltz v6, :cond_1

    move v6, v3

    if-ltz v6, :cond_1

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v1

    array-length v7, v7

    if-gt v6, v7, :cond_1

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    if-gez v6, :cond_3

    .line 78
    :cond_1
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "off < 0 || len < 0 || off + len > b.length!"

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    .local v5, "nbytes":I
    :cond_2
    move v6, v2

    move v7, v5

    add-int/2addr v6, v7

    move v2, v6

    .line 87
    move v6, v3

    move v7, v5

    sub-int/2addr v6, v7

    move v3, v6

    .line 81
    .end local v5    # "nbytes":I
    :cond_3
    move v6, v3

    if-lez v6, :cond_4

    .line 82
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v5, v6

    .line 83
    .restart local v5    # "nbytes":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 84
    new-instance v6, Ljava/io/EOFException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 90
    .end local v5    # "nbytes":I
    :cond_4
    move v6, v4

    move v0, v6

    .end local v0    # "stream":Ljava/io/InputStream;
    return v0
.end method

.method public static scaleImage(Ljava/nio/ByteBuffer;IIIIIZ)Ljava/nio/ByteBuffer;
    .locals 17

    .prologue
    .line 712
    move-object/from16 v0, p0

    .local v0, "src":Ljava/nio/ByteBuffer;
    move/from16 v1, p1

    .local v1, "sourceWidth":I
    move/from16 v2, p2

    .local v2, "sourceHeight":I
    move/from16 v3, p3

    .local v3, "numBands":I
    move/from16 v4, p4

    .local v4, "destWidth":I
    move/from16 v5, p5

    .local v5, "destHeight":I
    move/from16 v6, p6

    .local v6, "isSmooth":Z
    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/sun/javafx/iio/common/ScalerFactory;->createScaler(IIIIIZ)Lcom/sun/javafx/iio/common/PushbroomScaler;

    move-result-object v11

    move-object v7, v11

    .line 716
    .local v7, "scaler":Lcom/sun/javafx/iio/common/PushbroomScaler;
    move v11, v1

    move v12, v3

    mul-int/2addr v11, v12

    move v8, v11

    .line 717
    .local v8, "stride":I
    move-object v11, v0

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 718
    move-object v11, v0

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    move-object v9, v11

    .line 719
    .local v9, "image":[B
    const/4 v11, 0x0

    move v10, v11

    .local v10, "y":I
    :goto_0
    move v11, v10

    move v12, v2

    if-eq v11, v12, :cond_0

    .line 720
    move-object v11, v7

    move-object v12, v9

    move v13, v10

    move v14, v8

    mul-int/2addr v13, v14

    invoke-interface {v11, v12, v13}, Lcom/sun/javafx/iio/common/PushbroomScaler;->putSourceScanline([BI)Z

    move-result v11

    .line 719
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 722
    .line 730
    .end local v9    # "image":[B
    :cond_0
    move-object v11, v7

    invoke-interface {v11}, Lcom/sun/javafx/iio/common/PushbroomScaler;->getDestination()Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v0, v11

    .end local v0    # "src":Ljava/nio/ByteBuffer;
    return-object v0

    .line 723
    .end local v10    # "y":I
    .restart local v0    # "src":Ljava/nio/ByteBuffer;
    :cond_1
    move v11, v8

    new-array v11, v11, [B

    move-object v9, v11

    .line 724
    .local v9, "scanline":[B
    const/4 v11, 0x0

    move v10, v11

    .restart local v10    # "y":I
    :goto_1
    move v11, v10

    move v12, v2

    if-eq v11, v12, :cond_0

    .line 725
    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 726
    move-object v11, v7

    move-object v12, v9

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/sun/javafx/iio/common/PushbroomScaler;->putSourceScanline([BI)Z

    move-result v11

    .line 724
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public static scaleImageFrame(Lcom/sun/javafx/iio/ImageFrame;IIZ)Lcom/sun/javafx/iio/ImageFrame;
    .locals 16

    .prologue
    .line 700
    move-object/from16 v0, p0

    .local v0, "src":Lcom/sun/javafx/iio/ImageFrame;
    move/from16 v1, p1

    .local v1, "destWidth":I
    move/from16 v2, p2

    .local v2, "destHeight":I
    move/from16 v3, p3

    .local v3, "isSmooth":Z
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/iio/ImageFrame;->getImageType()Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/iio/ImageStorage;->getNumBands(Lcom/sun/javafx/iio/ImageStorage$ImageType;)I

    move-result v6

    move v4, v6

    .line 701
    .local v4, "numBands":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/iio/ImageFrame;->getImageData()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    move-object v7, v0

    .line 702
    invoke-virtual {v7}, Lcom/sun/javafx/iio/ImageFrame;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getHeight()I

    move-result v8

    move v9, v4

    move v10, v1

    move v11, v2

    move v12, v3

    .line 701
    invoke-static/range {v6 .. v12}, Lcom/sun/javafx/iio/common/ImageTools;->scaleImage(Ljava/nio/ByteBuffer;IIIIIZ)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v5, v6

    .line 704
    .local v5, "dst":Ljava/nio/ByteBuffer;
    new-instance v6, Lcom/sun/javafx/iio/ImageFrame;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getImageType()Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-result-object v8

    move-object v9, v5

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v4

    mul-int/2addr v12, v13

    const/4 v13, 0x0

    check-cast v13, [[B

    move-object v14, v0

    .line 705
    invoke-virtual {v14}, Lcom/sun/javafx/iio/ImageFrame;->getMetadata()Lcom/sun/javafx/iio/ImageMetadata;

    move-result-object v14

    invoke-direct/range {v7 .. v14}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V

    move-object v0, v6

    .end local v0    # "src":Lcom/sun/javafx/iio/ImageFrame;
    return-object v0
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "stream":Ljava/io/InputStream;
    move-wide v2, p1

    .local v2, "n":J
    :goto_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 121
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    move-wide v4, v6

    .line 122
    .local v4, "skipped":J
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 124
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 125
    new-instance v6, Ljava/io/EOFException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 127
    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 131
    :goto_1
    goto :goto_0

    .line 129
    :cond_1
    move-wide v6, v2

    move-wide v8, v4

    sub-long/2addr v6, v8

    move-wide v2, v6

    goto :goto_1

    .line 132
    .end local v4    # "skipped":J
    :cond_2
    return-void
.end method
