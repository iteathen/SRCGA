.class public final Ljavafx/scene/paint/Stop;
.super Ljava/lang/Object;
.source "Stop.java"


# static fields
.field static final NO_STOPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:Ljavafx/scene/paint/Color;

.field private hash:I

.field private offset:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 52
    const/4 v1, 0x2

    new-array v1, v1, [Ljavafx/scene/paint/Stop;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x0

    new-instance v4, Ljavafx/scene/paint/Stop;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-wide/16 v6, 0x0

    sget-object v8, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    aput-object v4, v2, v3

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/4 v3, 0x1

    new-instance v4, Ljavafx/scene/paint/Stop;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sget-object v8, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    aput-object v4, v2, v3

    .line 53
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/paint/Stop;->NO_STOPS:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(DLjavafx/scene/paint/Color;)V
    .locals 9
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "offset"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/paint/Color;
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "BLACK"
            value = "color"
        .end annotation
    .end param

    .prologue
    .line 190
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/Stop;
    move-wide v2, p1

    .local v2, "offset":D
    move-object v4, p3

    .local v4, "color":Ljavafx/scene/paint/Color;
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 183
    move-object v5, v1

    const/4 v6, 0x0

    iput v6, v5, Ljavafx/scene/paint/Stop;->hash:I

    .line 191
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Ljavafx/scene/paint/Stop;->offset:D

    .line 192
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    .line 193
    return-void
.end method

.method static normalize(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    move-object/from16 v0, p0

    .local v0, "stops":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object v10, v0

    if-nez v10, :cond_0

    .line 65
    sget-object v10, Ljavafx/scene/paint/Stop;->NO_STOPS:Ljava/util/List;

    move-object v0, v10

    .line 134
    .end local v0    # "stops":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    .local v1, "zerostop":Ljavafx/scene/paint/Stop;
    .local v2, "onestop":Ljavafx/scene/paint/Stop;
    .local v3, "newlist":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    :goto_0
    return-object v0

    .line 67
    .end local v1    # "zerostop":Ljavafx/scene/paint/Stop;
    .end local v2    # "onestop":Ljavafx/scene/paint/Stop;
    .end local v3    # "newlist":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    .restart local v0    # "stops":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    :cond_0
    const/4 v10, 0x0

    move-object v1, v10

    .line 68
    .restart local v1    # "zerostop":Ljavafx/scene/paint/Stop;
    const/4 v10, 0x0

    move-object v2, v10

    .line 69
    .restart local v2    # "onestop":Ljavafx/scene/paint/Stop;
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v10

    .line 70
    .restart local v3    # "newlist":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v10

    :cond_1
    :goto_1
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/paint/Stop;

    move-object v5, v10

    .line 71
    .local v5, "s":Ljavafx/scene/paint/Stop;
    move-object v10, v5

    if-eqz v10, :cond_1

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v10

    if-nez v10, :cond_2

    goto :goto_1

    .line 72
    :cond_2
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    move-wide v6, v10

    .line 73
    .local v6, "off":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_5

    .line 74
    move-object v10, v1

    if-eqz v10, :cond_3

    move-wide v10, v6

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_4

    .line 75
    :cond_3
    move-object v10, v5

    move-object v1, v10

    .line 102
    :cond_4
    :goto_2
    goto :goto_1

    .line 77
    :cond_5
    move-wide v10, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_7

    .line 78
    move-object v10, v2

    if-eqz v10, :cond_6

    move-wide v10, v6

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_4

    .line 79
    :cond_6
    move-object v10, v5

    move-object v2, v10

    goto :goto_2

    .line 81
    :cond_7
    move-wide v10, v6

    move-wide v12, v6

    cmpl-double v10, v10, v12

    if-nez v10, :cond_4

    .line 82
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    .local v8, "i":I
    :goto_3
    move v10, v8

    if-ltz v10, :cond_8

    .line 83
    move-object v10, v3

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/paint/Stop;

    move-object v9, v10

    .line 84
    .local v9, "s2":Ljavafx/scene/paint/Stop;
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    move-wide v12, v6

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_b

    .line 85
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    move-wide v12, v6

    cmpl-double v10, v10, v12

    if-nez v10, :cond_a

    .line 86
    move v10, v8

    if-lez v10, :cond_9

    move-object v10, v3

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/paint/Stop;

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    move-wide v12, v6

    cmpl-double v10, v10, v12

    if-nez v10, :cond_9

    .line 87
    move-object v10, v3

    move v11, v8

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 94
    :goto_4
    const/4 v10, 0x0

    move-object v5, v10

    .line 98
    .end local v9    # "s2":Ljavafx/scene/paint/Stop;
    :cond_8
    move-object v10, v5

    if-eqz v10, :cond_4

    .line 99
    move-object v10, v3

    const/4 v11, 0x0

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 89
    .restart local v9    # "s2":Ljavafx/scene/paint/Stop;
    :cond_9
    move-object v10, v3

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 92
    :cond_a
    move-object v10, v3

    move v11, v8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v5

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 82
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 104
    .end local v5    # "s":Ljavafx/scene/paint/Stop;
    .end local v6    # "off":D
    .end local v8    # "i":I
    .end local v9    # "s2":Ljavafx/scene/paint/Stop;
    :cond_c
    move-object v10, v1

    if-nez v10, :cond_12

    .line 106
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 107
    move-object v10, v2

    if-nez v10, :cond_d

    .line 108
    sget-object v10, Ljavafx/scene/paint/Stop;->NO_STOPS:Ljava/util/List;

    move-object v0, v10

    goto/16 :goto_0

    .line 110
    :cond_d
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v10

    move-object v4, v10

    .line 121
    .local v4, "zerocolor":Ljavafx/scene/paint/Color;
    :cond_e
    :goto_5
    new-instance v10, Ljavafx/scene/paint/Stop;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-wide/16 v12, 0x0

    move-object v14, v4

    invoke-direct {v11, v12, v13, v14}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    move-object v1, v10

    .line 125
    .end local v4    # "zerocolor":Ljavafx/scene/paint/Color;
    :cond_f
    :goto_6
    move-object v10, v3

    const/4 v11, 0x0

    move-object v12, v1

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 127
    move-object v10, v2

    if-nez v10, :cond_13

    .line 128
    new-instance v10, Ljavafx/scene/paint/Stop;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v3

    move-object v15, v3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/paint/Stop;

    invoke-virtual {v14}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    move-object v2, v10

    .line 132
    :cond_10
    :goto_7
    move-object v10, v3

    move-object v11, v2

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 134
    move-object v10, v3

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 112
    :cond_11
    move-object v10, v3

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/paint/Stop;

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v10

    move-object v4, v10

    .line 113
    .restart local v4    # "zerocolor":Ljavafx/scene/paint/Color;
    move-object v10, v2

    if-nez v10, :cond_e

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 118
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 122
    .end local v4    # "zerocolor":Ljavafx/scene/paint/Color;
    :cond_12
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_f

    .line 123
    new-instance v10, Ljavafx/scene/paint/Stop;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-wide/16 v12, 0x0

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    move-object v1, v10

    goto :goto_6

    .line 129
    :cond_13
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_10

    .line 130
    new-instance v10, Ljavafx/scene/paint/Stop;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    move-object v2, v10

    goto :goto_7
.end method

.method static normalize([Ljavafx/scene/paint/Stop;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/paint/Stop;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "stops":[Ljavafx/scene/paint/Stop;
    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 60
    .local v1, "stoplist":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/paint/Stop;->normalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "stops":[Ljavafx/scene/paint/Stop;
    return-object v0

    .line 59
    .end local v1    # "stoplist":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    .restart local v0    # "stops":[Ljavafx/scene/paint/Stop;
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 201
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/Stop;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 207
    .end local v1    # "this":Ljavafx/scene/paint/Stop;
    :goto_0
    return v1

    .line 202
    .restart local v1    # "this":Ljavafx/scene/paint/Stop;
    :cond_0
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    move v1, v4

    goto :goto_0

    .line 203
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/paint/Stop;

    if-eqz v4, :cond_5

    .line 204
    move-object v4, v2

    check-cast v4, Ljavafx/scene/paint/Stop;

    move-object v3, v4

    .line 205
    .local v3, "other":Ljavafx/scene/paint/Stop;
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/paint/Stop;->offset:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/scene/paint/Stop;->offset:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_4

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    if-nez v4, :cond_3

    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    if-nez v4, :cond_4

    .line 206
    :cond_2
    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    .line 205
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    .line 206
    invoke-virtual {v4, v5}, Ljavafx/scene/paint/Color;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 207
    .end local v3    # "other":Ljavafx/scene/paint/Stop;
    :cond_5
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Stop;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/Stop;
    return-object v0
.end method

.method public final getOffset()D
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Stop;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/paint/Stop;->offset:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/Stop;
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 215
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/paint/Stop;
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/paint/Stop;->hash:I

    if-nez v4, :cond_0

    .line 216
    const-wide/16 v4, 0x11

    move-wide v2, v4

    .line 217
    .local v2, "bits":J
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/paint/Stop;->offset:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 218
    const-wide/16 v4, 0x25

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->hashCode()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 219
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/scene/paint/Stop;->hash:I

    .line 221
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/paint/Stop;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/scene/paint/Stop;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/Stop;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/paint/Stop;->color:Ljavafx/scene/paint/Color;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/paint/Stop;->offset:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/Stop;
    return-object v0
.end method
