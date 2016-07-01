.class public abstract Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "VirtualContainerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/Control;",
        "B:",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TC;>;I:",
        "Ljavafx/scene/control/IndexedCell;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<TC;TB;>;"
    }
.end annotation


# instance fields
.field protected final flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow",
            "<TI;>;"
        }
    .end annotation
.end field

.field protected rowCountDirty:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TB;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "TB;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 47
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->createVirtualFlow()Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    .line 49
    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/ScrollToEvent;->scrollToTopIndex()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 59
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;Ljavafx/scene/control/ScrollToEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->lambda$new$62(Ljavafx/scene/control/ScrollToEvent;)V

    return-void
.end method

.method private synthetic lambda$new$62(Ljavafx/scene/control/ScrollToEvent;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/control/ScrollToEvent;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->rowCountDirty:Z

    if-eqz v2, :cond_0

    .line 54
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->updateRowCount()V

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->rowCountDirty:Z

    .line 57
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollToEvent;->getScrollTarget()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->scrollTo(I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected checkState()V
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->rowCountDirty:Z

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->updateRowCount()V

    .line 114
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->rowCountDirty:Z

    .line 116
    :cond_0
    return-void
.end method

.method public abstract createCell()Ljavafx/scene/control/IndexedCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected createVirtualFlow()Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method getMaxCellWidth(I)D
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    move v1, p1

    .local v1, "rowsToCount":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->snappedLeftInset()D

    move-result-wide v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxCellWidth(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->snappedRightInset()D

    move-result-wide v4

    add-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    return-wide v0
.end method

.method getVirtualFlowPreferredHeight(I)D
    .locals 10

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    move v2, p1

    .local v2, "rows":I
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v3, v6

    .line 100
    .local v3, "height":D
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_0

    move v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 101
    move-wide v6, v3

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->flow:Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    move v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v3, v6

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_0
    move-wide v6, v3

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->snappedTopInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->snappedBottomInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    return-wide v1
.end method

.method protected layoutChildren(DDDD)V
    .locals 11

    .prologue
    .line 108
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;, "Lcom/sun/javafx/scene/control/skin/VirtualContainerBase<TC;TB;TI;>;"
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualContainerBase;->checkState()V

    .line 109
    return-void
.end method

.method protected abstract updateRowCount()V
.end method
