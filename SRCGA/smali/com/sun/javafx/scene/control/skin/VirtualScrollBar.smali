.class public Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
.super Ljavafx/scene/control/ScrollBar;
.source "VirtualScrollBar.java"


# instance fields
.field private adjusting:Z

.field private final flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

.field private virtual:Z


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v1, p1

    .local v1, "flow":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ScrollBar;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    .line 48
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/ScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->lambda$new$101(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$101(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v1, p1

    .local v1, "flow":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v2, p2

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVirtual()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->adjusting:Z

    if-eqz v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    goto :goto_0
.end method


# virtual methods
.method public adjustValue(D)V
    .locals 17

    .prologue
    .line 89
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-wide/from16 v1, p1

    .local v1, "pos":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVirtual()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 94
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->adjusting:Z

    .line 95
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v8

    move-wide v3, v8

    .line 97
    .local v3, "oldValue":D
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getMax()D

    move-result-wide v8

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    move-wide v12, v1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getMin()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-wide v5, v8

    .line 98
    .local v5, "newValue":D
    move-wide v8, v5

    move-wide v10, v3

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 99
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v8

    move-object v7, v8

    .line 100
    .local v7, "cell":Ljavafx/scene/control/IndexedCell;
    move-object v8, v7

    if-nez v8, :cond_0

    .line 113
    .end local v3    # "oldValue":D
    .end local v5    # "newValue":D
    .end local v7    # "cell":Ljavafx/scene/control/IndexedCell;
    :goto_0
    return-void

    .line 101
    .restart local v3    # "oldValue":D
    .restart local v5    # "newValue":D
    .restart local v7    # "cell":Ljavafx/scene/control/IndexedCell;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsLast(Ljavafx/scene/control/IndexedCell;)V

    .line 102
    .line 109
    .end local v7    # "cell":Ljavafx/scene/control/IndexedCell;
    :cond_1
    :goto_1
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->adjusting:Z

    .line 110
    .line 113
    .end local v3    # "oldValue":D
    .end local v5    # "newValue":D
    :goto_2
    goto :goto_0

    .line 102
    .restart local v3    # "oldValue":D
    .restart local v5    # "newValue":D
    :cond_2
    move-wide v8, v5

    move-wide v10, v3

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 103
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v8

    move-object v7, v8

    .line 104
    .restart local v7    # "cell":Ljavafx/scene/control/IndexedCell;
    move-object v8, v7

    if-nez v8, :cond_3

    goto :goto_0

    .line 105
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->showAsFirst(Ljavafx/scene/control/IndexedCell;)V

    goto :goto_1

    .line 111
    .end local v3    # "oldValue":D
    .end local v5    # "newValue":D
    .end local v7    # "cell":Ljavafx/scene/control/IndexedCell;
    :cond_4
    move-object v8, v0

    move-wide v9, v1

    invoke-super {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->adjustValue(D)V

    goto :goto_2
.end method

.method public decrement()V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVirtual()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v1

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ScrollBar;->decrement()V

    goto :goto_0
.end method

.method public increment()V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVirtual()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v1

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ScrollBar;->increment()V

    goto :goto_0
.end method

.method public isVirtual()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->virtual:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    return v0
.end method

.method public setVirtual(Z)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move v1, p1

    .local v1, "virtual":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->virtual:Z

    .line 61
    return-void
.end method
