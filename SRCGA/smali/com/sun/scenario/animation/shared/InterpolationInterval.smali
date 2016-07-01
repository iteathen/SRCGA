.class public abstract Lcom/sun/scenario/animation/shared/InterpolationInterval;
.super Ljava/lang/Object;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentLongInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentIntegerInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$IntegerInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentFloatInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$DoubleInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;,
        Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    }
.end annotation


# instance fields
.field protected final rightInterpolator:Ljavafx/animation/Interpolator;

.field protected final ticks:J


# direct methods
.method protected constructor <init>(JLjavafx/animation/Interpolator;)V
    .locals 9

    .prologue
    .line 45
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval;
    move-wide v2, p1

    .local v2, "ticks":J
    move-object v4, p3

    .local v4, "rightInterpolator":Ljavafx/animation/Interpolator;
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval;->ticks:J

    .line 47
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/InterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    .line 48
    return-void
.end method

.method public static create(Ljavafx/animation/KeyValue;J)Lcom/sun/scenario/animation/shared/InterpolationInterval;
    .locals 11

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "rightKeyValue":Ljavafx/animation/KeyValue;
    move-wide v1, p1

    .local v1, "ticks":J
    sget-object v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/animation/KeyValue;->getType()Ljavafx/animation/KeyValue$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 116
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Should not reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :pswitch_0
    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    move-object v0, v3

    .line 114
    .end local v0    # "rightKeyValue":Ljavafx/animation/KeyValue;
    :goto_0
    return-object v0

    .line 97
    .restart local v0    # "rightKeyValue":Ljavafx/animation/KeyValue;
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$DoubleInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$DoubleInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_1

    .line 101
    :pswitch_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentFloatInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentFloatInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_2

    .line 105
    :pswitch_3
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentIntegerInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentIntegerInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    :goto_3
    move-object v0, v3

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$IntegerInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$IntegerInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_3

    .line 110
    :pswitch_4
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentLongInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentLongInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    :goto_4
    move-object v0, v3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_4

    .line 114
    :pswitch_5
    new-instance v3, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    move-object v0, v3

    goto/16 :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static create(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)Lcom/sun/scenario/animation/shared/InterpolationInterval;
    .locals 17

    .prologue
    .line 56
    move-object/from16 v1, p0

    .local v1, "rightKeyValue":Ljavafx/animation/KeyValue;
    move-wide/from16 v2, p1

    .local v2, "ticks":J
    move-object/from16 v4, p3

    .local v4, "leftKeyValue":Ljavafx/animation/KeyValue;
    move-wide/from16 v5, p4

    .local v5, "duration":J
    sget-object v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$1;->$SwitchMap$javafx$animation$KeyValue$Type:[I

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/animation/KeyValue;->getType()Ljavafx/animation/KeyValue$Type;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/animation/KeyValue$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 88
    new-instance v7, Ljava/lang/RuntimeException;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const-string v9, "Should not reach here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 58
    :pswitch_0
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    .line 59
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sun/scenario/animation/shared/InterpolationInterval$BooleanInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    move-object v1, v7

    .line 86
    .end local v1    # "rightKeyValue":Ljavafx/animation/KeyValue;
    :goto_0
    return-object v1

    .line 61
    .restart local v1    # "rightKeyValue":Ljavafx/animation/KeyValue;
    :pswitch_1
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-nez v7, :cond_0

    move-object v7, v1

    .line 62
    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v7, :cond_1

    :cond_0
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    move-wide v13, v5

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentDoubleInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    .line 65
    :goto_1
    move-object v1, v7

    goto :goto_0

    .line 62
    :cond_1
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$DoubleInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    .line 65
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sun/scenario/animation/shared/InterpolationInterval$DoubleInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_1

    .line 67
    :pswitch_2
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-nez v7, :cond_2

    move-object v7, v1

    .line 68
    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v7, :cond_3

    :cond_2
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentFloatInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    move-wide v13, v5

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentFloatInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    .line 71
    :goto_2
    move-object v1, v7

    goto :goto_0

    .line 68
    :cond_3
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    .line 71
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sun/scenario/animation/shared/InterpolationInterval$FloatInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_2

    .line 73
    :pswitch_3
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-nez v7, :cond_4

    move-object v7, v1

    .line 74
    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentIntegerInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    move-wide v13, v5

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentIntegerInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    .line 77
    :goto_3
    move-object v1, v7

    goto/16 :goto_0

    .line 74
    :cond_5
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$IntegerInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    .line 77
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sun/scenario/animation/shared/InterpolationInterval$IntegerInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_3

    .line 79
    :pswitch_4
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-nez v7, :cond_6

    move-object v7, v1

    .line 80
    invoke-virtual {v7}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v7

    instance-of v7, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v7, :cond_7

    :cond_6
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentLongInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    move-wide v13, v5

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentLongInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    .line 83
    :goto_4
    move-object v1, v7

    goto/16 :goto_0

    .line 80
    :cond_7
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    .line 83
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sun/scenario/animation/shared/InterpolationInterval$LongInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    goto :goto_4

    .line 85
    :pswitch_5
    new-instance v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    .line 86
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sun/scenario/animation/shared/InterpolationInterval$ObjectInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjava/lang/Object;Lcom/sun/scenario/animation/shared/InterpolationInterval$1;)V

    move-object v1, v7

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public abstract interpolate(D)V
.end method

.method public abstract recalculateStartValue()V
.end method
