.class public Ljavafx/scene/control/TreeTableColumn$CellEditEvent;
.super Ljavafx/event/Event;
.source "TreeTableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellEditEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/event/Event;"
    }
.end annotation


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x877076d901d8f4bL


# instance fields
.field private final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final transient pos:Ljavafx/scene/control/TreeTablePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 718
    # getter for: Ljavafx/scene/control/TreeTableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeTableColumn;->access$000()Ljavafx/event/EventType;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TreeTableView;Ljavafx/scene/control/TreeTablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;TT;>;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TreeTableColumn$CellEditEvent",
            "<TS;TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, p1

    .local v1, "table":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, p2

    .local v2, "pos":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;TT;>;"
    move-object v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v4, p4

    .local v4, "newValue":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 741
    move-object v5, v1

    if-nez v5, :cond_0

    .line 742
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "TableView can not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 744
    :cond_0
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TreeTablePosition;

    .line 745
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->newValue:Ljava/lang/Object;

    .line 746
    return-void
.end method


# virtual methods
.method public getNewValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->newValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->getRowValue()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v1, v2

    .line 795
    .local v1, "rowData":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TreeTablePosition;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    if-nez v2, :cond_1

    .line 796
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 800
    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TreeTablePosition;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableColumn;->getCellData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getRowValue()Ljavafx/scene/control/TreeItem;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v3

    move-object v1, v3

    .line 814
    .local v1, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TreeTablePosition;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    move v2, v3

    .line 815
    .local v2, "row":I
    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 817
    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    :cond_1
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getTableColumn()Ljavafx/scene/control/TreeTableColumn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TreeTablePosition;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    return-object v0
.end method

.method public getTreeTablePosition()Ljavafx/scene/control/TreeTablePosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TreeTablePosition;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
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
    .line 753
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TreeTablePosition;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTablePosition;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableColumn$CellEditEvent;, "Ljavafx/scene/control/TreeTableColumn$CellEditEvent<TS;TT;>;"
    return-object v0
.end method
