.class abstract Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
.super Lcom/sun/scenario/animation/shared/InterpolationInterval;
.source "InterpolationInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/scenario/animation/shared/InterpolationInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TangentInterpolationInterval"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final duration:D

.field private final leftInterpolator:Lcom/sun/scenario/animation/NumberTangentInterpolator;

.field protected p0:D

.field private p1:D

.field private final p2:D

.field protected final p3:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/sun/scenario/animation/shared/InterpolationInterval;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;J)V
    .locals 14

    .prologue
    .line 157
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    move-object v2, p1

    .local v2, "rightKeyValue":Ljavafx/animation/KeyValue;
    move-wide/from16 v3, p2

    .local v3, "ticks":J
    move-object v8, v1

    move-wide v9, v3

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/scenario/animation/shared/InterpolationInterval;-><init>(JLjavafx/animation/Interpolator;)V

    .line 158
    sget-boolean v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Number;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 160
    :cond_0
    move-object v8, v1

    move-wide v9, v3

    long-to-double v9, v9

    iput-wide v9, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->duration:D

    .line 161
    move-object v8, v1

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->leftInterpolator:Lcom/sun/scenario/animation/NumberTangentInterpolator;

    .line 163
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    instance-of v8, v8, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v8, :cond_1

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    check-cast v8, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    :goto_0
    move-object v5, v8

    .line 165
    .local v5, "interpolator":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    iput-wide v9, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p3:D

    .line 166
    move-object v8, v5

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    .line 169
    :goto_1
    move-wide v6, v8

    .line 171
    .local v6, "p2Delta":D
    move-object v8, v1

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p3:D

    move-wide v11, v6

    add-double/2addr v9, v11

    iput-wide v9, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p2:D

    .line 172
    return-void

    .line 163
    .end local v5    # "interpolator":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    .end local v6    # "p2Delta":D
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 166
    .restart local v5    # "interpolator":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    :cond_2
    move-object v8, v5

    .line 167
    invoke-virtual {v8}, Lcom/sun/scenario/animation/NumberTangentInterpolator;->getInValue()D

    move-result-wide v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p3:D

    sub-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->duration:D

    mul-double/2addr v8, v10

    move-object v10, v5

    .line 169
    invoke-virtual {v10}, Lcom/sun/scenario/animation/NumberTangentInterpolator;->getInTicks()D

    move-result-wide v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 10

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide v2, p2

    .local v2, "x1":J
    move-object v4, p4

    .local v4, "x2":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;J)V

    return-void
.end method

.method private constructor <init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)V
    .locals 18

    .prologue
    .line 132
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    move-object/from16 v2, p1

    .local v2, "rightKeyValue":Ljavafx/animation/KeyValue;
    move-wide/from16 v3, p2

    .local v3, "ticks":J
    move-object/from16 v5, p4

    .local v5, "leftKeyValue":Ljavafx/animation/KeyValue;
    move-wide/from16 v6, p5

    .local v6, "duration":J
    move-object v12, v1

    move-wide v13, v3

    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/scenario/animation/shared/InterpolationInterval;-><init>(JLjavafx/animation/Interpolator;)V

    .line 133
    sget-boolean v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->$assertionsDisabled:Z

    if-nez v12, :cond_1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Number;

    if-eqz v12, :cond_0

    move-object v12, v5

    .line 134
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Number;

    if-nez v12, :cond_1

    .line 133
    :cond_0
    new-instance v12, Ljava/lang/AssertionError;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 136
    :cond_1
    move-object v12, v1

    move-wide v13, v6

    long-to-double v13, v13

    iput-wide v13, v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->duration:D

    .line 137
    move-object v12, v5

    .line 138
    invoke-virtual {v12}, Ljavafx/animation/KeyValue;->getInterpolator()Ljavafx/animation/Interpolator;

    move-result-object v12

    move-object v8, v12

    .line 139
    .local v8, "rawLeftInterpolator":Ljavafx/animation/Interpolator;
    move-object v12, v1

    move-object v13, v8

    instance-of v13, v13, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v13, :cond_2

    move-object v13, v8

    check-cast v13, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    :goto_0
    iput-object v13, v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->leftInterpolator:Lcom/sun/scenario/animation/NumberTangentInterpolator;

    .line 141
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    .line 142
    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    .line 141
    invoke-virtual {v12, v13, v14}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->recalculateStartValue(D)V

    .line 144
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    instance-of v12, v12, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-eqz v12, :cond_3

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->rightInterpolator:Ljavafx/animation/Interpolator;

    check-cast v12, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    :goto_1
    move-object v9, v12

    .line 146
    .local v9, "interpolator":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/animation/KeyValue;->getEndValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    iput-wide v13, v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p3:D

    .line 147
    move-object v12, v9

    if-nez v12, :cond_4

    const-wide/16 v12, 0x0

    .line 150
    :goto_2
    move-wide v10, v12

    .line 152
    .local v10, "p2Delta":D
    move-object v12, v1

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p3:D

    move-wide v15, v10

    add-double/2addr v13, v15

    iput-wide v13, v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p2:D

    .line 153
    return-void

    .line 139
    .end local v9    # "interpolator":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    .end local v10    # "p2Delta":D
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 144
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 147
    .restart local v9    # "interpolator":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    :cond_4
    move-object v12, v9

    .line 148
    invoke-virtual {v12}, Lcom/sun/scenario/animation/NumberTangentInterpolator;->getInValue()D

    move-result-wide v12

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p3:D

    sub-double/2addr v12, v14

    move-wide v14, v6

    long-to-double v14, v14

    mul-double/2addr v12, v14

    move-object v14, v9

    .line 150
    invoke-virtual {v14}, Lcom/sun/scenario/animation/NumberTangentInterpolator;->getInTicks()D

    move-result-wide v14

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v12, v14

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;JLcom/sun/scenario/animation/shared/InterpolationInterval$1;)V
    .locals 15

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    move-object/from16 v1, p1

    .local v1, "x0":Ljavafx/animation/KeyValue;
    move-wide/from16 v2, p2

    .local v2, "x1":J
    move-object/from16 v4, p4

    .local v4, "x2":Ljavafx/animation/KeyValue;
    move-wide/from16 v5, p5

    .local v5, "x3":J
    move-object/from16 v7, p7

    .local v7, "x4":Lcom/sun/scenario/animation/shared/InterpolationInterval$1;
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-object v12, v4

    move-wide v13, v5

    invoke-direct/range {v8 .. v14}, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;-><init>(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)V

    return-void
.end method


# virtual methods
.method protected calculate(D)D
    .locals 17

    .prologue
    .line 175
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    move-wide/from16 v2, p1

    .local v2, "t":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-wide v4, v10

    .line 176
    .local v4, "oneMinusT":D
    move-wide v10, v2

    move-wide v12, v2

    mul-double/2addr v10, v12

    move-wide v6, v10

    .line 177
    .local v6, "tSquared":D
    move-wide v10, v4

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-wide v8, v10

    .line 179
    .local v8, "oneMinusTSquared":D
    move-wide v10, v8

    move-wide v12, v4

    mul-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p0:D

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    move-wide v14, v8

    mul-double/2addr v12, v14

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p1:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    move-wide v14, v4

    mul-double/2addr v12, v14

    move-wide v14, v6

    mul-double/2addr v12, v14

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p2:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v12, v6

    move-wide v14, v2

    mul-double/2addr v12, v14

    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p3:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v1, v10

    .end local v1    # "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    return-wide v1
.end method

.method protected final recalculateStartValue(D)V
    .locals 11

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;
    move-wide v2, p1

    .local v2, "leftValue":D
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p0:D

    .line 185
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->leftInterpolator:Lcom/sun/scenario/animation/NumberTangentInterpolator;

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    .line 187
    :goto_0
    move-wide v4, v6

    .line 188
    .local v4, "p1Delta":D
    move-object v6, v1

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p0:D

    move-wide v9, v4

    add-double/2addr v7, v9

    iput-wide v7, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p1:D

    .line 189
    return-void

    .line 185
    .end local v4    # "p1Delta":D
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->leftInterpolator:Lcom/sun/scenario/animation/NumberTangentInterpolator;

    .line 186
    invoke-virtual {v6}, Lcom/sun/scenario/animation/NumberTangentInterpolator;->getOutValue()D

    move-result-wide v6

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->p0:D

    sub-double/2addr v6, v8

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->duration:D

    mul-double/2addr v6, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/scenario/animation/shared/InterpolationInterval$TangentInterpolationInterval;->leftInterpolator:Lcom/sun/scenario/animation/NumberTangentInterpolator;

    .line 187
    invoke-virtual {v8}, Lcom/sun/scenario/animation/NumberTangentInterpolator;->getOutTicks()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    goto :goto_0
.end method
