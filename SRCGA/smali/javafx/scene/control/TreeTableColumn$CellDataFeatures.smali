.class public Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;
.super Ljava/lang/Object;
.source "TreeTableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellDataFeatures"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final tableColumn:Ljavafx/scene/control/TreeTableColumn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private final treeTableView:Ljavafx/scene/control/TreeTableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final value:Ljavafx/scene/control/TreeItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTableColumn;Ljavafx/scene/control/TreeItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, p1

    .local v1, "treeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, p2

    .local v2, "tableColumn":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;TT;>;"
    move-object v3, p3

    .local v3, "value":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 679
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;->treeTableView:Ljavafx/scene/control/TreeTableView;

    .line 680
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;->tableColumn:Ljavafx/scene/control/TreeTableColumn;

    .line 681
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;->value:Ljavafx/scene/control/TreeItem;

    .line 682
    return-void
.end method


# virtual methods
.method public getTreeTableColumn()Ljavafx/scene/control/TreeTableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 695
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;->tableColumn:Ljavafx/scene/control/TreeTableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    return-object v0
.end method

.method public getTreeTableView()Ljavafx/scene/control/TreeTableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;->treeTableView:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    return-object v0
.end method

.method public getValue()Ljavafx/scene/control/TreeItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;->value:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellDataFeatures;, "Ljavafx/scene/control/TreeTableColumn$CellDataFeatures<TS;TT;>;"
    return-object v0
.end method
