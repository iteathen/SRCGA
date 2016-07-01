.class abstract Lcom/sun/javafx/css/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljavafx/collections/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/BitSet$Change;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ObservableSet",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_SET:[J


# instance fields
.field private bits:[J

.field private listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    iput-object v2, v1, Lcom/sun/javafx/css/BitSet;->bits:[J

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/css/BitSet;)[J
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/BitSet;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/BitSet;
    return-object v0
.end method

.method private notifyObservers(Ljava/lang/Object;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "removed":Z
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    invoke-static {v4}, Lcom/sun/javafx/collections/SetListenerHelper;->hasListeners(Lcom/sun/javafx/collections/SetListenerHelper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    new-instance v4, Lcom/sun/javafx/css/BitSet$Change;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/css/BitSet$Change;-><init>(Lcom/sun/javafx/css/BitSet;Ljava/lang/Object;Z)V

    move-object v3, v4

    .line 625
    .local v3, "change":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/collections/SetListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 627
    .end local v3    # "change":Lcom/sun/javafx/css/BitSet$Change;, "Lcom/sun/javafx/css/BitSet<TT;>.Change;"
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "t":Ljava/lang/Object;, "TT;"
    move-object v8, v1

    if-nez v8, :cond_0

    .line 150
    const/4 v8, 0x0

    move v0, v8

    .line 171
    .end local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v0

    .line 153
    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_0
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/BitSet;->getIndex(Ljava/lang/Object;)I

    move-result v8

    const/16 v9, 0x40

    div-int/lit8 v8, v8, 0x40

    move v2, v8

    .line 154
    .local v2, "element":I
    const-wide/16 v8, 0x1

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/sun/javafx/css/BitSet;->getIndex(Ljava/lang/Object;)I

    move-result v10

    const/16 v11, 0x40

    rem-int/lit8 v10, v10, 0x40

    shl-long/2addr v8, v10

    move-wide v3, v8

    .line 157
    .local v3, "bit":J
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v9, v9

    if-lt v8, v9, :cond_1

    .line 158
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [J

    move-object v5, v8

    .line 159
    .local v5, "temp":[J
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    const/4 v9, 0x0

    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    .line 163
    .end local v5    # "temp":[J
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v9, v2

    aget-wide v8, v8, v9

    move-wide v5, v8

    .line 164
    .local v5, "temp":J
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v9, v2

    move-wide v10, v5

    move-wide v12, v3

    or-long/2addr v10, v12

    aput-wide v10, v8, v9

    .line 167
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v9, v2

    aget-wide v8, v8, v9

    move-wide v10, v5

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 168
    .local v7, "modified":Z
    move v8, v7

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    invoke-static {v8}, Lcom/sun/javafx/collections/SetListenerHelper;->hasListeners(Lcom/sun/javafx/collections/SetListenerHelper;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 169
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/BitSet;->notifyObservers(Ljava/lang/Object;Z)V

    .line 171
    :cond_2
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 167
    .end local v7    # "modified":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 262
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object/from16 v4, p1

    .local v4, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    move-object/from16 v20, v4

    if-eqz v20, :cond_0

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 264
    :cond_0
    const/16 v20, 0x0

    move/from16 v3, v20

    .line 326
    .end local v3    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v3

    .line 267
    .restart local v3    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_1
    const/16 v20, 0x0

    move/from16 v5, v20

    .line 269
    .local v5, "modified":Z
    move-object/from16 v20, v4

    check-cast v20, Lcom/sun/javafx/css/BitSet;

    move-object/from16 v6, v20

    .line 271
    .local v6, "other":Lcom/sun/javafx/css/BitSet;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 272
    .local v7, "maskOne":[J
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 274
    .local v8, "maskTwo":[J
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 275
    .local v9, "a":I
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v10, v20

    .line 277
    .local v10, "b":I
    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move/from16 v20, v10

    :goto_1
    move/from16 v11, v20

    .line 279
    .local v11, "max":I
    move/from16 v20, v11

    if-lez v20, :cond_3

    move/from16 v20, v11

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    :goto_2
    move-object/from16 v12, v20

    .line 281
    .local v12, "union":[J
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "n":I
    :goto_3
    move/from16 v20, v13

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 283
    move/from16 v20, v13

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    move/from16 v20, v13

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 284
    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v22, v7

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v8

    move/from16 v25, v13

    aget-wide v24, v24, v25

    or-long v22, v22, v24

    aput-wide v22, v20, v21

    .line 285
    move/from16 v20, v5

    move-object/from16 v21, v12

    move/from16 v22, v13

    aget-wide v21, v21, v22

    move-object/from16 v23, v7

    move/from16 v24, v13

    aget-wide v23, v23, v24

    cmp-long v21, v21, v23

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_4
    or-int v20, v20, v21

    move/from16 v5, v20

    .line 281
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 277
    .end local v11    # "max":I
    .end local v12    # "union":[J
    .end local v13    # "n":I
    :cond_2
    move/from16 v20, v9

    goto :goto_1

    .line 279
    .restart local v11    # "max":I
    :cond_3
    sget-object v20, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    goto :goto_2

    .line 285
    .restart local v12    # "union":[J
    .restart local v13    # "n":I
    :cond_4
    const/16 v21, 0x0

    goto :goto_4

    .line 286
    :cond_5
    move/from16 v20, v13

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 287
    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v22, v7

    move/from16 v23, v13

    aget-wide v22, v22, v23

    aput-wide v22, v20, v21

    .line 288
    move/from16 v20, v5

    const/16 v21, 0x0

    or-int/lit8 v20, v20, 0x0

    move/from16 v5, v20

    goto :goto_5

    .line 290
    :cond_6
    move-object/from16 v20, v12

    move/from16 v21, v13

    move-object/from16 v22, v8

    move/from16 v23, v13

    aget-wide v22, v22, v23

    aput-wide v22, v20, v21

    .line 291
    const/16 v20, 0x1

    move/from16 v5, v20

    goto :goto_5

    .line 296
    :cond_7
    move/from16 v20, v5

    if-eqz v20, :cond_d

    .line 298
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/collections/SetListenerHelper;->hasListeners(Lcom/sun/javafx/collections/SetListenerHelper;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 300
    const/16 v20, 0x0

    move/from16 v13, v20

    :goto_6
    move/from16 v20, v13

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 302
    const-wide/16 v20, 0x0

    move-wide/from16 v14, v20

    .line 304
    .local v14, "bitsAdded":J
    move/from16 v20, v13

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    move/from16 v20, v13

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 305
    move-object/from16 v20, v7

    move/from16 v21, v13

    aget-wide v20, v20, v21

    const-wide/16 v22, -0x1

    xor-long v20, v20, v22

    move-object/from16 v22, v8

    move/from16 v23, v13

    aget-wide v22, v22, v23

    and-long v20, v20, v22

    move-wide/from16 v14, v20

    .line 313
    :goto_7
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "bit":I
    :goto_8
    move/from16 v20, v16

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 314
    const-wide/16 v20, 0x1

    move/from16 v22, v16

    shl-long v20, v20, v22

    move-wide/from16 v17, v20

    .line 315
    .local v17, "m":J
    move-wide/from16 v20, v17

    move-wide/from16 v22, v14

    and-long v20, v20, v22

    move-wide/from16 v22, v17

    cmp-long v20, v20, v22

    if-nez v20, :cond_8

    .line 316
    move-object/from16 v20, v3

    move/from16 v21, v13

    const/16 v22, 0x40

    mul-int/lit8 v21, v21, 0x40

    move/from16 v22, v16

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/BitSet;->getT(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v19, v20

    .line 317
    .local v19, "t":Ljava/lang/Object;, "TT;"
    move-object/from16 v20, v3

    move-object/from16 v21, v19

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/css/BitSet;->notifyObservers(Ljava/lang/Object;Z)V

    .line 313
    .end local v19    # "t":Ljava/lang/Object;, "TT;"
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 306
    .end local v16    # "bit":I
    .end local v17    # "m":J
    :cond_9
    move/from16 v20, v13

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 308
    .line 300
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 310
    :cond_b
    move-object/from16 v20, v8

    move/from16 v21, v13

    aget-wide v20, v20, v21

    move-wide/from16 v14, v20

    goto :goto_7

    .line 323
    .end local v14    # "bitsAdded":J
    :cond_c
    move-object/from16 v20, v3

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/javafx/css/BitSet;->bits:[J

    .line 326
    :cond_d
    move/from16 v20, v5

    move/from16 v3, v20

    goto/16 :goto_0
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 611
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 613
    :cond_0
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "setChangeListener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TT;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 597
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 599
    :cond_0
    return-void
.end method

.method protected abstract cast(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 12

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    const/4 v8, 0x0

    move v1, v8

    .local v1, "n":I
    :goto_0
    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 482
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v9, v1

    aget-wide v8, v8, v9

    move-wide v2, v8

    .line 484
    .local v2, "bitsRemoved":J
    const/4 v8, 0x0

    move v4, v8

    .local v4, "b":I
    :goto_1
    move v8, v4

    const/16 v9, 0x40

    if-ge v8, v9, :cond_1

    .line 485
    const-wide/16 v8, 0x1

    move v10, v4

    shl-long/2addr v8, v10

    move-wide v5, v8

    .line 486
    .local v5, "m":J
    move-wide v8, v5

    move-wide v10, v2

    and-long/2addr v8, v10

    move-wide v10, v5

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 487
    move-object v8, v0

    move v9, v1

    const/16 v10, 0x40

    mul-int/lit8 v9, v9, 0x40

    move v10, v4

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/BitSet;->getT(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 488
    .local v7, "t":Ljava/lang/Object;, "TT;"
    move-object v8, v0

    move-object v9, v7

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/BitSet;->notifyObservers(Ljava/lang/Object;Z)V

    .line 484
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 480
    .end local v5    # "m":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "bitsRemoved":J
    .end local v4    # "b":I
    :cond_2
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    iput-object v9, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    .line 494
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 218
    const/4 v6, 0x0

    move v0, v6

    .line 226
    .end local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v0

    .line 221
    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/BitSet;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 223
    .local v2, "t":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/BitSet;->getIndex(Ljava/lang/Object;)I

    move-result v6

    const/16 v7, 0x40

    div-int/lit8 v6, v6, 0x40

    move v3, v6

    .line 224
    .local v3, "element":I
    const-wide/16 v6, 0x1

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/BitSet;->getIndex(Ljava/lang/Object;)I

    move-result v8

    const/16 v9, 0x40

    rem-int/lit8 v8, v8, 0x40

    shl-long/2addr v6, v8

    move-wide v4, v6

    .line 226
    .local v4, "bit":J
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v7, v7

    if-ge v6, v7, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v7, v3

    aget-wide v6, v6, v7

    move-wide v8, v4

    and-long/2addr v6, v8

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 233
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v2, p1

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 235
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 254
    .end local v1    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v1

    .line 238
    .restart local v1    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_1
    move-object v6, v2

    check-cast v6, Lcom/sun/javafx/css/BitSet;

    move-object v3, v6

    .line 241
    .local v3, "other":Lcom/sun/javafx/css/BitSet;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v6, v6

    if-nez v6, :cond_2

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v6, v6

    if-nez v6, :cond_2

    .line 242
    const/4 v6, 0x1

    move v1, v6

    goto :goto_0

    .line 245
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v6, v6

    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 246
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 249
    :cond_3
    const/4 v6, 0x0

    move v4, v6

    .local v4, "n":I
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v6, v6

    move v5, v6

    .local v5, "max":I
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_5

    .line 250
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v7, v4

    aget-wide v6, v6, v7

    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v9, v4

    aget-wide v8, v8, v9

    and-long/2addr v6, v8

    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v9, v4

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 251
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 249
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    :cond_5
    const/4 v6, 0x1

    move v1, v6

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v1

    if-ne v10, v11, :cond_0

    .line 512
    const/4 v10, 0x1

    move v0, v10

    .line 533
    .end local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v0

    .line 515
    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_0
    move-object v10, v1

    if-eqz v10, :cond_1

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v10, v11, :cond_2

    .line 516
    :cond_1
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 519
    :cond_2
    move-object v10, v1

    check-cast v10, Lcom/sun/javafx/css/BitSet;

    move-object v2, v10

    .line 521
    .local v2, "other":Lcom/sun/javafx/css/BitSet;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/BitSet;->bits:[J

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v10, v10

    :goto_1
    move v3, v10

    .line 522
    .local v3, "a":I
    move-object v10, v2

    iget-object v10, v10, Lcom/sun/javafx/css/BitSet;->bits:[J

    if-eqz v10, :cond_4

    move-object v10, v2

    iget-object v10, v10, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v10, v10

    :goto_2
    move v4, v10

    .line 524
    .local v4, "b":I
    move v10, v3

    move v11, v4

    if-eq v10, v11, :cond_5

    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 521
    .end local v3    # "a":I
    .end local v4    # "b":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 522
    .restart local v3    # "a":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 526
    .restart local v4    # "b":I
    :cond_5
    const/4 v10, 0x0

    move v5, v10

    .local v5, "m":I
    :goto_3
    move v10, v5

    move v11, v3

    if-ge v10, v11, :cond_7

    .line 527
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v11, v5

    aget-wide v10, v10, v11

    move-wide v6, v10

    .line 528
    .local v6, "m0":J
    move-object v10, v2

    iget-object v10, v10, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v11, v5

    aget-wide v10, v10, v11

    move-wide v8, v10

    .line 529
    .local v8, "m1":J
    move-wide v10, v6

    move-wide v12, v8

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 530
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 526
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 533
    .end local v6    # "m0":J
    .end local v8    # "m1":J
    :cond_7
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method protected getBits()[J
    .locals 2

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    return-object v0
.end method

.method protected abstract getIndex(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected abstract getT(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 11

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    const/4 v5, 0x7

    move v1, v5

    .line 499
    .local v1, "hash":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v5, v5

    if-lez v5, :cond_0

    .line 500
    const/4 v5, 0x0

    move v2, v5

    .local v2, "n":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 501
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v6, v2

    aget-wide v5, v5, v6

    move-wide v3, v5

    .line 502
    .local v3, "mask":J
    const/16 v5, 0x47

    move v6, v1

    mul-int/2addr v5, v6

    move-wide v6, v3

    move-wide v8, v3

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int/2addr v5, v6

    move v1, v5

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "n":I
    .end local v3    # "mask":J
    :cond_0
    move v5, v1

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v4, v4

    if-lez v4, :cond_1

    .line 72
    const/4 v4, 0x0

    move v1, v4

    .local v1, "n":I
    :goto_0
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 73
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v5, v1

    aget-wide v4, v4, v5

    move-wide v2, v4

    .line 74
    .local v2, "mask":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 75
    const/4 v4, 0x0

    move v0, v4

    .line 80
    .end local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_1
    return v0

    .line 72
    .restart local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "n":I
    .end local v2    # "mask":J
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    new-instance v1, Lcom/sun/javafx/css/BitSet$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/css/BitSet$1;-><init>(Lcom/sun/javafx/css/BitSet;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 20

    .prologue
    .line 178
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object/from16 v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v12, v2

    if-nez v12, :cond_0

    .line 180
    const/4 v12, 0x0

    move v1, v12

    .line 210
    .end local v1    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v1

    .line 183
    .restart local v1    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_0
    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/BitSet;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v3, v12

    .line 185
    .local v3, "t":Ljava/lang/Object;, "TT;"
    move-object v12, v1

    move-object v13, v3

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/BitSet;->getIndex(Ljava/lang/Object;)I

    move-result v12

    const/16 v13, 0x40

    div-int/lit8 v12, v12, 0x40

    move v4, v12

    .line 186
    .local v4, "element":I
    const-wide/16 v12, 0x1

    move-object v14, v1

    move-object v15, v3

    invoke-virtual {v14, v15}, Lcom/sun/javafx/css/BitSet;->getIndex(Ljava/lang/Object;)I

    move-result v14

    const/16 v15, 0x40

    rem-int/lit8 v14, v14, 0x40

    shl-long/2addr v12, v14

    move-wide v5, v12

    .line 188
    .local v5, "bit":J
    move v12, v4

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v13, v13

    if-lt v12, v13, :cond_1

    .line 190
    const/4 v12, 0x0

    move v1, v12

    goto :goto_0

    .line 193
    :cond_1
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v13, v4

    aget-wide v12, v12, v13

    move-wide v7, v12

    .line 194
    .local v7, "temp":J
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v13, v4

    move-wide v14, v7

    move-wide/from16 v16, v5

    const-wide/16 v18, -0x1

    xor-long v16, v16, v18

    and-long v14, v14, v16

    aput-wide v14, v12, v13

    .line 197
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v13, v4

    aget-wide v12, v12, v13

    move-wide v14, v7

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    move v9, v12

    .line 198
    .local v9, "modified":Z
    move v12, v9

    if-eqz v12, :cond_6

    .line 199
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    invoke-static {v12}, Lcom/sun/javafx/collections/SetListenerHelper;->hasListeners(Lcom/sun/javafx/collections/SetListenerHelper;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 200
    move-object v12, v1

    move-object v13, v3

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/BitSet;->notifyObservers(Ljava/lang/Object;Z)V

    .line 204
    :cond_2
    const/4 v12, 0x1

    move v10, v12

    .line 205
    .local v10, "isEmpty":Z
    const/4 v12, 0x0

    move v11, v12

    .local v11, "n":I
    :goto_2
    move v12, v11

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v13, v13

    if-ge v12, v13, :cond_5

    move v12, v10

    if-eqz v12, :cond_5

    .line 206
    move v12, v10

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v14, v11

    aget-wide v13, v13, v14

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    const/4 v13, 0x1

    :goto_3
    and-int/2addr v12, v13

    move v10, v12

    .line 205
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 197
    .end local v9    # "modified":Z
    .end local v10    # "isEmpty":Z
    .end local v11    # "n":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 206
    .restart local v9    # "modified":Z
    .restart local v10    # "isEmpty":Z
    .restart local v11    # "n":I
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 208
    :cond_5
    move v12, v10

    if-eqz v12, :cond_6

    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    iput-object v13, v12, Lcom/sun/javafx/css/BitSet;->bits:[J

    .line 210
    .end local v10    # "isEmpty":Z
    .end local v11    # "n":I
    :cond_6
    move v12, v9

    move v1, v12

    goto/16 :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 416
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object/from16 v3, p1

    .local v3, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object/from16 v20, v3

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 418
    :cond_0
    const/16 v20, 0x0

    move/from16 v2, v20

    .line 473
    .end local v2    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v2

    .line 421
    .restart local v2    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_1
    const/16 v20, 0x0

    move/from16 v4, v20

    .line 423
    .local v4, "modified":Z
    move-object/from16 v20, v3

    check-cast v20, Lcom/sun/javafx/css/BitSet;

    move-object/from16 v5, v20

    .line 425
    .local v5, "other":Lcom/sun/javafx/css/BitSet;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object/from16 v20, v0

    move-object/from16 v6, v20

    .line 426
    .local v6, "maskOne":[J
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 428
    .local v7, "maskTwo":[J
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v8, v20

    .line 429
    .local v8, "a":I
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 431
    .local v9, "b":I
    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move/from16 v20, v8

    :goto_1
    move/from16 v10, v20

    .line 433
    .local v10, "max":I
    move/from16 v20, v10

    if-lez v20, :cond_3

    move/from16 v20, v10

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    :goto_2
    move-object/from16 v11, v20

    .line 444
    .local v11, "difference":[J
    const/16 v20, 0x1

    move/from16 v12, v20

    .line 446
    .local v12, "isEmpty":Z
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "n":I
    :goto_3
    move/from16 v20, v13

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 447
    move-object/from16 v20, v11

    move/from16 v21, v13

    move-object/from16 v22, v6

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v7

    move/from16 v25, v13

    aget-wide v24, v24, v25

    const-wide/16 v26, -0x1

    xor-long v24, v24, v26

    and-long v22, v22, v24

    aput-wide v22, v20, v21

    .line 448
    move/from16 v20, v4

    move-object/from16 v21, v11

    move/from16 v22, v13

    aget-wide v21, v21, v22

    move-object/from16 v23, v6

    move/from16 v24, v13

    aget-wide v23, v23, v24

    cmp-long v21, v21, v23

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_4
    or-int v20, v20, v21

    move/from16 v4, v20

    .line 449
    move/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v13

    aget-wide v21, v21, v22

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_5

    const/16 v21, 0x1

    :goto_5
    and-int v20, v20, v21

    move/from16 v12, v20

    .line 446
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 431
    .end local v10    # "max":I
    .end local v11    # "difference":[J
    .end local v12    # "isEmpty":Z
    .end local v13    # "n":I
    :cond_2
    move/from16 v20, v9

    goto :goto_1

    .line 433
    .restart local v10    # "max":I
    :cond_3
    sget-object v20, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    goto :goto_2

    .line 448
    .restart local v11    # "difference":[J
    .restart local v12    # "isEmpty":Z
    .restart local v13    # "n":I
    :cond_4
    const/16 v21, 0x0

    goto :goto_4

    .line 449
    :cond_5
    const/16 v21, 0x0

    goto :goto_5

    .line 452
    :cond_6
    move/from16 v20, v4

    if-eqz v20, :cond_a

    .line 454
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/collections/SetListenerHelper;->hasListeners(Lcom/sun/javafx/collections/SetListenerHelper;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 456
    const/16 v20, 0x0

    move/from16 v13, v20

    :goto_6
    move/from16 v20, v13

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 458
    move-object/from16 v20, v6

    move/from16 v21, v13

    aget-wide v20, v20, v21

    move-object/from16 v22, v7

    move/from16 v23, v13

    aget-wide v22, v22, v23

    and-long v20, v20, v22

    move-wide/from16 v14, v20

    .line 460
    .local v14, "bitsRemoved":J
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "bit":I
    :goto_7
    move/from16 v20, v16

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 461
    const-wide/16 v20, 0x1

    move/from16 v22, v16

    shl-long v20, v20, v22

    move-wide/from16 v17, v20

    .line 462
    .local v17, "m":J
    move-wide/from16 v20, v17

    move-wide/from16 v22, v14

    and-long v20, v20, v22

    move-wide/from16 v22, v17

    cmp-long v20, v20, v22

    if-nez v20, :cond_7

    .line 463
    move-object/from16 v20, v2

    move/from16 v21, v13

    const/16 v22, 0x40

    mul-int/lit8 v21, v21, 0x40

    move/from16 v22, v16

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/BitSet;->getT(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v19, v20

    .line 464
    .local v19, "t":Ljava/lang/Object;, "TT;"
    move-object/from16 v20, v2

    move-object/from16 v21, v19

    const/16 v22, 0x1

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/css/BitSet;->notifyObservers(Ljava/lang/Object;Z)V

    .line 460
    .end local v19    # "t":Ljava/lang/Object;, "TT;"
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 456
    .end local v17    # "m":J
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 470
    .end local v14    # "bitsRemoved":J
    .end local v16    # "bit":I
    :cond_9
    move-object/from16 v20, v2

    move/from16 v21, v12

    if-nez v21, :cond_b

    move-object/from16 v21, v11

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/javafx/css/BitSet;->bits:[J

    .line 473
    :cond_a
    move/from16 v20, v4

    move/from16 v2, v20

    goto/16 :goto_0

    .line 470
    :cond_b
    sget-object v21, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    goto :goto_8
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 618
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v2

    .line 620
    :cond_0
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object v1, p1

    .local v1, "setChangeListener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TT;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 604
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v2

    .line 606
    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 334
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    move-object/from16 v3, p1

    .local v3, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object/from16 v20, v3

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 335
    :cond_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/BitSet;->clear()V

    .line 336
    const/16 v20, 0x1

    move/from16 v2, v20

    .line 408
    .end local v2    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :goto_0
    return v2

    .line 339
    .restart local v2    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    :cond_1
    const/16 v20, 0x0

    move/from16 v4, v20

    .line 341
    .local v4, "modified":Z
    move-object/from16 v20, v3

    check-cast v20, Lcom/sun/javafx/css/BitSet;

    move-object/from16 v5, v20

    .line 343
    .local v5, "other":Lcom/sun/javafx/css/BitSet;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object/from16 v20, v0

    move-object/from16 v6, v20

    .line 344
    .local v6, "maskOne":[J
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->bits:[J

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 346
    .local v7, "maskTwo":[J
    move-object/from16 v20, v6

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v8, v20

    .line 347
    .local v8, "a":I
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    .line 349
    .local v9, "b":I
    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move/from16 v20, v8

    :goto_1
    move/from16 v10, v20

    .line 351
    .local v10, "max":I
    move/from16 v20, v10

    if-lez v20, :cond_3

    move/from16 v20, v10

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    :goto_2
    move-object/from16 v11, v20

    .line 360
    .local v11, "intersection":[J
    move/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    const/16 v21, 0x1

    :goto_3
    or-int v20, v20, v21

    move/from16 v4, v20

    .line 371
    const/16 v20, 0x1

    move/from16 v12, v20

    .line 373
    .local v12, "isEmpty":Z
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "n":I
    :goto_4
    move/from16 v20, v13

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 374
    move-object/from16 v20, v11

    move/from16 v21, v13

    move-object/from16 v22, v6

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v7

    move/from16 v25, v13

    aget-wide v24, v24, v25

    and-long v22, v22, v24

    aput-wide v22, v20, v21

    .line 375
    move/from16 v20, v4

    move-object/from16 v21, v11

    move/from16 v22, v13

    aget-wide v21, v21, v22

    move-object/from16 v23, v6

    move/from16 v24, v13

    aget-wide v23, v23, v24

    cmp-long v21, v21, v23

    if-eqz v21, :cond_5

    const/16 v21, 0x1

    :goto_5
    or-int v20, v20, v21

    move/from16 v4, v20

    .line 376
    move/from16 v20, v12

    move-object/from16 v21, v11

    move/from16 v22, v13

    aget-wide v21, v21, v22

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_6

    const/16 v21, 0x1

    :goto_6
    and-int v20, v20, v21

    move/from16 v12, v20

    .line 373
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 349
    .end local v10    # "max":I
    .end local v11    # "intersection":[J
    .end local v12    # "isEmpty":Z
    .end local v13    # "n":I
    :cond_2
    move/from16 v20, v9

    goto :goto_1

    .line 351
    .restart local v10    # "max":I
    :cond_3
    sget-object v20, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    goto :goto_2

    .line 360
    .restart local v11    # "intersection":[J
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 375
    .restart local v12    # "isEmpty":Z
    .restart local v13    # "n":I
    :cond_5
    const/16 v21, 0x0

    goto :goto_5

    .line 376
    :cond_6
    const/16 v21, 0x0

    goto :goto_6

    .line 379
    :cond_7
    move/from16 v20, v4

    if-eqz v20, :cond_c

    .line 381
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/BitSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/collections/SetListenerHelper;->hasListeners(Lcom/sun/javafx/collections/SetListenerHelper;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 383
    const/16 v20, 0x0

    move/from16 v13, v20

    :goto_7
    move/from16 v20, v13

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 385
    const-wide/16 v20, 0x0

    move-wide/from16 v14, v20

    .line 387
    .local v14, "bitsRemoved":J
    move/from16 v20, v13

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 388
    move-object/from16 v20, v6

    move/from16 v21, v13

    aget-wide v20, v20, v21

    move-object/from16 v22, v7

    move/from16 v23, v13

    aget-wide v22, v22, v23

    const-wide/16 v24, -0x1

    xor-long v22, v22, v24

    and-long v20, v20, v22

    move-wide/from16 v14, v20

    .line 395
    :goto_8
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "bit":I
    :goto_9
    move/from16 v20, v16

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 396
    const-wide/16 v20, 0x1

    move/from16 v22, v16

    shl-long v20, v20, v22

    move-wide/from16 v17, v20

    .line 397
    .local v17, "m":J
    move-wide/from16 v20, v17

    move-wide/from16 v22, v14

    and-long v20, v20, v22

    move-wide/from16 v22, v17

    cmp-long v20, v20, v22

    if-nez v20, :cond_8

    .line 398
    move-object/from16 v20, v2

    move/from16 v21, v13

    const/16 v22, 0x40

    mul-int/lit8 v21, v21, 0x40

    move/from16 v22, v16

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/BitSet;->getT(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v19, v20

    .line 399
    .local v19, "t":Ljava/lang/Object;, "TT;"
    move-object/from16 v20, v2

    move-object/from16 v21, v19

    const/16 v22, 0x1

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/css/BitSet;->notifyObservers(Ljava/lang/Object;Z)V

    .line 395
    .end local v19    # "t":Ljava/lang/Object;, "TT;"
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 392
    .end local v16    # "bit":I
    .end local v17    # "m":J
    :cond_9
    move-object/from16 v20, v6

    move/from16 v21, v13

    aget-wide v20, v20, v21

    move-wide/from16 v14, v20

    goto :goto_8

    .line 383
    .restart local v16    # "bit":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 405
    .end local v14    # "bitsRemoved":J
    .end local v16    # "bit":I
    :cond_b
    move-object/from16 v20, v2

    move/from16 v21, v12

    if-nez v21, :cond_d

    move-object/from16 v21, v11

    :goto_a
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/javafx/css/BitSet;->bits:[J

    .line 408
    :cond_c
    move/from16 v20, v4

    move/from16 v2, v20

    goto/16 :goto_0

    .line 405
    :cond_d
    sget-object v21, Lcom/sun/javafx/css/BitSet;->EMPTY_SET:[J

    goto :goto_a
.end method

.method public size()I
    .locals 10

    .prologue
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    const/4 v6, 0x0

    move v2, v6

    .line 55
    .local v2, "size":I
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v6, v6

    if-lez v6, :cond_1

    .line 56
    const/4 v6, 0x0

    move v3, v6

    .local v3, "n":I
    :goto_0
    move v6, v3

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/BitSet;->bits:[J

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 57
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/css/BitSet;->bits:[J

    move v7, v3

    aget-wide v6, v6, v7

    move-wide v4, v6

    .line 58
    .local v4, "mask":J
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 59
    move v6, v2

    move-wide v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    add-int/2addr v6, v7

    move v2, v6

    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "n":I
    .end local v4    # "mask":J
    :cond_1
    move v6, v2

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/css/BitSet;, "Lcom/sun/javafx/css/BitSet<TT;>;"
    return v1
.end method
