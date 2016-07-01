.class public Ljavafx/scene/control/TableView$ResizeFeatures;
.super Ljavafx/scene/control/ResizeFeaturesBase;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
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
        "<TS;>;"
    }
.end annotation


# instance fields
.field private table:Ljavafx/scene/control/TableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TableColumn;Ljava/lang/Double;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1794
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$ResizeFeatures;, "Ljavafx/scene/control/TableView$ResizeFeatures<TS;>;"
    move-object v1, p1

    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, p2

    .local v2, "column":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v3, p3

    .local v3, "delta":Ljava/lang/Double;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/ResizeFeaturesBase;-><init>(Ljavafx/scene/control/TableColumnBase;Ljava/lang/Double;)V

    .line 1795
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TableView$ResizeFeatures;->table:Ljavafx/scene/control/TableView;

    .line 1796
    return-void
.end method


# virtual methods
.method public getColumn()Ljavafx/scene/control/TableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 1804
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$ResizeFeatures;, "Ljavafx/scene/control/TableView$ResizeFeatures<TS;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ResizeFeaturesBase;->getColumn()Ljavafx/scene/control/TableColumnBase;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$ResizeFeatures;, "Ljavafx/scene/control/TableView$ResizeFeatures<TS;>;"
    return-object v0
.end method

.method public bridge synthetic getColumn()Ljavafx/scene/control/TableColumnBase;
    .locals 2

    .prologue
    .line 1778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$ResizeFeatures;, "Ljavafx/scene/control/TableView$ResizeFeatures<TS;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$ResizeFeatures;->getColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$ResizeFeatures;, "Ljavafx/scene/control/TableView$ResizeFeatures<TS;>;"
    return-object v0
.end method

.method public getTable()Ljavafx/scene/control/TableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 1811
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$ResizeFeatures;, "Ljavafx/scene/control/TableView$ResizeFeatures<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$ResizeFeatures;->table:Ljavafx/scene/control/TableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$ResizeFeatures;, "Ljavafx/scene/control/TableView$ResizeFeatures<TS;>;"
    return-object v0
.end method
