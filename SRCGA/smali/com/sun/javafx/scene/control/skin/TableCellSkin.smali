.class public Lcom/sun/javafx/scene/control/skin/TableCellSkin;
.super Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;
.source "TableCellSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/skin/TableCellSkinBase",
        "<",
        "Ljavafx/scene/control/TableCell",
        "<TS;TT;>;",
        "Lcom/sun/javafx/scene/control/behavior/TableCellBehavior",
        "<TS;TT;>;>;"
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


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TableCell;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TableCellSkin<TS;TT;>;"
    move-object v1, p1

    .local v1, "tableCell":Ljavafx/scene/control/TableCell;, "Ljavafx/scene/control/TableCell<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TableCellBehavior;-><init>(Ljavafx/scene/control/TableCell;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;-><init>(Ljavafx/scene/control/IndexedCell;Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;)V

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableCellSkin;->tableColumn:Ljavafx/scene/control/TableColumn;

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableCellSkinBase;->init(Ljavafx/scene/control/IndexedCell;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected columnVisibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TableCellSkin<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableCellSkin;->tableColumn:Ljavafx/scene/control/TableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TableCellSkin<TS;TT;>;"
    return-object v0
.end method

.method protected columnWidthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TableCellSkin<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableCellSkin;->tableColumn:Ljavafx/scene/control/TableColumn;

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TableCellSkin;, "Lcom/sun/javafx/scene/control/skin/TableCellSkin<TS;TT;>;"
    return-object v0
.end method
