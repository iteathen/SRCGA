.class public Ljavafx/scene/control/TreeTableView$ResizeFeatures;
.super Ljavafx/scene/control/ResizeFeaturesBase;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResizeFeatures"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/ResizeFeaturesBase",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field private treeTable:Ljavafx/scene/control/TreeTableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTableColumn;Ljava/lang/Double;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2066
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$ResizeFeatures;, "Ljavafx/scene/control/TreeTableView$ResizeFeatures<TS;>;"
    move-object v1, p1

    .local v1, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v3, p3

    .local v3, "delta":Ljava/lang/Double;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/ResizeFeaturesBase;-><init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Double;)V

    .line 2067
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$ResizeFeatures;->treeTable:Ljavafx/scene/control/TreeTableView;

    .line 2068
    return-void
.end method


# virtual methods
.method public bridge synthetic getColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 2050
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$ResizeFeatures;, "Ljavafx/scene/control/TreeTableView$ResizeFeatures<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$ResizeFeatures;->getColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$ResizeFeatures;, "Ljavafx/scene/control/TreeTableView$ResizeFeatures<TS;>;"
    return-object v0
.end method

.method public getColumn()Ljavafx/scene/control/TreeTableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 2076
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$ResizeFeatures;, "Ljavafx/scene/control/TreeTableView$ResizeFeatures<TS;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ResizeFeaturesBase;->getColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TreeTableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$ResizeFeatures;, "Ljavafx/scene/control/TreeTableView$ResizeFeatures<TS;>;"
    return-object v0
.end method

.method public getTable()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 2082
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$ResizeFeatures;, "Ljavafx/scene/control/TreeTableView$ResizeFeatures<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$ResizeFeatures;->treeTable:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$ResizeFeatures;, "Ljavafx/scene/control/TreeTableView$ResizeFeatures<TS;>;"
    return-object v0
.end method
