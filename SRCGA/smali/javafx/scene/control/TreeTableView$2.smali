.class final Ljavafx/scene/control/TreeTableView$2;
.super Ljava/lang/Object;
.source "TreeTableView.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TreeTableView$ResizeFeatures;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private isFirstRun:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$2;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 530
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/TreeTableView$2;->isFirstRun:Z

    return-void
.end method


# virtual methods
.method public call(Ljavafx/scene/control/TreeTableView$ResizeFeatures;)Ljava/lang/Boolean;
    .locals 11

    .prologue
    .line 537
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TreeTableView$2;
    move-object v2, p1

    .local v2, "prop":Ljavafx/scene/control/TreeTableView$ResizeFeatures;
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$ResizeFeatures;->getTable()Ljavafx/scene/control/TreeTableView;

    move-result-object v6

    move-object v3, v6

    .line 538
    .local v3, "table":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<*>;"
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v4, v6

    .line 539
    .local v4, "visibleLeafColumns":Ljava/util/List;, "Ljava/util/List<+Ljavafx/scene/control/TableColumnBase<**>;>;"
    move-object v6, v2

    move-object v7, v1

    iget-boolean v7, v7, Ljavafx/scene/control/TreeTableView$2;->isFirstRun:Z

    move-object v8, v3

    iget-wide v8, v8, Ljavafx/scene/control/TreeTableView;->contentWidth:D

    move-object v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/scene/control/TableUtil;->constrainedResize(Ljavafx/scene/control/ResizeFeaturesBase;ZDLjava/util/List;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v5, v6

    .line 543
    .local v5, "result":Ljava/lang/Boolean;
    move-object v6, v1

    move-object v7, v1

    iget-boolean v7, v7, Ljavafx/scene/control/TreeTableView$2;->isFirstRun:Z

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, v6, Ljavafx/scene/control/TreeTableView$2;->isFirstRun:Z

    .line 544
    move-object v6, v5

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/control/TreeTableView$2;
    return-object v1

    .line 543
    .restart local v1    # "this":Ljavafx/scene/control/TreeTableView$2;
    :cond_0
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TreeTableView$ResizeFeatures;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$2;->call(Ljavafx/scene/control/TreeTableView$ResizeFeatures;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$2;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$2;
    const-string v1, "constrained-resize"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$2;
    return-object v0
.end method
