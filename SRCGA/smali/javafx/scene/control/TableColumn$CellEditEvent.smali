.class public Ljavafx/scene/control/TableColumn$CellEditEvent;
.super Ljavafx/event/Event;
.source "TableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableColumn;
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

.field private final transient pos:Ljavafx/scene/control/TablePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TablePosition",
            "<TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 737
    # getter for: Ljavafx/scene/control/TableColumn;->EDIT_ANY_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TableColumn;->access$000()Ljavafx/event/EventType;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TableColumn$CellEditEvent;->ANY:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TablePosition;Ljavafx/event/EventType;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TablePosition",
            "<TS;TT;>;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, p1

    .local v1, "table":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, p2

    .local v2, "pos":Ljavafx/scene/control/TablePosition;, "Ljavafx/scene/control/TablePosition<TS;TT;>;"
    move-object v3, p3

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v4, p4

    .local v4, "newValue":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    move-object v6, v1

    sget-object v7, Ljavafx/event/Event;->NULL_SOURCE_TARGET:Ljavafx/event/EventTarget;

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 760
    move-object v5, v1

    if-nez v5, :cond_0

    .line 761
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "TableView can not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 763
    :cond_0
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/control/TableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TablePosition;

    .line 764
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/control/TableColumn$CellEditEvent;->newValue:Ljava/lang/Object;

    .line 765
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
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$CellEditEvent;->newValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
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
    .line 813
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableColumn$CellEditEvent;->getRowValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 814
    .local v1, "rowData":Ljava/lang/Object;, "TS;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TablePosition;

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v2

    if-nez v2, :cond_1

    .line 815
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 819
    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TablePosition;

    invoke-virtual {v2}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableColumn;->getCellData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getRowValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn$CellEditEvent;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v1, v3

    .line 830
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TS;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 835
    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    :goto_0
    return-object v0

    .line 832
    .restart local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TablePosition;

    invoke-virtual {v3}, Ljavafx/scene/control/TablePosition;->getRow()I

    move-result v3

    move v2, v3

    .line 833
    .local v2, "row":I
    move v3, v2

    if-ltz v3, :cond_1

    move v3, v2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 835
    :cond_2
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

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
    .line 781
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TablePosition;

    invoke-virtual {v1}, Ljavafx/scene/control/TablePosition;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    return-object v0
.end method

.method public getTablePosition()Ljavafx/scene/control/TablePosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TablePosition",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TablePosition;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
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
    .line 772
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$CellEditEvent;->pos:Ljavafx/scene/control/TablePosition;

    invoke-virtual {v1}, Ljavafx/scene/control/TablePosition;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumn$CellEditEvent;, "Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;"
    return-object v0
.end method
