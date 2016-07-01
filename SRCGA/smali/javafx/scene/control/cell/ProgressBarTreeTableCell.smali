.class public Ljavafx/scene/control/cell/ProgressBarTreeTableCell;
.super Ljavafx/scene/control/TreeTableCell;
.source "ProgressBarTreeTableCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TreeTableCell",
        "<TS;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final progressBar:Ljavafx/scene/control/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ProgressBarTreeTableCell;, "Ljavafx/scene/control/cell/ProgressBarTreeTableCell<TS;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeTableCell;-><init>()V

    .line 87
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "progress-bar-tree-table-cell"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 89
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ProgressBar;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/ProgressBar;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->progressBar:Ljavafx/scene/control/ProgressBar;

    .line 90
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->progressBar:Ljavafx/scene/control/ProgressBar;

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ProgressBar;->setMaxWidth(D)V

    .line 91
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->lambda$forTreeTableColumn$633(Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static forTreeTableColumn()Ljavafx/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;",
            "Ljava/lang/Double;",
            ">;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell$$Lambda$1;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$forTreeTableColumn$633(Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "param":Ljavafx/scene/control/TreeTableColumn;
    new-instance v1, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;-><init>()V

    move-object v0, v1

    .end local v0    # "param":Ljavafx/scene/control/TreeTableColumn;
    return-object v0
.end method


# virtual methods
.method public updateItem(Ljava/lang/Double;Z)V
    .locals 8

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/cell/ProgressBarTreeTableCell;, "Ljavafx/scene/control/cell/ProgressBarTreeTableCell<TS;>;"
    move-object v2, p1

    .local v2, "item":Ljava/lang/Double;
    move v3, p2

    .local v3, "empty":Z
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/TreeTableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 105
    move v5, v3

    if-eqz v5, :cond_0

    .line 106
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 121
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->progressBar:Ljavafx/scene/control/ProgressBar;

    invoke-virtual {v5}, Ljavafx/scene/control/ProgressBar;->progressProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->unbind()V

    .line 110
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v5

    move-object v4, v5

    .line 111
    .local v4, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;Ljava/lang/Double;>;"
    move-object v5, v1

    move-object v6, v4

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    iput-object v6, v5, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->observable:Ljavafx/beans/value/ObservableValue;

    .line 113
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v5, :cond_3

    .line 114
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->progressBar:Ljavafx/scene/control/ProgressBar;

    invoke-virtual {v5}, Ljavafx/scene/control/ProgressBar;->progressProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 119
    :cond_1
    :goto_2
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->progressBar:Ljavafx/scene/control/ProgressBar;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 111
    :cond_2
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->getIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljavafx/scene/control/TreeTableColumn;->getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;

    move-result-object v6

    goto :goto_1

    .line 115
    :cond_3
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 116
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->progressBar:Ljavafx/scene/control/ProgressBar;

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ProgressBar;->setProgress(D)V

    goto :goto_2
.end method

.method public bridge synthetic updateItem(Ljava/lang/Object;Z)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ProgressBarTreeTableCell;, "Ljavafx/scene/control/cell/ProgressBarTreeTableCell<TS;>;"
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Double;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/cell/ProgressBarTreeTableCell;->updateItem(Ljava/lang/Double;Z)V

    return-void
.end method
