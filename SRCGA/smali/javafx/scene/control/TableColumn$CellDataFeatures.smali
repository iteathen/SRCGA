.class public Ljavafx/scene/control/TableColumn$CellDataFeatures;
.super Ljava/lang/Object;
.source "TableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableColumn;
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
.field private final tableColumn:Ljavafx/scene/control/TableColumn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private final tableView:Ljavafx/scene/control/TableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TableColumn;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, p1

    .local v1, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, p2

    .local v2, "tableColumn":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;, "TS;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 697
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TableColumn$CellDataFeatures;->tableView:Ljavafx/scene/control/TableView;

    .line 698
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/control/TableColumn$CellDataFeatures;->tableColumn:Ljavafx/scene/control/TableColumn;

    .line 699
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/control/TableColumn$CellDataFeatures;->value:Ljava/lang/Object;

    .line 700
    return-void
.end method


# virtual methods
.method public getTableColumn()Ljavafx/scene/control/TableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$CellDataFeatures;->tableColumn:Ljavafx/scene/control/TableColumn;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    return-object v0
.end method

.method public getTableView()Ljavafx/scene/control/TableView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$CellDataFeatures;->tableView:Ljavafx/scene/control/TableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 706
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$CellDataFeatures;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellDataFeatures;, "Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;"
    return-object v0
.end method
