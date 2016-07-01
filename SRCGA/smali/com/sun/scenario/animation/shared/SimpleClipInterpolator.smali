.class Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
.super Lcom/sun/scenario/animation/shared/ClipInterpolator;
.source "SimpleClipInterpolator.java"


# static fields
.field private static final ZERO_FRAME:Ljavafx/animation/KeyFrame;


# instance fields
.field private endKeyFrame:Ljavafx/animation/KeyFrame;

.field private endTicks:J

.field private interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

.field private invalid:Z

.field private startKeyFrame:Ljavafx/animation/KeyFrame;

.field private ticks:J

.field private undefinedStartValueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    new-instance v0, Ljavafx/animation/KeyFrame;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/4 v3, 0x0

    new-array v3, v3, [Ljavafx/animation/KeyValue;

    invoke-direct {v1, v2, v3}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    sput-object v0, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ZERO_FRAME:Ljavafx/animation/KeyFrame;

    return-void
.end method

.method constructor <init>(Ljavafx/animation/KeyFrame;J)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
    move-object v1, p1

    .local v1, "endKeyFrame":Ljavafx/animation/KeyFrame;
    move-wide v2, p2

    .local v2, "ticks":J
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/scenario/animation/shared/ClipInterpolator;-><init>()V

    .line 54
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->invalid:Z

    .line 63
    move-object v4, v0

    sget-object v5, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ZERO_FRAME:Ljavafx/animation/KeyFrame;

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->startKeyFrame:Ljavafx/animation/KeyFrame;

    .line 64
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endKeyFrame:Ljavafx/animation/KeyFrame;

    .line 65
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endTicks:J

    .line 66
    return-void
.end method

.method constructor <init>(Ljavafx/animation/KeyFrame;Ljavafx/animation/KeyFrame;J)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
    move-object v1, p1

    .local v1, "startKeyFrame":Ljavafx/animation/KeyFrame;
    move-object v2, p2

    .local v2, "endKeyFrame":Ljavafx/animation/KeyFrame;
    move-wide v3, p3

    .local v3, "ticks":J
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/scenario/animation/shared/ClipInterpolator;-><init>()V

    .line 54
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->invalid:Z

    .line 57
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->startKeyFrame:Ljavafx/animation/KeyFrame;

    .line 58
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endKeyFrame:Ljavafx/animation/KeyFrame;

    .line 59
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endTicks:J

    .line 60
    return-void
.end method


# virtual methods
.method interpolate(J)V
    .locals 13

    .prologue
    .line 134
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
    move-wide v2, p1

    .local v2, "ticks":J
    move-wide v8, v2

    long-to-double v8, v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ticks:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 135
    .local v4, "frac":D
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    array-length v8, v8

    move v6, v8

    .line 136
    .local v6, "n":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 137
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move v9, v7

    aget-object v8, v8, v9

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->interpolate(D)V

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method setKeyFrames([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
    move-object v1, p1

    .local v1, "keyFrames":[Ljavafx/animation/KeyFrame;
    move-object v2, p2

    .local v2, "keyFrameTicks":[J
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->getRealKeyFrameCount([Ljavafx/animation/KeyFrame;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 72
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/scenario/animation/shared/ClipInterpolator;->create([Ljavafx/animation/KeyFrame;[J)Lcom/sun/scenario/animation/shared/ClipInterpolator;

    move-result-object v3

    move-object v0, v3

    .line 84
    .end local v0    # "this":Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
    :goto_0
    return-object v0

    .line 74
    .restart local v0    # "this":Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
    :cond_0
    move-object v3, v1

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 75
    move-object v3, v0

    sget-object v4, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ZERO_FRAME:Ljavafx/animation/KeyFrame;

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->startKeyFrame:Ljavafx/animation/KeyFrame;

    .line 76
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endKeyFrame:Ljavafx/animation/KeyFrame;

    .line 77
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endTicks:J

    .line 83
    :goto_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->invalid:Z

    .line 84
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 79
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->startKeyFrame:Ljavafx/animation/KeyFrame;

    .line 80
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endKeyFrame:Ljavafx/animation/KeyFrame;

    .line 81
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iput-wide v4, v3, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endTicks:J

    goto :goto_1
.end method

.method validate(Z)V
    .locals 18

    .prologue
    .line 89
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;
    move/from16 v1, p1

    .local v1, "forceSync":Z
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->invalid:Z

    if-eqz v9, :cond_5

    .line 90
    move-object v9, v0

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endTicks:J

    iput-wide v10, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ticks:J

    .line 92
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object v2, v9

    .line 94
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/beans/value/WritableValue<*>;Ljavafx/animation/KeyValue;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->endKeyFrame:Ljavafx/animation/KeyFrame;

    invoke-virtual {v9}, Ljavafx/animation/KeyFrame;->getValues()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_0
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/animation/KeyValue;

    move-object v4, v9

    .line 95
    .local v4, "keyValue":Ljavafx/animation/KeyValue;
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v10

    move-object v11, v4

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 96
    goto :goto_0

    .line 98
    .end local v4    # "keyValue":Ljavafx/animation/KeyValue;
    :cond_0
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    move v3, v9

    .line 99
    .local v3, "valueCount":I
    move-object v9, v0

    move v10, v3

    new-array v10, v10, [Lcom/sun/scenario/animation/shared/InterpolationInterval;

    iput-object v10, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    .line 104
    const/4 v9, 0x0

    move v4, v9

    .line 105
    .local v4, "i":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->startKeyFrame:Ljavafx/animation/KeyFrame;

    invoke-virtual {v9}, Ljavafx/animation/KeyFrame;->getValues()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/animation/KeyValue;

    move-object v6, v9

    .line 106
    .local v6, "startKeyValue":Ljavafx/animation/KeyValue;
    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/animation/KeyValue;->getTarget()Ljavafx/beans/value/WritableValue;

    move-result-object v9

    move-object v7, v9

    .line 107
    .local v7, "target":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<*>;"
    move-object v9, v2

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/animation/KeyValue;

    move-object v8, v9

    .line 108
    .local v8, "endKeyValue":Ljavafx/animation/KeyValue;
    move-object v9, v8

    if-eqz v9, :cond_1

    .line 109
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move v10, v4

    add-int/lit8 v4, v4, 0x1

    move-object v11, v8

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ticks:J

    move-object v14, v6

    move-object v15, v0

    iget-wide v15, v15, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ticks:J

    invoke-static/range {v11 .. v16}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->create(Ljavafx/animation/KeyValue;JLjavafx/animation/KeyValue;J)Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-result-object v11

    aput-object v11, v9, v10

    .line 111
    move-object v9, v2

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 113
    :cond_1
    goto :goto_1

    .line 116
    .end local v6    # "startKeyValue":Ljavafx/animation/KeyValue;
    .end local v7    # "target":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<*>;"
    .end local v8    # "endKeyValue":Ljavafx/animation/KeyValue;
    :cond_2
    move-object v9, v0

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    iput v10, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->undefinedStartValueCount:I

    .line 117
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_2
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/animation/KeyValue;

    move-object v6, v9

    .line 118
    .local v6, "endKeyValue":Ljavafx/animation/KeyValue;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move v10, v4

    add-int/lit8 v4, v4, 0x1

    move-object v11, v6

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->ticks:J

    invoke-static {v11, v12, v13}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->create(Ljavafx/animation/KeyValue;J)Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move-result-object v11

    aput-object v11, v9, v10

    .line 120
    goto :goto_2

    .line 122
    .end local v6    # "endKeyValue":Ljavafx/animation/KeyValue;
    :cond_3
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->invalid:Z

    .line 123
    .line 130
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/beans/value/WritableValue<*>;Ljavafx/animation/KeyValue;>;"
    .end local v3    # "valueCount":I
    .end local v4    # "i":I
    :cond_4
    return-void

    .line 123
    :cond_5
    move v9, v1

    if-eqz v9, :cond_4

    .line 125
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    array-length v9, v9

    move v2, v9

    .line 126
    .local v2, "n":I
    move v9, v2

    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->undefinedStartValueCount:I

    sub-int/2addr v9, v10

    move v3, v9

    .local v3, "i":I
    :goto_3
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_4

    .line 127
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/animation/shared/SimpleClipInterpolator;->interval:[Lcom/sun/scenario/animation/shared/InterpolationInterval;

    move v10, v3

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sun/scenario/animation/shared/InterpolationInterval;->recalculateStartValue()V

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
