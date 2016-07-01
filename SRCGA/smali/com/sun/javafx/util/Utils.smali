.class public Lcom/sun/javafx/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/sun/javafx/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/util/Utils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/util/Utils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSBtoRGB(DDD)[D
    .locals 38

    .prologue
    .line 314
    move-wide/from16 v2, p0

    .local v2, "hue":D
    move-wide/from16 v4, p2

    .local v4, "saturation":D
    move-wide/from16 v6, p4

    .local v6, "brightness":D
    move-wide/from16 v26, v2

    const-wide v28, 0x4076800000000000L    # 360.0

    rem-double v26, v26, v28

    const-wide v28, 0x4076800000000000L    # 360.0

    add-double v26, v26, v28

    const-wide v28, 0x4076800000000000L    # 360.0

    rem-double v26, v26, v28

    move-wide/from16 v8, v26

    .line 315
    .local v8, "normalizedHue":D
    move-wide/from16 v26, v8

    const-wide v28, 0x4076800000000000L    # 360.0

    div-double v26, v26, v28

    move-wide/from16 v2, v26

    .line 317
    const-wide/16 v26, 0x0

    move-wide/from16 v10, v26

    .local v10, "r":D
    const-wide/16 v26, 0x0

    move-wide/from16 v12, v26

    .local v12, "g":D
    const-wide/16 v26, 0x0

    move-wide/from16 v14, v26

    .line 318
    .local v14, "b":D
    move-wide/from16 v26, v4

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_0

    .line 319
    move-wide/from16 v26, v6

    move-wide/from16 v36, v26

    move-wide/from16 v26, v36

    move-wide/from16 v28, v36

    move-wide/from16 v14, v28

    move-wide/from16 v36, v26

    move-wide/from16 v26, v36

    move-wide/from16 v28, v36

    move-wide/from16 v12, v28

    move-wide/from16 v10, v26

    .line 359
    :goto_0
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [D

    move-object/from16 v26, v0

    move-object/from16 v16, v26

    .line 360
    .local v16, "f":[D
    move-object/from16 v26, v16

    const/16 v27, 0x0

    move-wide/from16 v28, v10

    aput-wide v28, v26, v27

    .line 361
    move-object/from16 v26, v16

    const/16 v27, 0x1

    move-wide/from16 v28, v12

    aput-wide v28, v26, v27

    .line 362
    move-object/from16 v26, v16

    const/16 v27, 0x2

    move-wide/from16 v28, v14

    aput-wide v28, v26, v27

    .line 363
    move-object/from16 v26, v16

    move-object/from16 v2, v26

    .end local v2    # "hue":D
    return-object v2

    .line 321
    .end local v16    # "f":[D
    .restart local v2    # "hue":D
    :cond_0
    move-wide/from16 v26, v2

    move-wide/from16 v28, v2

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4018000000000000L    # 6.0

    mul-double v26, v26, v28

    move-wide/from16 v16, v26

    .line 322
    .local v16, "h":D
    move-wide/from16 v26, v16

    move-wide/from16 v28, v16

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    sub-double v26, v26, v28

    move-wide/from16 v18, v26

    .line 323
    .local v18, "f":D
    move-wide/from16 v26, v6

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v4

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    move-wide/from16 v20, v26

    .line 324
    .local v20, "p":D
    move-wide/from16 v26, v6

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v18

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 325
    .local v22, "q":D
    move-wide/from16 v26, v6

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v30, v4

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v18

    sub-double v32, v32, v34

    mul-double v30, v30, v32

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    move-wide/from16 v24, v26

    .line 326
    .local v24, "t":D
    move-wide/from16 v26, v16

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    move-wide/from16 v26, v6

    move-wide/from16 v10, v26

    .line 329
    move-wide/from16 v26, v24

    move-wide/from16 v12, v26

    .line 330
    move-wide/from16 v26, v20

    move-wide/from16 v14, v26

    .line 331
    goto/16 :goto_0

    .line 333
    :pswitch_1
    move-wide/from16 v26, v22

    move-wide/from16 v10, v26

    .line 334
    move-wide/from16 v26, v6

    move-wide/from16 v12, v26

    .line 335
    move-wide/from16 v26, v20

    move-wide/from16 v14, v26

    .line 336
    goto/16 :goto_0

    .line 338
    :pswitch_2
    move-wide/from16 v26, v20

    move-wide/from16 v10, v26

    .line 339
    move-wide/from16 v26, v6

    move-wide/from16 v12, v26

    .line 340
    move-wide/from16 v26, v24

    move-wide/from16 v14, v26

    .line 341
    goto/16 :goto_0

    .line 343
    :pswitch_3
    move-wide/from16 v26, v20

    move-wide/from16 v10, v26

    .line 344
    move-wide/from16 v26, v22

    move-wide/from16 v12, v26

    .line 345
    move-wide/from16 v26, v6

    move-wide/from16 v14, v26

    .line 346
    goto/16 :goto_0

    .line 348
    :pswitch_4
    move-wide/from16 v26, v24

    move-wide/from16 v10, v26

    .line 349
    move-wide/from16 v26, v20

    move-wide/from16 v12, v26

    .line 350
    move-wide/from16 v26, v6

    move-wide/from16 v14, v26

    .line 351
    goto/16 :goto_0

    .line 353
    :pswitch_5
    move-wide/from16 v26, v6

    move-wide/from16 v10, v26

    .line 354
    move-wide/from16 v26, v20

    move-wide/from16 v12, v26

    .line 355
    move-wide/from16 v26, v22

    move-wide/from16 v14, v26

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBtoHSB(DDD)[D
    .locals 30

    .prologue
    .line 368
    move-wide/from16 v1, p0

    .local v1, "r":D
    move-wide/from16 v3, p2

    .local v3, "g":D
    move-wide/from16 v5, p4

    .local v5, "b":D
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    move-object/from16 v13, v24

    .line 369
    .local v13, "hsbvals":[D
    move-wide/from16 v24, v1

    move-wide/from16 v26, v3

    cmpl-double v24, v24, v26

    if-lez v24, :cond_3

    move-wide/from16 v24, v1

    :goto_0
    move-wide/from16 v14, v24

    .line 370
    .local v14, "cmax":D
    move-wide/from16 v24, v5

    move-wide/from16 v26, v14

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    move-wide/from16 v24, v5

    move-wide/from16 v14, v24

    .line 371
    :cond_0
    move-wide/from16 v24, v1

    move-wide/from16 v26, v3

    cmpg-double v24, v24, v26

    if-gez v24, :cond_4

    move-wide/from16 v24, v1

    :goto_1
    move-wide/from16 v16, v24

    .line 372
    .local v16, "cmin":D
    move-wide/from16 v24, v5

    move-wide/from16 v26, v16

    cmpg-double v24, v24, v26

    if-gez v24, :cond_1

    move-wide/from16 v24, v5

    move-wide/from16 v16, v24

    .line 374
    :cond_1
    move-wide/from16 v24, v14

    move-wide/from16 v11, v24

    .line 375
    .local v11, "brightness":D
    move-wide/from16 v24, v14

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_5

    .line 376
    move-wide/from16 v24, v14

    move-wide/from16 v26, v16

    sub-double v24, v24, v26

    move-wide/from16 v26, v14

    div-double v24, v24, v26

    move-wide/from16 v9, v24

    .line 380
    .local v9, "saturation":D
    :goto_2
    move-wide/from16 v24, v9

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_6

    .line 381
    const-wide/16 v24, 0x0

    move-wide/from16 v7, v24

    .line 396
    .local v7, "hue":D
    :cond_2
    :goto_3
    move-object/from16 v24, v13

    const/16 v25, 0x0

    move-wide/from16 v26, v7

    const-wide v28, 0x4076800000000000L    # 360.0

    mul-double v26, v26, v28

    aput-wide v26, v24, v25

    .line 397
    move-object/from16 v24, v13

    const/16 v25, 0x1

    move-wide/from16 v26, v9

    aput-wide v26, v24, v25

    .line 398
    move-object/from16 v24, v13

    const/16 v25, 0x2

    move-wide/from16 v26, v11

    aput-wide v26, v24, v25

    .line 399
    move-object/from16 v24, v13

    move-object/from16 v1, v24

    .end local v1    # "r":D
    return-object v1

    .line 369
    .end local v7    # "hue":D
    .end local v9    # "saturation":D
    .end local v11    # "brightness":D
    .end local v14    # "cmax":D
    .end local v16    # "cmin":D
    .restart local v1    # "r":D
    :cond_3
    move-wide/from16 v24, v3

    goto :goto_0

    .line 371
    .restart local v14    # "cmax":D
    :cond_4
    move-wide/from16 v24, v3

    goto :goto_1

    .line 378
    .restart local v11    # "brightness":D
    .restart local v16    # "cmin":D
    :cond_5
    const-wide/16 v24, 0x0

    move-wide/from16 v9, v24

    .restart local v9    # "saturation":D
    goto :goto_2

    .line 383
    :cond_6
    move-wide/from16 v24, v14

    move-wide/from16 v26, v1

    sub-double v24, v24, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    div-double v24, v24, v26

    move-wide/from16 v18, v24

    .line 384
    .local v18, "redc":D
    move-wide/from16 v24, v14

    move-wide/from16 v26, v3

    sub-double v24, v24, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    div-double v24, v24, v26

    move-wide/from16 v20, v24

    .line 385
    .local v20, "greenc":D
    move-wide/from16 v24, v14

    move-wide/from16 v26, v5

    sub-double v24, v24, v26

    move-wide/from16 v26, v14

    move-wide/from16 v28, v16

    sub-double v26, v26, v28

    div-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 386
    .local v22, "bluec":D
    move-wide/from16 v24, v1

    move-wide/from16 v26, v14

    cmpl-double v24, v24, v26

    if-nez v24, :cond_7

    .line 387
    move-wide/from16 v24, v22

    move-wide/from16 v26, v20

    sub-double v24, v24, v26

    move-wide/from16 v7, v24

    .line 392
    .restart local v7    # "hue":D
    :goto_4
    move-wide/from16 v24, v7

    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    div-double v24, v24, v26

    move-wide/from16 v7, v24

    .line 393
    move-wide/from16 v24, v7

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    .line 394
    move-wide/from16 v24, v7

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    move-wide/from16 v7, v24

    goto/16 :goto_3

    .line 388
    .end local v7    # "hue":D
    :cond_7
    move-wide/from16 v24, v3

    move-wide/from16 v26, v14

    cmpl-double v24, v24, v26

    if-nez v24, :cond_8

    .line 389
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v26, v18

    add-double v24, v24, v26

    move-wide/from16 v26, v22

    sub-double v24, v24, v26

    move-wide/from16 v7, v24

    .restart local v7    # "hue":D
    goto :goto_4

    .line 391
    .end local v7    # "hue":D
    :cond_8
    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    move-wide/from16 v26, v20

    add-double v24, v24, v26

    move-wide/from16 v26, v18

    sub-double v24, v24, v26

    move-wide/from16 v7, v24

    .restart local v7    # "hue":D
    goto :goto_4
.end method

.method public static assertionEnabled()Z
    .locals 4

    .prologue
    .line 841
    const/4 v1, 0x0

    move v0, v1

    .line 842
    .local v0, "assertsEnabled":Z
    sget-boolean v1, Lcom/sun/javafx/util/Utils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v3, v1

    move v1, v3

    move v2, v3

    move v0, v2

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 844
    :cond_0
    move v1, v0

    move v0, v1

    .end local v0    # "assertsEnabled":Z
    return v0
.end method

.method public static calculateBrightness(Ljavafx/scene/paint/Color;)D
    .locals 8

    .prologue
    .line 198
    move-object v1, p0

    .local v1, "color":Ljavafx/scene/paint/Color;
    const-wide v2, 0x3fd3333333333333L    # 0.3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fe2e147ae147ae1L    # 0.59

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3fbc28f5c28f5c29L    # 0.11

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "color":Ljavafx/scene/paint/Color;
    return-wide v1
.end method

.method public static clamp(DDD)D
    .locals 10

    .prologue
    .line 84
    move-wide v0, p0

    .local v0, "min":D
    move-wide v2, p2

    .local v2, "value":D
    move-wide v4, p4

    .local v4, "max":D
    move-wide v6, v2

    move-wide v8, v0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v0

    move-wide v0, v6

    .line 86
    .end local v0    # "min":D
    :goto_0
    return-wide v0

    .line 85
    .restart local v0    # "min":D
    :cond_0
    move-wide v6, v2

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0

    .line 86
    :cond_1
    move-wide v6, v2

    move-wide v0, v6

    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 5

    .prologue
    .line 64
    move v0, p0

    .local v0, "min":F
    move v1, p1

    .local v1, "value":F
    move v2, p2

    .local v2, "max":F
    move v3, v1

    move v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v0

    move v0, v3

    .line 66
    .end local v0    # "min":F
    :goto_0
    return v0

    .line 65
    .restart local v0    # "min":F
    :cond_0
    move v3, v1

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    move v0, v3

    goto :goto_0

    .line 66
    :cond_1
    move v3, v1

    move v0, v3

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 5

    .prologue
    .line 74
    move v0, p0

    .local v0, "min":I
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "max":I
    move v3, v1

    move v4, v0

    if-ge v3, v4, :cond_0

    move v3, v0

    move v0, v3

    .line 76
    .end local v0    # "min":I
    :goto_0
    return v0

    .line 75
    .restart local v0    # "min":I
    :cond_0
    move v3, v1

    move v4, v2

    if-le v3, v4, :cond_1

    move v3, v2

    move v0, v3

    goto :goto_0

    .line 76
    :cond_1
    move v3, v1

    move v0, v3

    goto :goto_0
.end method

.method public static clampMax(II)I
    .locals 4

    .prologue
    .line 103
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "max":I
    move v2, v0

    move v3, v1

    if-le v2, v3, :cond_0

    move v2, v1

    move v0, v2

    .line 104
    .end local v0    # "value":I
    :goto_0
    return v0

    .restart local v0    # "value":I
    :cond_0
    move v2, v0

    move v0, v2

    goto :goto_0
.end method

.method public static clampMin(DD)D
    .locals 8

    .prologue
    .line 94
    move-wide v0, p0

    .local v0, "value":D
    move-wide v2, p2

    .local v2, "min":D
    move-wide v4, v0

    move-wide v6, v2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move-wide v4, v2

    move-wide v0, v4

    .line 95
    .end local v0    # "value":D
    :goto_0
    return-wide v0

    .restart local v0    # "value":D
    :cond_0
    move-wide v4, v0

    move-wide v0, v4

    goto :goto_0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "src":Ljava/lang/String;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 185
    .end local v0    # "src":Ljava/lang/String;
    :goto_0
    return v0

    .line 182
    .restart local v0    # "src":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 183
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 185
    :cond_4
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static convertLinearRGBtoSRGB(Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;
    .locals 13

    .prologue
    .line 421
    move-object v1, p0

    .local v1, "color":Ljavafx/scene/paint/Color;
    const/4 v4, 0x3

    new-array v4, v4, [D

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v7

    aput-wide v7, v5, v6

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/4 v6, 0x1

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v7

    aput-wide v7, v5, v6

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/4 v6, 0x2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v7

    aput-wide v7, v5, v6

    move-object v2, v4

    .line 422
    .local v2, "colors":[D
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 423
    move-object v4, v2

    move v5, v3

    aget-wide v4, v4, v5

    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 424
    move-object v4, v2

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-wide v6, v6, v7

    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 422
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    :cond_0
    move-object v4, v2

    move v5, v3

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    move-object v8, v2

    move v9, v3

    aget-wide v8, v8, v9

    const-wide v10, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1

    .line 429
    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v2

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Ljavafx/scene/paint/Color;->color(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "color":Ljavafx/scene/paint/Color;
    return-object v1
.end method

.method public static convertSRGBtoLinearRGB(Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;
    .locals 13

    .prologue
    .line 406
    move-object v1, p0

    .local v1, "color":Ljavafx/scene/paint/Color;
    const/4 v4, 0x3

    new-array v4, v4, [D

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v7

    aput-wide v7, v5, v6

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/4 v6, 0x1

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v7

    aput-wide v7, v5, v6

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/4 v6, 0x2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v7

    aput-wide v7, v5, v6

    move-object v2, v4

    .line 407
    .local v2, "colors":[D
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 408
    move-object v4, v2

    move v5, v3

    aget-wide v4, v4, v5

    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 409
    move-object v4, v2

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-wide v6, v6, v7

    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 407
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_0
    move-object v4, v2

    move v5, v3

    move-object v6, v2

    move v7, v3

    aget-wide v6, v6, v7

    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v6, v8

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v6, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aput-wide v6, v4, v5

    goto :goto_1

    .line 414
    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v2

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object v8, v2

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Ljavafx/scene/paint/Color;->color(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "color":Ljavafx/scene/paint/Color;
    return-object v1
.end method

.method public static convertUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 23

    .prologue
    .line 888
    move-object/from16 v2, p0

    .local v2, "src":Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v7, v17

    .line 890
    .local v7, "unicodeConversionBp":I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    move-object/from16 v3, v17

    .line 891
    .local v3, "buf":[C
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v5, v17

    .line 892
    .local v5, "buflen":I
    const/16 v17, -0x1

    move/from16 v4, v17

    .line 894
    .local v4, "bp":I
    move/from16 v17, v5

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v17, v0

    move-object/from16 v8, v17

    .line 895
    .local v8, "dst":[C
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 897
    .local v9, "dstIndex":I
    :goto_0
    move/from16 v17, v4

    move/from16 v18, v5

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 898
    move-object/from16 v17, v3

    add-int/lit8 v4, v4, 0x1

    move/from16 v18, v4

    aget-char v17, v17, v18

    move/from16 v6, v17

    .line 899
    .local v6, "ch":C
    move/from16 v17, v6

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 900
    move/from16 v17, v7

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 901
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v3

    move/from16 v18, v4

    aget-char v17, v17, v18

    move/from16 v6, v17

    .line 902
    move/from16 v17, v6

    const/16 v18, 0x75

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 904
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v3

    move/from16 v18, v4

    aget-char v17, v17, v18

    move/from16 v6, v17

    .line 905
    move/from16 v17, v6

    const/16 v18, 0x75

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 906
    move/from16 v17, v4

    const/16 v18, 0x3

    add-int/lit8 v17, v17, 0x3

    move/from16 v10, v17

    .line 907
    .local v10, "limit":I
    move/from16 v17, v10

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 908
    move/from16 v17, v6

    move/from16 v11, v17

    .line 909
    .local v11, "c":C
    move/from16 v17, v11

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    move/from16 v12, v17

    .line 910
    .local v12, "result":I
    move/from16 v17, v12

    if-ltz v17, :cond_1

    move/from16 v17, v11

    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 912
    const-string v17, "0123456789abcdef"

    move/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v6, v17

    .line 914
    :cond_1
    move/from16 v17, v12

    move/from16 v13, v17

    .line 915
    .local v13, "d":I
    move/from16 v17, v13

    move/from16 v14, v17

    .line 916
    .local v14, "code":I
    :goto_1
    move/from16 v17, v4

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    move/from16 v17, v13

    if-ltz v17, :cond_3

    .line 917
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v3

    move/from16 v18, v4

    aget-char v17, v17, v18

    move/from16 v6, v17

    .line 918
    move/from16 v17, v6

    move/from16 v15, v17

    .line 919
    .local v15, "c1":C
    move/from16 v17, v15

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    move/from16 v16, v17

    .line 920
    .local v16, "result1":I
    move/from16 v17, v16

    if-ltz v17, :cond_2

    move/from16 v17, v15

    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 922
    const-string v17, "0123456789abcdef"

    move/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v6, v17

    .line 924
    :cond_2
    move/from16 v17, v16

    move/from16 v13, v17

    .line 925
    move/from16 v17, v14

    const/16 v18, 0x4

    shl-int/lit8 v17, v17, 0x4

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 926
    goto :goto_1

    .line 927
    .end local v15    # "c1":C
    .end local v16    # "result1":I
    :cond_3
    move/from16 v17, v13

    if-ltz v17, :cond_4

    .line 928
    move/from16 v17, v14

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v6, v17

    .line 929
    move/from16 v17, v4

    move/from16 v7, v17

    .line 933
    .line 939
    .end local v10    # "limit":I
    .end local v11    # "c":C
    .end local v12    # "result":I
    .end local v13    # "d":I
    .end local v14    # "code":I
    :cond_4
    :goto_2
    move-object/from16 v17, v8

    move/from16 v18, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v6

    aput-char v19, v17, v18

    goto/16 :goto_0

    .line 934
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 935
    const/16 v17, 0x5c

    move/from16 v6, v17

    goto :goto_2

    .line 942
    .end local v6    # "ch":C
    :cond_6
    new-instance v17, Ljava/lang/String;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v8

    const/16 v20, 0x0

    move/from16 v21, v9

    invoke-direct/range {v18 .. v21}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v2, v17

    .end local v2    # "src":Ljava/lang/String;
    return-object v2
.end method

.method public static deriveColor(Ljavafx/scene/paint/Color;D)Ljavafx/scene/paint/Color;
    .locals 21

    .prologue
    .line 209
    move-object/from16 v1, p0

    .local v1, "c":Ljavafx/scene/paint/Color;
    move-wide/from16 v2, p1

    .local v2, "brightness":D
    move-object v10, v1

    invoke-static {v10}, Lcom/sun/javafx/util/Utils;->calculateBrightness(Ljavafx/scene/paint/Color;)D

    move-result-wide v10

    move-wide v4, v10

    .line 210
    .local v4, "baseBrightness":D
    move-wide v10, v2

    move-wide v6, v10

    .line 212
    .local v6, "calcBrightness":D
    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_9

    .line 213
    move-wide v10, v4

    const-wide v12, 0x3feb333333333333L    # 0.85

    cmpl-double v10, v10, v12

    if-lez v10, :cond_4

    .line 214
    move-wide v10, v6

    const-wide v12, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v10, v12

    move-wide v6, v10

    .line 232
    :cond_0
    :goto_0
    move-wide v10, v6

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_a

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide v6, v10

    .line 234
    :cond_1
    :goto_1
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v14

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/util/Utils;->RGBtoHSB(DDD)[D

    move-result-object v10

    move-object v8, v10

    .line 236
    .local v8, "hsb":[D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_b

    .line 237
    move-object v10, v8

    const/4 v11, 0x1

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, v19

    aget-wide v12, v12, v13

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 238
    move-object v10, v8

    const/4 v11, 0x2

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, v19

    aget-wide v12, v12, v13

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v8

    const/16 v17, 0x2

    aget-wide v16, v16, v17

    sub-double v14, v14, v16

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 243
    :goto_2
    move-object v10, v8

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_c

    move-object v10, v8

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    .line 244
    :cond_2
    :goto_3
    move-object v10, v8

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_d

    move-object v10, v8

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    .line 246
    :cond_3
    :goto_4
    move-object v10, v8

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    double-to-int v10, v10

    int-to-double v10, v10

    move-object v12, v8

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    move-object v14, v8

    const/4 v15, 0x2

    aget-wide v14, v14, v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Ljavafx/scene/paint/Color;->hsb(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v10

    move-object v9, v10

    .line 247
    .local v9, "c2":Ljavafx/scene/paint/Color;
    move-object v10, v8

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    double-to-int v10, v10

    int-to-double v10, v10

    move-object v12, v8

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    move-object v14, v8

    const/4 v15, 0x2

    aget-wide v14, v14, v15

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Ljavafx/scene/paint/Color;->hsb(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v10

    move-object v1, v10

    .end local v1    # "c":Ljavafx/scene/paint/Color;
    return-object v1

    .line 215
    .end local v8    # "hsb":[D
    .end local v9    # "c2":Ljavafx/scene/paint/Color;
    .restart local v1    # "c":Ljavafx/scene/paint/Color;
    :cond_4
    move-wide v10, v4

    const-wide v12, 0x3fe3333333333333L    # 0.6

    cmpl-double v10, v10, v12

    if-lez v10, :cond_5

    goto/16 :goto_0

    .line 217
    :cond_5
    move-wide v10, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    .line 218
    move-wide v10, v6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v10, v12

    move-wide v6, v10

    goto/16 :goto_0

    .line 219
    :cond_6
    move-wide v10, v4

    const-wide v12, 0x3fd999999999999aL    # 0.4

    cmpl-double v10, v10, v12

    if-lez v10, :cond_7

    .line 220
    move-wide v10, v6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v10, v12

    move-wide v6, v10

    goto/16 :goto_0

    .line 221
    :cond_7
    move-wide v10, v4

    const-wide v12, 0x3fd3333333333333L    # 0.3

    cmpl-double v10, v10, v12

    if-lez v10, :cond_8

    .line 222
    move-wide v10, v6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v10, v12

    move-wide v6, v10

    goto/16 :goto_0

    .line 224
    :cond_8
    move-wide v10, v6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    move-wide v6, v10

    goto/16 :goto_0

    .line 227
    :cond_9
    move-wide v10, v4

    const-wide v12, 0x3fc999999999999aL    # 0.2

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    .line 228
    move-wide v10, v6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v10, v12

    move-wide v6, v10

    goto/16 :goto_0

    .line 232
    :cond_a
    move-wide v10, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v6, v10

    goto/16 :goto_1

    .line 240
    .restart local v8    # "hsb":[D
    :cond_b
    move-object v10, v8

    const/4 v11, 0x2

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, v19

    aget-wide v12, v12, v13

    move-wide v14, v6

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    goto/16 :goto_2

    .line 243
    :cond_c
    move-object v10, v8

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    move-object v10, v8

    const/4 v11, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v10, v11

    goto/16 :goto_3

    .line 244
    :cond_d
    move-object v10, v8

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    move-object v10, v8

    const/4 v11, 0x2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v10, v11

    goto/16 :goto_4
.end method

.method private static getBounds(Ljava/lang/Object;)Ljavafx/geometry/Bounds;
    .locals 15

    .prologue
    .line 601
    move-object v1, p0

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/Node;

    if-eqz v4, :cond_1

    .line 602
    move-object v4, v1

    check-cast v4, Ljavafx/scene/Node;

    move-object v2, v4

    .line 603
    .local v2, "n":Ljavafx/scene/Node;
    move-object v4, v2

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->localToScreen(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v3, v4

    .line 604
    .local v3, "b":Ljavafx/geometry/Bounds;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    :goto_0
    move-object v1, v4

    .line 609
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "b":Ljavafx/geometry/Bounds;
    :goto_1
    return-object v1

    .line 604
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "n":Ljavafx/scene/Node;
    .restart local v3    # "b":Ljavafx/geometry/Bounds;
    :cond_0
    new-instance v4, Ljavafx/geometry/BoundingBox;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    goto :goto_0

    .line 605
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "b":Ljavafx/geometry/Bounds;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljavafx/stage/Window;

    if-eqz v4, :cond_2

    .line 606
    move-object v4, v1

    check-cast v4, Ljavafx/stage/Window;

    move-object v2, v4

    .line 607
    .local v2, "window":Ljavafx/stage/Window;
    new-instance v4, Ljavafx/geometry/BoundingBox;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/stage/Window;->getX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/stage/Window;->getY()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/stage/Window;->getHeight()D

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v1, v4

    goto :goto_1

    .line 609
    .end local v2    # "window":Ljavafx/stage/Window;
    :cond_2
    new-instance v4, Ljavafx/geometry/BoundingBox;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v1, v4

    goto :goto_1
.end method

.method private static getHPosOpposite(Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/HPos;
    .locals 4

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "hpos":Ljavafx/geometry/HPos;
    move-object v1, p1

    .local v1, "vpos":Ljavafx/geometry/VPos;
    move-object v2, v1

    sget-object v3, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    if-ne v2, v3, :cond_3

    .line 619
    move-object v2, v0

    sget-object v3, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    if-ne v2, v3, :cond_0

    .line 620
    sget-object v2, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    move-object v0, v2

    .line 630
    .end local v0    # "hpos":Ljavafx/geometry/HPos;
    :goto_0
    return-object v0

    .line 621
    .restart local v0    # "hpos":Ljavafx/geometry/HPos;
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    if-ne v2, v3, :cond_1

    .line 622
    sget-object v2, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    move-object v0, v2

    goto :goto_0

    .line 623
    :cond_1
    move-object v2, v0

    sget-object v3, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    if-ne v2, v3, :cond_2

    .line 624
    sget-object v2, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    move-object v0, v2

    goto :goto_0

    .line 627
    :cond_2
    sget-object v2, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    move-object v0, v2

    goto :goto_0

    .line 630
    :cond_3
    sget-object v2, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    move-object v0, v2

    goto :goto_0
.end method

.method private static getIntersectionLength(DDDD)D
    .locals 14

    .prologue
    .line 790
    move-wide v0, p0

    .local v0, "a0":D
    move-wide/from16 v2, p2

    .local v2, "a1":D
    move-wide/from16 v4, p4

    .local v4, "b0":D
    move-wide/from16 v6, p6

    .local v6, "b1":D
    move-wide v8, v0

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    move-wide v8, v4

    move-wide v10, v6

    move-wide v12, v2

    invoke-static/range {v8 .. v13}, Lcom/sun/javafx/util/Utils;->getIntersectionLengthImpl(DDD)D

    move-result-wide v8

    .line 791
    :goto_0
    move-wide v0, v8

    .end local v0    # "a0":D
    return-wide v0

    .line 790
    .restart local v0    # "a0":D
    :cond_0
    move-wide v8, v0

    move-wide v10, v2

    move-wide v12, v6

    .line 791
    invoke-static/range {v8 .. v13}, Lcom/sun/javafx/util/Utils;->getIntersectionLengthImpl(DDD)D

    move-result-wide v8

    goto :goto_0
.end method

.method private static getIntersectionLengthImpl(DDD)D
    .locals 10

    .prologue
    .line 797
    move-wide v0, p0

    .local v0, "v0":D
    move-wide v2, p2

    .local v2, "v1":D
    move-wide v4, p4

    .local v4, "v":D
    move-wide v6, v4

    move-wide v8, v0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 798
    const-wide/16 v6, 0x0

    move-wide v0, v6

    .line 801
    .end local v0    # "v0":D
    :goto_0
    return-wide v0

    .restart local v0    # "v0":D
    :cond_0
    move-wide v6, v4

    move-wide v8, v2

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1

    move-wide v6, v4

    move-wide v8, v0

    sub-double/2addr v6, v8

    :goto_1
    move-wide v0, v6

    goto :goto_0

    :cond_1
    move-wide v6, v2

    move-wide v8, v0

    sub-double/2addr v6, v8

    goto :goto_1
.end method

.method private static getOuterDistance(DDD)D
    .locals 10

    .prologue
    .line 823
    move-wide v0, p0

    .local v0, "v0":D
    move-wide v2, p2

    .local v2, "v1":D
    move-wide v4, p4

    .local v4, "v":D
    move-wide v6, v4

    move-wide v8, v0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 824
    move-wide v6, v0

    move-wide v8, v4

    sub-double/2addr v6, v8

    move-wide v0, v6

    .line 831
    .end local v0    # "v0":D
    :goto_0
    return-wide v0

    .line 827
    .restart local v0    # "v0":D
    :cond_0
    move-wide v6, v4

    move-wide v8, v2

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    .line 828
    move-wide v6, v4

    move-wide v8, v2

    sub-double/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 831
    :cond_1
    const-wide/16 v6, 0x0

    move-wide v0, v6

    goto :goto_0
.end method

.method private static getOuterDistance(DDDD)D
    .locals 12

    .prologue
    .line 808
    move-wide v0, p0

    .local v0, "a0":D
    move-wide v2, p2

    .local v2, "a1":D
    move-wide/from16 v4, p4

    .local v4, "b0":D
    move-wide/from16 v6, p6

    .local v6, "b1":D
    move-wide v8, v2

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 809
    move-wide v8, v4

    move-wide v10, v2

    sub-double/2addr v8, v10

    move-wide v0, v8

    .line 816
    .end local v0    # "a0":D
    :goto_0
    return-wide v0

    .line 812
    .restart local v0    # "a0":D
    :cond_0
    move-wide v8, v6

    move-wide v10, v0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_1

    .line 813
    move-wide v8, v6

    move-wide v10, v0

    sub-double/2addr v8, v10

    move-wide v0, v8

    goto :goto_0

    .line 816
    :cond_1
    const-wide/16 v8, 0x0

    move-wide v0, v8

    goto :goto_0
.end method

.method public static getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;
    .locals 15

    .prologue
    .line 685
    move-object v1, p0

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/util/Utils;->getBounds(Ljava/lang/Object;)Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v2, v4

    .line 687
    .local v2, "parentBounds":Ljavafx/geometry/Bounds;
    new-instance v4, Ljavafx/geometry/Rectangle2D;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v2

    .line 688
    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v6

    move-object v8, v2

    .line 689
    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v8

    move-object v10, v2

    .line 690
    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v10

    move-object v12, v2

    .line 691
    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    move-object v3, v4

    .line 693
    .local v3, "rect":Ljavafx/geometry/Rectangle2D;
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/util/Utils;->getScreenForRectangle(Ljavafx/geometry/Rectangle2D;)Ljavafx/stage/Screen;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "obj":Ljava/lang/Object;
    return-object v1
.end method

.method public static getScreenForPoint(DD)Ljavafx/stage/Screen;
    .locals 24

    .prologue
    .line 750
    move-wide/from16 v1, p0

    .local v1, "x":D
    move-wide/from16 v3, p2

    .local v3, "y":D
    invoke-static {}, Ljavafx/stage/Screen;->getScreens()Ljavafx/collections/ObservableList;

    move-result-object v18

    move-object/from16 v5, v18

    .line 753
    .local v5, "screens":Ljava/util/List;, "Ljava/util/List<Ljavafx/stage/Screen;>;"
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v6, v18

    :goto_0
    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/stage/Screen;

    move-object/from16 v7, v18

    .line 756
    .local v7, "screen":Ljavafx/stage/Screen;
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v18

    move-object/from16 v8, v18

    .line 757
    .local v8, "screenBounds":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v18, v1

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_0

    move-wide/from16 v18, v1

    move-object/from16 v20, v8

    .line 758
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_0

    move-wide/from16 v18, v3

    move-object/from16 v20, v8

    .line 759
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_0

    move-wide/from16 v18, v3

    move-object/from16 v20, v8

    .line 760
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_0

    .line 761
    move-object/from16 v18, v7

    move-object/from16 v1, v18

    .line 783
    .end local v1    # "x":D
    .end local v7    # "screen":Ljavafx/stage/Screen;
    .end local v8    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :goto_1
    return-object v1

    .line 763
    .restart local v1    # "x":D
    .restart local v7    # "screen":Ljavafx/stage/Screen;
    .restart local v8    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_0
    goto :goto_0

    .line 766
    .end local v7    # "screen":Ljavafx/stage/Screen;
    .end local v8    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_1
    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v18

    move-object/from16 v6, v18

    .line 767
    .local v6, "selectedScreen":Ljavafx/stage/Screen;
    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v7, v18

    .line 768
    .local v7, "minDistance":D
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v9, v18

    :goto_2
    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/stage/Screen;

    move-object/from16 v10, v18

    .line 769
    .local v10, "screen":Ljavafx/stage/Screen;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v18

    move-object/from16 v11, v18

    .line 770
    .local v11, "screenBounds":Ljavafx/geometry/Rectangle2D;
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v18

    move-object/from16 v20, v11

    .line 771
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    move-wide/from16 v22, v1

    .line 770
    invoke-static/range {v18 .. v23}, Lcom/sun/javafx/util/Utils;->getOuterDistance(DDD)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 773
    .local v12, "dx":D
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v18

    move-object/from16 v20, v11

    .line 774
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v20

    move-wide/from16 v22, v3

    .line 773
    invoke-static/range {v18 .. v23}, Lcom/sun/javafx/util/Utils;->getOuterDistance(DDD)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 776
    .local v14, "dy":D
    move-wide/from16 v18, v12

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    move-wide/from16 v20, v14

    move-wide/from16 v22, v14

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 777
    .local v16, "distance":D
    move-wide/from16 v18, v7

    move-wide/from16 v20, v16

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_2

    .line 778
    move-wide/from16 v18, v16

    move-wide/from16 v7, v18

    .line 779
    move-object/from16 v18, v10

    move-object/from16 v6, v18

    .line 781
    :cond_2
    goto :goto_2

    .line 783
    .end local v10    # "screen":Ljavafx/stage/Screen;
    .end local v11    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    .end local v12    # "dx":D
    .end local v14    # "dy":D
    .end local v16    # "distance":D
    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v1, v18

    goto :goto_1
.end method

.method public static getScreenForRectangle(Ljavafx/geometry/Rectangle2D;)Ljavafx/stage/Screen;
    .locals 34

    .prologue
    .line 697
    move-object/from16 v0, p0

    .local v0, "rect":Ljavafx/geometry/Rectangle2D;
    invoke-static {}, Ljavafx/stage/Screen;->getScreens()Ljavafx/collections/ObservableList;

    move-result-object v24

    move-object/from16 v1, v24

    .line 699
    .local v1, "screens":Ljava/util/List;, "Ljava/util/List<Ljavafx/stage/Screen;>;"
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v24

    move-wide/from16 v2, v24

    .line 700
    .local v2, "rectX0":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v24

    move-wide/from16 v4, v24

    .line 701
    .local v4, "rectX1":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 702
    .local v6, "rectY0":D
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 706
    .local v8, "rectY1":D
    const/16 v24, 0x0

    move-object/from16 v10, v24

    .line 707
    .local v10, "selectedScreen":Ljavafx/stage/Screen;
    const-wide/16 v24, 0x0

    move-wide/from16 v11, v24

    .line 708
    .local v11, "maxIntersection":D
    move-object/from16 v24, v1

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v13, v24

    :goto_0
    move-object/from16 v24, v13

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v24, v13

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/stage/Screen;

    move-object/from16 v14, v24

    .line 709
    .local v14, "screen":Ljavafx/stage/Screen;
    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v24

    move-object/from16 v15, v24

    .line 710
    .local v15, "screenBounds":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v24, v2

    move-wide/from16 v26, v4

    move-object/from16 v28, v15

    .line 712
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v28

    move-object/from16 v30, v15

    .line 713
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v30

    .line 711
    invoke-static/range {v24 .. v31}, Lcom/sun/javafx/util/Utils;->getIntersectionLength(DDDD)D

    move-result-wide v24

    move-wide/from16 v26, v6

    move-wide/from16 v28, v8

    move-object/from16 v30, v15

    .line 715
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v30

    move-object/from16 v32, v15

    .line 716
    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v32

    .line 714
    invoke-static/range {v26 .. v33}, Lcom/sun/javafx/util/Utils;->getIntersectionLength(DDDD)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v16, v24

    .line 718
    .local v16, "intersection":D
    move-wide/from16 v24, v11

    move-wide/from16 v26, v16

    cmpg-double v24, v24, v26

    if-gez v24, :cond_0

    .line 719
    move-wide/from16 v24, v16

    move-wide/from16 v11, v24

    .line 720
    move-object/from16 v24, v14

    move-object/from16 v10, v24

    .line 722
    :cond_0
    goto :goto_0

    .line 724
    .end local v14    # "screen":Ljavafx/stage/Screen;
    .end local v15    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    .end local v16    # "intersection":D
    :cond_1
    move-object/from16 v24, v10

    if-eqz v24, :cond_2

    .line 725
    move-object/from16 v24, v10

    move-object/from16 v0, v24

    .line 746
    .end local v0    # "rect":Ljavafx/geometry/Rectangle2D;
    :goto_1
    return-object v0

    .line 728
    .restart local v0    # "rect":Ljavafx/geometry/Rectangle2D;
    :cond_2
    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v24

    move-object/from16 v10, v24

    .line 729
    const-wide v24, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v13, v24

    .line 730
    .local v13, "minDistance":D
    move-object/from16 v24, v1

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v15, v24

    :goto_2
    move-object/from16 v24, v15

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v24, v15

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/stage/Screen;

    move-object/from16 v16, v24

    .line 731
    .local v16, "screen":Ljavafx/stage/Screen;
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v24

    move-object/from16 v17, v24

    .line 732
    .local v17, "screenBounds":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v24, v2

    move-wide/from16 v26, v4

    move-object/from16 v28, v17

    .line 733
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v28

    move-object/from16 v30, v17

    .line 734
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v30

    .line 732
    invoke-static/range {v24 .. v31}, Lcom/sun/javafx/util/Utils;->getOuterDistance(DDDD)D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 735
    .local v18, "dx":D
    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-object/from16 v28, v17

    .line 736
    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v28

    move-object/from16 v30, v17

    .line 737
    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v30

    .line 735
    invoke-static/range {v24 .. v31}, Lcom/sun/javafx/util/Utils;->getOuterDistance(DDDD)D

    move-result-wide v24

    move-wide/from16 v20, v24

    .line 738
    .local v20, "dy":D
    move-wide/from16 v24, v18

    move-wide/from16 v26, v18

    mul-double v24, v24, v26

    move-wide/from16 v26, v20

    move-wide/from16 v28, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 740
    .local v22, "distance":D
    move-wide/from16 v24, v13

    move-wide/from16 v26, v22

    cmpl-double v24, v24, v26

    if-lez v24, :cond_3

    .line 741
    move-wide/from16 v24, v22

    move-wide/from16 v13, v24

    .line 742
    move-object/from16 v24, v16

    move-object/from16 v10, v24

    .line 744
    :cond_3
    goto :goto_2

    .line 746
    .end local v16    # "screen":Ljavafx/stage/Screen;
    .end local v17    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    .end local v18    # "dx":D
    .end local v20    # "dy":D
    .end local v22    # "distance":D
    :cond_4
    move-object/from16 v24, v10

    move-object/from16 v0, v24

    goto/16 :goto_1
.end method

.method private static getVPosOpposite(Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/VPos;
    .locals 4

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "hpos":Ljavafx/geometry/HPos;
    move-object v1, p1

    .local v1, "vpos":Ljavafx/geometry/VPos;
    move-object v2, v0

    sget-object v3, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    if-ne v2, v3, :cond_4

    .line 640
    move-object v2, v1

    sget-object v3, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    if-ne v2, v3, :cond_0

    .line 641
    sget-object v2, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object v0, v2

    .line 653
    .end local v0    # "hpos":Ljavafx/geometry/HPos;
    :goto_0
    return-object v0

    .line 642
    .restart local v0    # "hpos":Ljavafx/geometry/HPos;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    if-ne v2, v3, :cond_1

    .line 643
    sget-object v2, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    move-object v0, v2

    goto :goto_0

    .line 644
    :cond_1
    move-object v2, v1

    sget-object v3, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    if-ne v2, v3, :cond_2

    .line 645
    sget-object v2, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    move-object v0, v2

    goto :goto_0

    .line 646
    :cond_2
    move-object v2, v1

    sget-object v3, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    if-ne v2, v3, :cond_3

    .line 647
    sget-object v2, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    move-object v0, v2

    goto :goto_0

    .line 650
    :cond_3
    sget-object v2, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    move-object v0, v2

    goto :goto_0

    .line 653
    :cond_4
    sget-object v2, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    move-object v0, v2

    goto :goto_0
.end method

.method public static hasFullScreenStage(Ljavafx/stage/Screen;)Z
    .locals 6

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "screen":Ljavafx/stage/Screen;
    invoke-static {}, Lcom/sun/javafx/stage/StageHelper;->getStages()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v1, v4

    .line 660
    .local v1, "allStages":Ljava/util/List;, "Ljava/util/List<Ljavafx/stage/Stage;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/stage/Stage;

    move-object v3, v4

    .line 661
    .local v3, "stage":Ljavafx/stage/Stage;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/stage/Stage;->isFullScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 662
    const/4 v4, 0x1

    move v0, v4

    .line 666
    .end local v0    # "screen":Ljavafx/stage/Screen;
    .end local v3    # "stage":Ljavafx/stage/Stage;
    :goto_1
    return v0

    .line 664
    .restart local v0    # "screen":Ljavafx/stage/Screen;
    .restart local v3    # "stage":Ljavafx/stage/Stage;
    :cond_0
    goto :goto_0

    .line 666
    .end local v3    # "stage":Ljavafx/stage/Stage;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private static interpolateLinear(DLjavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;
    .locals 18

    .prologue
    .line 275
    move-wide/from16 v0, p0

    .local v0, "position":D
    move-object/from16 v2, p2

    .local v2, "color1":Ljavafx/scene/paint/Color;
    move-object/from16 v3, p3

    .local v3, "color2":Ljavafx/scene/paint/Color;
    move-object v6, v2

    invoke-static {v6}, Lcom/sun/javafx/util/Utils;->convertSRGBtoLinearRGB(Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;

    move-result-object v6

    move-object v4, v6

    .line 276
    .local v4, "c1Linear":Ljavafx/scene/paint/Color;
    move-object v6, v3

    invoke-static {v6}, Lcom/sun/javafx/util/Utils;->convertSRGBtoLinearRGB(Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;

    move-result-object v6

    move-object v5, v6

    .line 277
    .local v5, "c2Linear":Ljavafx/scene/paint/Color;
    move-object v6, v4

    .line 278
    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v6

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object v8, v4

    .line 279
    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v8

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v4

    .line 280
    invoke-virtual {v10}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v10

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-object v12, v4

    .line 281
    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v12

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v14

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 277
    invoke-static/range {v6 .. v13}, Ljavafx/scene/paint/Color;->color(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/util/Utils;->convertLinearRGBtoSRGB(Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "position":D
    return-object v0
.end method

.method public static isMac()Z
    .locals 1

    .prologue
    .line 858
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v0

    return v0
.end method

.method public static isQVGAScreen()Z
    .locals 6

    .prologue
    .line 673
    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v2

    move-object v1, v2

    .line 674
    .local v1, "bounds":Ljavafx/geometry/Rectangle2D;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v2

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v1

    .line 675
    invoke-virtual {v2}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v2

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "bounds":Ljavafx/geometry/Rectangle2D;
    return v1

    .restart local v1    # "bounds":Ljavafx/geometry/Rectangle2D;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUnix()Z
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isUnix()Z

    move-result v0

    return v0
.end method

.method public static isWindows()Z
    .locals 1

    .prologue
    .line 851
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v0

    return v0
.end method

.method private static ladder(D[Ljavafx/scene/paint/Stop;)Ljavafx/scene/paint/Color;
    .locals 12

    .prologue
    .line 289
    move-wide v0, p0

    .local v0, "position":D
    move-object v2, p2

    .local v2, "stops":[Ljavafx/scene/paint/Stop;
    const/4 v6, 0x0

    move-object v3, v6

    .line 290
    .local v3, "prevStop":Ljavafx/scene/paint/Stop;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 291
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 292
    .local v5, "stop":Ljavafx/scene/paint/Stop;
    move-wide v6, v0

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1

    .line 293
    move-object v6, v3

    if-nez v6, :cond_0

    .line 294
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v6

    move-object v0, v6

    .line 302
    .end local v0    # "position":D
    .end local v5    # "stop":Ljavafx/scene/paint/Stop;
    :goto_1
    return-object v0

    .line 296
    .restart local v0    # "position":D
    .restart local v5    # "stop":Ljavafx/scene/paint/Stop;
    :cond_0
    move-wide v6, v0

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/util/Utils;->interpolateLinear(DLjavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)Ljavafx/scene/paint/Color;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 299
    :cond_1
    move-object v6, v5

    move-object v3, v6

    .line 290
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .end local v5    # "stop":Ljavafx/scene/paint/Stop;
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public static ladder(Ljavafx/scene/paint/Color;[Ljavafx/scene/paint/Stop;)Ljavafx/scene/paint/Color;
    .locals 5

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "color":Ljavafx/scene/paint/Color;
    move-object v1, p1

    .local v1, "stops":[Ljavafx/scene/paint/Stop;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/util/Utils;->calculateBrightness(Ljavafx/scene/paint/Color;)D

    move-result-wide v2

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/util/Utils;->ladder(D[Ljavafx/scene/paint/Stop;)Ljavafx/scene/paint/Color;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "color":Ljavafx/scene/paint/Color;
    return-object v0
.end method

.method public static nearest(DDD)D
    .locals 14

    .prologue
    .line 113
    move-wide v0, p0

    .local v0, "less":D
    move-wide/from16 v2, p2

    .local v2, "value":D
    move-wide/from16 v4, p4

    .local v4, "more":D
    move-wide v10, v2

    move-wide v12, v0

    sub-double/2addr v10, v12

    move-wide v6, v10

    .line 114
    .local v6, "lessDiff":D
    move-wide v10, v4

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-wide v8, v10

    .line 115
    .local v8, "moreDiff":D
    move-wide v10, v6

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    move-wide v10, v0

    move-wide v0, v10

    .line 116
    .end local v0    # "less":D
    :goto_0
    return-wide v0

    .restart local v0    # "less":D
    :cond_0
    move-wide v10, v4

    move-wide v0, v10

    goto :goto_0
.end method

.method public static pointRelativeTo(Ljava/lang/Object;DDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/Point2D;
    .locals 25

    .prologue
    .line 499
    move-object/from16 v0, p0

    .local v0, "parent":Ljava/lang/Object;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide/from16 v3, p3

    .local v3, "height":D
    move-wide/from16 v5, p5

    .local v5, "screenX":D
    move-wide/from16 v7, p7

    .local v7, "screenY":D
    move-object/from16 v9, p9

    .local v9, "hpos":Ljavafx/geometry/HPos;
    move-object/from16 v10, p10

    .local v10, "vpos":Ljavafx/geometry/VPos;
    move-wide/from16 v18, v5

    move-wide/from16 v11, v18

    .line 500
    .local v11, "finalScreenX":D
    move-wide/from16 v18, v7

    move-wide/from16 v13, v18

    .line 501
    .local v13, "finalScreenY":D
    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/util/Utils;->getBounds(Ljava/lang/Object;)Ljavafx/geometry/Bounds;

    move-result-object v18

    move-object/from16 v15, v18

    .line 504
    .local v15, "parentBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v18

    move-object/from16 v16, v18

    .line 505
    .local v16, "currentScreen":Ljavafx/stage/Screen;
    move-object/from16 v18, v16

    .line 506
    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/util/Utils;->hasFullScreenStage(Ljavafx/stage/Screen;)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v18, v16

    .line 507
    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v18

    .line 508
    :goto_0
    move-object/from16 v17, v18

    .line 514
    .local v17, "screenBounds":Ljavafx/geometry/Rectangle2D;
    move-object/from16 v18, v9

    if-eqz v18, :cond_1

    .line 516
    move-wide/from16 v18, v11

    move-wide/from16 v20, v1

    add-double v18, v18, v20

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    .line 517
    move-object/from16 v18, v15

    move-wide/from16 v19, v1

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-static/range {v21 .. v22}, Lcom/sun/javafx/util/Utils;->getHPosOpposite(Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/HPos;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/util/Utils;->positionX(Ljavafx/geometry/Bounds;DLjavafx/geometry/HPos;)D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 521
    :cond_0
    move-wide/from16 v18, v11

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_1

    .line 522
    move-object/from16 v18, v15

    move-wide/from16 v19, v1

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-static/range {v21 .. v22}, Lcom/sun/javafx/util/Utils;->getHPosOpposite(Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/HPos;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/util/Utils;->positionX(Ljavafx/geometry/Bounds;DLjavafx/geometry/HPos;)D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 526
    :cond_1
    move-object/from16 v18, v10

    if-eqz v18, :cond_3

    .line 528
    move-wide/from16 v18, v13

    move-wide/from16 v20, v3

    add-double v18, v18, v20

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-lez v18, :cond_2

    .line 529
    move-object/from16 v18, v15

    move-wide/from16 v19, v3

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-static/range {v21 .. v22}, Lcom/sun/javafx/util/Utils;->getVPosOpposite(Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/VPos;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/util/Utils;->positionY(Ljavafx/geometry/Bounds;DLjavafx/geometry/VPos;)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 533
    :cond_2
    move-wide/from16 v18, v13

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_3

    .line 534
    move-object/from16 v18, v15

    move-wide/from16 v19, v3

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-static/range {v21 .. v22}, Lcom/sun/javafx/util/Utils;->getVPosOpposite(Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/VPos;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/util/Utils;->positionY(Ljavafx/geometry/Bounds;DLjavafx/geometry/VPos;)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 542
    :cond_3
    move-wide/from16 v18, v11

    move-wide/from16 v20, v1

    add-double v18, v18, v20

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-lez v18, :cond_4

    .line 543
    move-wide/from16 v18, v11

    move-wide/from16 v20, v11

    move-wide/from16 v22, v1

    add-double v20, v20, v22

    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v22

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v11, v18

    .line 545
    :cond_4
    move-wide/from16 v18, v11

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_5

    .line 546
    move-object/from16 v18, v17

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 548
    :cond_5
    move-wide/from16 v18, v13

    move-wide/from16 v20, v3

    add-double v18, v18, v20

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-lez v18, :cond_6

    .line 549
    move-wide/from16 v18, v13

    move-wide/from16 v20, v13

    move-wide/from16 v22, v3

    add-double v20, v20, v22

    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v22

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v13, v18

    .line 551
    :cond_6
    move-wide/from16 v18, v13

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    .line 552
    move-object/from16 v18, v17

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 555
    :cond_7
    new-instance v18, Ljavafx/geometry/Point2D;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    invoke-direct/range {v19 .. v23}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v0, v18

    .end local v0    # "parent":Ljava/lang/Object;
    return-object v0

    .line 507
    .end local v17    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    .restart local v0    # "parent":Ljava/lang/Object;
    :cond_8
    move-object/from16 v18, v16

    .line 508
    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Screen;->getVisualBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v18

    goto/16 :goto_0
.end method

.method public static pointRelativeTo(Ljavafx/scene/Node;DDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;DDZ)Ljavafx/geometry/Point2D;
    .locals 35

    .prologue
    .line 451
    move-object/from16 v3, p0

    .local v3, "parent":Ljavafx/scene/Node;
    move-wide/from16 v4, p1

    .local v4, "anchorWidth":D
    move-wide/from16 v6, p3

    .local v6, "anchorHeight":D
    move-object/from16 v8, p5

    .local v8, "hpos":Ljavafx/geometry/HPos;
    move-object/from16 v9, p6

    .local v9, "vpos":Ljavafx/geometry/VPos;
    move-wide/from16 v10, p7

    .local v10, "dx":D
    move-wide/from16 v12, p9

    .local v12, "dy":D
    move/from16 v14, p11

    .local v14, "reposition":Z
    move-object/from16 v22, v3

    invoke-static/range {v22 .. v22}, Lcom/sun/javafx/util/Utils;->getBounds(Ljava/lang/Object;)Ljavafx/geometry/Bounds;

    move-result-object v22

    move-object/from16 v15, v22

    .line 452
    .local v15, "parentBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v22

    move-object/from16 v16, v22

    .line 453
    .local v16, "scene":Ljavafx/scene/Scene;
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v22

    move-object/from16 v17, v22

    .line 455
    .local v17, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object/from16 v22, v17

    sget-object v23, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 456
    move-object/from16 v22, v8

    sget-object v23, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 457
    sget-object v22, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    move-object/from16 v8, v22

    .line 461
    :cond_0
    :goto_0
    move-wide/from16 v22, v10

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    mul-double v22, v22, v24

    move-wide/from16 v10, v22

    .line 464
    :cond_1
    move-object/from16 v22, v15

    move-wide/from16 v23, v4

    move-object/from16 v25, v8

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/util/Utils;->positionX(Ljavafx/geometry/Bounds;DLjavafx/geometry/HPos;)D

    move-result-wide v22

    move-wide/from16 v24, v10

    add-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 465
    .local v18, "layoutX":D
    move-object/from16 v22, v15

    move-wide/from16 v23, v6

    move-object/from16 v25, v9

    invoke-static/range {v22 .. v25}, Lcom/sun/javafx/util/Utils;->positionY(Ljavafx/geometry/Bounds;DLjavafx/geometry/VPos;)D

    move-result-wide v22

    move-wide/from16 v24, v12

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 467
    .local v20, "layoutY":D
    move-object/from16 v22, v17

    sget-object v23, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v22, v8

    sget-object v23, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 469
    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Ljavafx/stage/Stage;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 470
    move-wide/from16 v22, v18

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 476
    :cond_2
    :goto_1
    move/from16 v22, v14

    if-eqz v22, :cond_5

    .line 477
    move-object/from16 v22, v3

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move-wide/from16 v27, v18

    move-wide/from16 v29, v20

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    invoke-static/range {v22 .. v32}, Lcom/sun/javafx/util/Utils;->pointRelativeTo(Ljava/lang/Object;DDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)Ljavafx/geometry/Point2D;

    move-result-object v22

    move-object/from16 v3, v22

    .line 479
    .end local v3    # "parent":Ljavafx/scene/Node;
    :goto_2
    return-object v3

    .line 458
    .end local v18    # "layoutX":D
    .end local v20    # "layoutY":D
    .restart local v3    # "parent":Ljavafx/scene/Node;
    :cond_3
    move-object/from16 v22, v8

    sget-object v23, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 459
    sget-object v22, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    move-object/from16 v8, v22

    goto/16 :goto_0

    .line 472
    .restart local v18    # "layoutX":D
    .restart local v20    # "layoutY":D
    :cond_4
    move-wide/from16 v22, v18

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-wide/from16 v24, v4

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    goto :goto_1

    .line 479
    :cond_5
    new-instance v22, Ljavafx/geometry/Point2D;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    move-wide/from16 v24, v18

    move-wide/from16 v26, v20

    invoke-direct/range {v23 .. v27}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v3, v22

    goto :goto_2
.end method

.method public static pointRelativeTo(Ljavafx/scene/Node;Ljavafx/scene/Node;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;DDZ)Ljavafx/geometry/Point2D;
    .locals 26

    .prologue
    .line 442
    move-object/from16 v0, p0

    .local v0, "parent":Ljavafx/scene/Node;
    move-object/from16 v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object/from16 v2, p2

    .local v2, "hpos":Ljavafx/geometry/HPos;
    move-object/from16 v3, p3

    .local v3, "vpos":Ljavafx/geometry/VPos;
    move-wide/from16 v4, p4

    .local v4, "dx":D
    move-wide/from16 v6, p6

    .local v6, "dy":D
    move/from16 v8, p8

    .local v8, "reposition":Z
    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v13

    move-wide v9, v13

    .line 443
    .local v9, "nodeWidth":D
    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v13

    move-wide v11, v13

    .line 444
    .local v11, "nodeHeight":D
    move-object v13, v0

    move-wide v14, v9

    move-wide/from16 v16, v11

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move/from16 v24, v8

    invoke-static/range {v13 .. v24}, Lcom/sun/javafx/util/Utils;->pointRelativeTo(Ljavafx/scene/Node;DDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;DDZ)Ljavafx/geometry/Point2D;

    move-result-object v13

    move-object v0, v13

    .end local v0    # "parent":Ljavafx/scene/Node;
    return-object v0
.end method

.method private static positionX(Ljavafx/geometry/Bounds;DLjavafx/geometry/HPos;)D
    .locals 9

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "parentBounds":Ljavafx/geometry/Bounds;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, p3

    .local v3, "hpos":Ljavafx/geometry/HPos;
    move-object v4, v3

    sget-object v5, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    if-ne v4, v5, :cond_0

    .line 566
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v4

    move-wide v0, v4

    .line 572
    .end local v0    # "parentBounds":Ljavafx/geometry/Bounds;
    :goto_0
    return-wide v0

    .line 567
    .restart local v0    # "parentBounds":Ljavafx/geometry/Bounds;
    :cond_0
    move-object v4, v3

    sget-object v5, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    if-ne v4, v5, :cond_1

    .line 568
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 569
    :cond_1
    move-object v4, v3

    sget-object v5, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    if-ne v4, v5, :cond_2

    .line 570
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v4

    move-wide v6, v1

    sub-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 572
    :cond_2
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0
.end method

.method private static positionY(Ljavafx/geometry/Bounds;DLjavafx/geometry/VPos;)D
    .locals 9

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "parentBounds":Ljavafx/geometry/Bounds;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, p3

    .local v3, "vpos":Ljavafx/geometry/VPos;
    move-object v4, v3

    sget-object v5, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    if-ne v4, v5, :cond_0

    .line 585
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v4

    move-wide v0, v4

    .line 591
    .end local v0    # "parentBounds":Ljavafx/geometry/Bounds;
    :goto_0
    return-wide v0

    .line 586
    .restart local v0    # "parentBounds":Ljavafx/geometry/Bounds;
    :cond_0
    move-object v4, v3

    sget-object v5, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    if-ne v4, v5, :cond_1

    .line 587
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 588
    :cond_1
    move-object v4, v3

    sget-object v5, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    if-ne v4, v5, :cond_2

    .line 589
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v4

    move-wide v6, v1

    sub-double/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 591
    :cond_2
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v1, p1

    .local v1, "separator":Ljava/lang/String;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    .line 173
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 154
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    if-eqz v5, :cond_2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    .line 155
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    .line 157
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 159
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 160
    .local v3, "index":I
    :goto_1
    move v5, v3

    if-ltz v5, :cond_6

    .line 161
    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 162
    .local v4, "newStr":Ljava/lang/String;
    move-object v5, v4

    if-eqz v5, :cond_5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 163
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 165
    :cond_5
    move-object v5, v0

    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 166
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 167
    goto :goto_1

    .line 169
    .end local v4    # "newStr":Ljava/lang/String;
    :cond_6
    move-object v5, v0

    if-eqz v5, :cond_7

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 170
    move-object v5, v2

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 173
    :cond_7
    move-object v5, v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    goto :goto_0
.end method

.method public static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v5, v0

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v0, v5

    .line 145
    .end local v0    # "str":Ljava/lang/String;
    .local v1, "beginIndex":I
    .local v2, "openQuote":C
    .local v3, "endIndex":I
    .local v4, "closeQuote":C
    :goto_0
    return-object v0

    .line 131
    .end local v1    # "beginIndex":I
    .end local v2    # "openQuote":C
    .end local v3    # "endIndex":I
    .end local v4    # "closeQuote":C
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 133
    :cond_1
    const/4 v5, 0x0

    move v1, v5

    .line 134
    .restart local v1    # "beginIndex":I
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v5

    .line 135
    .restart local v2    # "openQuote":C
    move v5, v2

    const/16 v6, 0x22

    if-eq v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 137
    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .line 138
    .restart local v3    # "endIndex":I
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 139
    .restart local v4    # "closeQuote":C
    move v5, v4

    const/16 v6, 0x22

    if-eq v5, v6, :cond_4

    move v5, v4

    const/16 v6, 0x27

    if-ne v5, v6, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 141
    :cond_5
    move v5, v3

    move v6, v1

    sub-int/2addr v5, v6

    if-gez v5, :cond_6

    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 145
    :cond_6
    move-object v5, v0

    move v6, v1

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static sum([D)D
    .locals 12

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "values":[D
    const-wide/16 v8, 0x0

    move-wide v1, v8

    .line 435
    .local v1, "sum":D
    move-object v8, v0

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_0

    move-object v8, v3

    move v9, v5

    aget-wide v8, v8, v9

    move-wide v6, v8

    .local v6, "v":D
    move-wide v8, v1

    move-wide v10, v6

    add-double/2addr v8, v10

    move-wide v1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 436
    .end local v6    # "v":D
    :cond_0
    move-wide v8, v1

    move-object v10, v0

    array-length v10, v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "values":[D
    return-wide v0
.end method
