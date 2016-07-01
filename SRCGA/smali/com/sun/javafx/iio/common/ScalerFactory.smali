.class public Lcom/sun/javafx/iio/common/ScalerFactory;
.super Ljava/lang/Object;
.source "ScalerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ScalerFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaler(IIIIIZ)Lcom/sun/javafx/iio/common/PushbroomScaler;
    .locals 16

    .prologue
    .line 46
    move/from16 v0, p0

    .local v0, "sourceWidth":I
    move/from16 v1, p1

    .local v1, "sourceHeight":I
    move/from16 v2, p2

    .local v2, "numBands":I
    move/from16 v3, p3

    .local v3, "destWidth":I
    move/from16 v4, p4

    .local v4, "destHeight":I
    move/from16 v5, p5

    .local v5, "isSmooth":Z
    move v8, v0

    if-lez v8, :cond_0

    move v8, v1

    if-lez v8, :cond_0

    move v8, v2

    if-lez v8, :cond_0

    move v8, v3

    if-lez v8, :cond_0

    move v8, v4

    if-gtz v8, :cond_1

    .line 48
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 51
    :cond_1
    const/4 v8, 0x0

    move-object v6, v8

    .line 53
    .local v6, "scaler":Lcom/sun/javafx/iio/common/PushbroomScaler;
    move v8, v3

    move v9, v0

    if-gt v8, v9, :cond_2

    move v8, v4

    move v9, v1

    if-le v8, v9, :cond_3

    :cond_2
    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 55
    .local v7, "isMagnifying":Z
    move v8, v7

    if-eqz v8, :cond_5

    .line 56
    move v8, v5

    if-eqz v8, :cond_4

    .line 59
    new-instance v8, Lcom/sun/javafx/iio/common/RoughScaler;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/sun/javafx/iio/common/RoughScaler;-><init>(IIIII)V

    move-object v6, v8

    .line 75
    :goto_1
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "sourceWidth":I
    return-object v0

    .line 53
    .end local v7    # "isMagnifying":Z
    .restart local v0    # "sourceWidth":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 62
    .restart local v7    # "isMagnifying":Z
    :cond_4
    new-instance v8, Lcom/sun/javafx/iio/common/RoughScaler;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/sun/javafx/iio/common/RoughScaler;-><init>(IIIII)V

    move-object v6, v8

    goto :goto_1

    .line 66
    :cond_5
    move v8, v5

    if-eqz v8, :cond_6

    .line 67
    new-instance v8, Lcom/sun/javafx/iio/common/SmoothMinifier;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/sun/javafx/iio/common/SmoothMinifier;-><init>(IIIII)V

    move-object v6, v8

    goto :goto_1

    .line 70
    :cond_6
    new-instance v8, Lcom/sun/javafx/iio/common/RoughScaler;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/sun/javafx/iio/common/RoughScaler;-><init>(IIIII)V

    move-object v6, v8

    goto :goto_1
.end method
