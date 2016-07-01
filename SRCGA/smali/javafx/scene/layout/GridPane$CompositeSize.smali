.class final Ljavafx/scene/layout/GridPane$CompositeSize;
.super Ljava/lang/Object;
.source "GridPane.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/GridPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositeSize"
.end annotation


# instance fields
.field private final fixedPercent:[D

.field private final gap:D

.field private multiSizes:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljavafx/scene/layout/GridPane$Interval;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private preset:Ljava/util/BitSet;

.field singleSizes:[D

.field private final totalFixedPercent:D


# direct methods
.method public constructor <init>(I[DDDD)V
    .locals 13

    .prologue
    .line 2527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "capacity":I
    move-object v2, p2

    .local v2, "fixedPercent":[D
    move-wide/from16 v3, p3

    .local v3, "totalFixedPercent":D
    move-wide/from16 v5, p5

    .local v5, "gap":D
    move-wide/from16 v7, p7

    .local v7, "initSize":D
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 2528
    move-object v9, v0

    move v10, v1

    new-array v10, v10, [D

    iput-object v10, v9, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    .line 2529
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move-wide v10, v7

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    .line 2531
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Ljavafx/scene/layout/GridPane$CompositeSize;->fixedPercent:[D

    .line 2532
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Ljavafx/scene/layout/GridPane$CompositeSize;->totalFixedPercent:D

    .line 2533
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Ljavafx/scene/layout/GridPane$CompositeSize;->gap:D

    .line 2534
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V
    .locals 8

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move-wide v2, p2

    .local v2, "x2":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane$CompositeSize;->setPresetSize(ID)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V
    .locals 8

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move-wide v2, p2

    .local v2, "x2":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane$CompositeSize;->setSize(ID)V

    return-void
.end method

.method static synthetic access$1200(Ljavafx/scene/layout/GridPane$CompositeSize;I)Z
    .locals 4

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/layout/GridPane$CompositeSize;->isPreset(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return v0
.end method

.method static synthetic access$1300(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V
    .locals 8

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move-wide v2, p2

    .local v2, "x2":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane$CompositeSize;->setMaxSize(ID)V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/layout/GridPane$CompositeSize;IID)V
    .locals 11

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move-wide v3, p3

    .local v3, "x3":D
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/layout/GridPane$CompositeSize;->setMaxMultiSize(IID)V

    return-void
.end method

.method static synthetic access$1500(Ljavafx/scene/layout/GridPane$CompositeSize;)I
    .locals 2

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane$CompositeSize;->getLength()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return v0
.end method

.method static synthetic access$1600(Ljavafx/scene/layout/GridPane$CompositeSize;)D
    .locals 3

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane$CompositeSize;->computeTotal()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method static synthetic access$1700(Ljavafx/scene/layout/GridPane$CompositeSize;)Ljava/lang/Iterable;
    .locals 2

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes()Ljava/lang/Iterable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-object v0
.end method

.method static synthetic access$1900(Ljavafx/scene/layout/GridPane$CompositeSize;II)D
    .locals 6

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/GridPane$CompositeSize;->computeTotal(II)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method static synthetic access$2000(Ljavafx/scene/layout/GridPane$CompositeSize;IZ)D
    .locals 6

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/GridPane$CompositeSize;->getProportionalMinOrMaxSize(IZ)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method static synthetic access$2100(Ljavafx/scene/layout/GridPane$CompositeSize;ID)V
    .locals 8

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move-wide v2, p2

    .local v2, "x2":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane$CompositeSize;->addSize(ID)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/layout/GridPane$CompositeSize;)[D
    .locals 2

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane$CompositeSize;->asArray()[D

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/layout/GridPane$CompositeSize;)D
    .locals 3

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/GridPane$CompositeSize;->computeTotalWithMultiSize()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method static synthetic access$900(Ljavafx/scene/layout/GridPane$CompositeSize;I)D
    .locals 4

    .prologue
    .line 2515
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/layout/GridPane$CompositeSize;->getSize(I)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "x0":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method private addSize(ID)V
    .locals 10

    .prologue
    .line 2556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "position":I
    move-wide v2, p2

    .local v2, "change":D
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v7, v1

    aget-wide v6, v6, v7

    move-wide v8, v2

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    .line 2557
    return-void
.end method

.method private allPreset(II)Z
    .locals 6

    .prologue
    .line 2629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "begin":I
    move v2, p2

    .local v2, "end":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->preset:Ljava/util/BitSet;

    if-nez v4, :cond_0

    .line 2630
    const/4 v4, 0x0

    move v0, v4

    .line 2637
    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_0
    return v0

    .line 2632
    .restart local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    :cond_0
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 2633
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->preset:Ljava/util/BitSet;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2634
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 2632
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2637
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private asArray()[D
    .locals 2

    .prologue
    .line 2695
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-object v0
.end method

.method private computeTotal()D
    .locals 4

    .prologue
    .line 2625
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/GridPane$CompositeSize;->computeTotal(II)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method private computeTotal(II)D
    .locals 10

    .prologue
    .line 2617
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/layout/GridPane$CompositeSize;->gap:D

    move v8, v2

    move v9, v1

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    int-to-double v8, v8

    mul-double/2addr v6, v8

    move-wide v3, v6

    .line 2618
    .local v3, "total":D
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 2619
    move-wide v6, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v9, v5

    aget-wide v8, v8, v9

    add-double/2addr v6, v8

    move-wide v3, v6

    .line 2618
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2621
    :cond_0
    move-wide v6, v3

    move-wide v0, v6

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method private computeTotalWithMultiSize()D
    .locals 16

    .prologue
    .line 2641
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/layout/GridPane$CompositeSize;->computeTotal()D

    move-result-wide v8

    move-wide v1, v8

    .line 2642
    .local v1, "total":D
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    if-eqz v8, :cond_1

    .line 2643
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 2644
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/layout/GridPane$Interval;

    move-object v5, v8

    .line 2645
    .local v5, "i":Ljavafx/scene/layout/GridPane$Interval;
    move-object v8, v0

    move-object v9, v5

    iget v9, v9, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move-object v10, v5

    iget v10, v10, Ljavafx/scene/layout/GridPane$Interval;->end:I

    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/GridPane$CompositeSize;->allPreset(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2646
    move-object v8, v0

    move-object v9, v5

    iget v9, v9, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move-object v10, v5

    iget v10, v10, Ljavafx/scene/layout/GridPane$Interval;->end:I

    invoke-direct {v8, v9, v10}, Ljavafx/scene/layout/GridPane$CompositeSize;->computeTotal(II)D

    move-result-wide v8

    move-wide v6, v8

    .line 2647
    .local v6, "subTotal":D
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-wide v10, v6

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 2648
    move-wide v8, v1

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-wide v12, v6

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v1, v8

    .line 2651
    .end local v6    # "subTotal":D
    :cond_0
    goto :goto_0

    .line 2653
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/layout/GridPane$Interval;Ljava/lang/Double;>;"
    .end local v5    # "i":Ljavafx/scene/layout/GridPane$Interval;
    :cond_1
    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->totalFixedPercent:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_7

    .line 2654
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 2656
    .local v3, "totalNotFixed":D
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_1
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/layout/GridPane$CompositeSize;->fixedPercent:[D

    array-length v9, v9

    if-ge v8, v9, :cond_3

    .line 2657
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->fixedPercent:[D

    move v9, v5

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_2

    .line 2658
    move-wide v8, v1

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v11, v5

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    move-wide v1, v8

    .line 2656
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2661
    :cond_3
    const/4 v8, 0x0

    move v5, v8

    :goto_2
    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/layout/GridPane$CompositeSize;->fixedPercent:[D

    array-length v9, v9

    if-ge v8, v9, :cond_6

    .line 2662
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->fixedPercent:[D

    move v9, v5

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_5

    .line 2665
    move-wide v8, v1

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v11, v5

    aget-wide v10, v10, v11

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->fixedPercent:[D

    move v15, v5

    aget-wide v14, v14, v15

    div-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v1, v8

    .line 2661
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2666
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->fixedPercent:[D

    move v9, v5

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    .line 2667
    move-wide v8, v3

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v11, v5

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    move-wide v3, v8

    goto :goto_3

    .line 2670
    :cond_6
    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->totalFixedPercent:D

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_7

    .line 2671
    move-wide v8, v1

    move-wide v10, v3

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-object v14, v0

    iget-wide v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->totalFixedPercent:D

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v1, v8

    .line 2674
    .end local v3    # "totalNotFixed":D
    .end local v5    # "i":I
    :cond_7
    move-wide v8, v1

    move-wide v0, v8

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method private getLength()I
    .locals 2

    .prologue
    .line 2678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return v0
.end method

.method private getProportionalMinOrMaxSize(IZ)D
    .locals 20

    .prologue
    .line 2596
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move/from16 v3, p1

    .local v3, "position":I
    move/from16 v4, p2

    .local v4, "min":Z
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v15, v3

    aget-wide v14, v14, v15

    move-wide v5, v14

    .line 2597
    .local v5, "result":D
    move-object v14, v2

    move v15, v3

    invoke-direct {v14, v15}, Ljavafx/scene/layout/GridPane$CompositeSize;->isPreset(I)Z

    move-result v14

    if-nez v14, :cond_5

    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    if-eqz v14, :cond_5

    .line 2598
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    invoke-interface {v14}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v7, v14

    :goto_0
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/layout/GridPane$Interval;

    move-object v8, v14

    .line 2599
    .local v8, "i":Ljavafx/scene/layout/GridPane$Interval;
    move-object v14, v8

    move v15, v3

    invoke-static {v14, v15}, Ljavafx/scene/layout/GridPane$Interval;->access$1800(Ljavafx/scene/layout/GridPane$Interval;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2600
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    move-object v15, v8

    invoke-interface {v14, v15}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljavafx/scene/layout/GridPane$Interval;->access$2700(Ljavafx/scene/layout/GridPane$Interval;)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-wide v9, v14

    .line 2601
    .local v9, "segment":D
    move-wide v14, v9

    move-wide v11, v14

    .line 2602
    .local v11, "propSize":D
    move-object v14, v8

    iget v14, v14, Ljavafx/scene/layout/GridPane$Interval;->begin:I

    move v13, v14

    .local v13, "j":I
    :goto_1
    move v14, v13

    move-object v15, v8

    iget v15, v15, Ljavafx/scene/layout/GridPane$Interval;->end:I

    if-ge v14, v15, :cond_2

    .line 2603
    move v14, v13

    move v15, v3

    if-eq v14, v15, :cond_0

    .line 2604
    move v14, v4

    if-eqz v14, :cond_1

    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v15, v13

    aget-wide v14, v14, v15

    move-wide/from16 v16, v9

    cmpl-double v14, v14, v16

    if-lez v14, :cond_0

    .line 2605
    :goto_2
    move-wide v14, v11

    move-wide/from16 v16, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move-object/from16 v18, v0

    move/from16 v19, v13

    aget-wide v18, v18, v19

    sub-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v11, v14

    .line 2602
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2604
    :cond_1
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v15, v13

    aget-wide v14, v14, v15

    move-wide/from16 v16, v9

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    goto :goto_2

    .line 2609
    :cond_2
    move v14, v4

    if-eqz v14, :cond_4

    move-wide v14, v5

    move-wide/from16 v16, v11

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    :goto_3
    move-wide v5, v14

    .line 2611
    .end local v9    # "segment":D
    .end local v11    # "propSize":D
    .end local v13    # "j":I
    :cond_3
    goto/16 :goto_0

    .line 2609
    .restart local v9    # "segment":D
    .restart local v11    # "propSize":D
    .restart local v13    # "j":I
    :cond_4
    move-wide v14, v5

    move-wide/from16 v16, v11

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    goto :goto_3

    .line 2613
    .end local v8    # "i":Ljavafx/scene/layout/GridPane$Interval;
    .end local v9    # "segment":D
    .end local v11    # "propSize":D
    .end local v13    # "j":I
    :cond_5
    move-wide v14, v5

    move-wide v2, v14

    .end local v2    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v2
.end method

.method private getSize(I)D
    .locals 4

    .prologue
    .line 2560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-wide v0
.end method

.method private isPreset(I)Z
    .locals 4

    .prologue
    .line 2549
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/GridPane$CompositeSize;->preset:Ljava/util/BitSet;

    if-nez v2, :cond_0

    .line 2550
    const/4 v2, 0x0

    move v0, v2

    .line 2552
    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/GridPane$CompositeSize;->preset:Ljava/util/BitSet;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private multiSizes()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljavafx/scene/layout/GridPane$Interval;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2576
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    if-nez v1, :cond_0

    .line 2577
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v1

    .line 2579
    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private setMaxMultiSize(IID)V
    .locals 15

    .prologue
    .line 2583
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move/from16 v2, p1

    .local v2, "startPosition":I
    move/from16 v3, p2

    .local v3, "endPosition":I
    move-wide/from16 v4, p3

    .local v4, "size":D
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    if-nez v8, :cond_0

    .line 2584
    move-object v8, v1

    new-instance v9, Ljava/util/TreeMap;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    iput-object v9, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    .line 2586
    :cond_0
    new-instance v8, Ljavafx/scene/layout/GridPane$Interval;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v2

    move v11, v3

    invoke-direct {v9, v10, v11}, Ljavafx/scene/layout/GridPane$Interval;-><init>(II)V

    move-object v6, v8

    .line 2587
    .local v6, "i":Ljavafx/scene/layout/GridPane$Interval;
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    move-object v7, v8

    .line 2588
    .local v7, "sz":Ljava/lang/Double;
    move-object v8, v7

    if-nez v8, :cond_1

    .line 2589
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    move-object v9, v6

    move-wide v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2593
    :goto_0
    return-void

    .line 2591
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    move-object v9, v6

    move-wide v10, v4

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0
.end method

.method private setMaxSize(ID)V
    .locals 10

    .prologue
    .line 2564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "position":I
    move-wide v2, p2

    .local v2, "size":D
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v7, v1

    aget-wide v6, v6, v7

    move-wide v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 2565
    return-void
.end method

.method private setMultiSize(IID)V
    .locals 11

    .prologue
    .line 2568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "startPosition":I
    move v2, p2

    .local v2, "endPosition":I
    move-wide v3, p3

    .local v3, "size":D
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    if-nez v6, :cond_0

    .line 2569
    move-object v6, v0

    new-instance v7, Ljava/util/TreeMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    iput-object v7, v6, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    .line 2571
    :cond_0
    new-instance v6, Ljavafx/scene/layout/GridPane$Interval;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/layout/GridPane$Interval;-><init>(II)V

    move-object v5, v6

    .line 2572
    .local v5, "i":Ljavafx/scene/layout/GridPane$Interval;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    move-object v7, v5

    move-wide v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2573
    return-void
.end method

.method private setPresetSize(ID)V
    .locals 10

    .prologue
    .line 2541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "position":I
    move-wide v2, p2

    .local v2, "size":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/GridPane$CompositeSize;->setSize(ID)V

    .line 2542
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->preset:Ljava/util/BitSet;

    if-nez v4, :cond_0

    .line 2543
    move-object v4, v0

    new-instance v5, Ljava/util/BitSet;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    array-length v7, v7

    invoke-direct {v6, v7}, Ljava/util/BitSet;-><init>(I)V

    iput-object v5, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->preset:Ljava/util/BitSet;

    .line 2545
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->preset:Ljava/util/BitSet;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 2546
    return-void
.end method

.method private setSize(ID)V
    .locals 8

    .prologue
    .line 2537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move v1, p1

    .local v1, "position":I
    move-wide v2, p2

    .local v2, "size":D
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    move v5, v1

    move-wide v6, v2

    aput-wide v6, v4, v5

    .line 2538
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v1, v2

    .line 2685
    .local v1, "clone":Ljavafx/scene/layout/GridPane$CompositeSize;
    move-object v2, v1

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    iput-object v3, v2, Ljavafx/scene/layout/GridPane$CompositeSize;->singleSizes:[D

    .line 2686
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    if-eqz v2, :cond_0

    .line 2687
    move-object v2, v1

    new-instance v3, Ljava/util/TreeMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v3, v2, Ljavafx/scene/layout/GridPane$CompositeSize;->multiSizes:Ljava/util/SortedMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2688
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    return-object v0

    .line 2689
    .end local v1    # "clone":Ljavafx/scene/layout/GridPane$CompositeSize;
    .restart local v0    # "this":Ljavafx/scene/layout/GridPane$CompositeSize;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2690
    .local v1, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
