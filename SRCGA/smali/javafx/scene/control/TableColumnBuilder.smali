.class public Ljavafx/scene/control/TableColumnBuilder;
.super Ljava/lang/Object;
.source "TableColumnBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/TableColumnBuilder",
        "<TS;TT;TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TableColumn",
        "<TS;TT;>;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private cellFactory:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private cellValueFactory:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private columns:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private contextMenu:Ljavafx/scene/control/ContextMenu;

.field private editable:Z

.field private graphic:Ljavafx/scene/Node;

.field private id:Ljava/lang/String;

.field private maxWidth:D

.field private minWidth:D

.field private onEditCancel:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private onEditCommit:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private onEditStart:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;"
        }
    .end annotation
.end field

.field private prefWidth:D

.field private resizable:Z

.field private sortNode:Ljavafx/scene/Node;

.field private sortType:Ljavafx/scene/control/TableColumn$SortType;

.field private sortable:Z

.field private style:Ljava/lang/String;

.field private styleClass:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private userData:Ljava/lang/Object;

.field private visible:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/TableColumnBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/TableColumnBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/TableColumnBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/TableColumnBuilder",
            "<TS;TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TableColumnBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TableColumnBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/TableColumn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/TableColumnBuilder;->__set:I

    move v3, v5

    .line 52
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 53
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 54
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 55
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 80
    :goto_1
    goto :goto_0

    .line 56
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->cellFactory:Ljavafx/util/Callback;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setCellFactory(Ljavafx/util/Callback;)V

    goto :goto_1

    .line 57
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->cellValueFactory:Ljavafx/util/Callback;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setCellValueFactory(Ljavafx/util/Callback;)V

    goto :goto_1

    .line 58
    :pswitch_2
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->columns:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    .line 59
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->comparator:Ljava/util/Comparator;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setComparator(Ljava/util/Comparator;)V

    goto :goto_1

    .line 60
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setContextMenu(Ljavafx/scene/control/ContextMenu;)V

    goto :goto_1

    .line 61
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/TableColumnBuilder;->editable:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setEditable(Z)V

    goto :goto_1

    .line 62
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->graphic:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 63
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TableColumnBuilder;->maxWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableColumn;->setMaxWidth(D)V

    goto :goto_1

    .line 65
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TableColumnBuilder;->minWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableColumn;->setMinWidth(D)V

    goto :goto_1

    .line 66
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->onEditCancel:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setOnEditCancel(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 67
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->onEditCommit:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setOnEditCommit(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 68
    :pswitch_c
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->onEditStart:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setOnEditStart(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 69
    :pswitch_d
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/TableColumnBuilder;->prefWidth:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TableColumn;->setPrefWidth(D)V

    goto :goto_1

    .line 70
    :pswitch_e
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/TableColumnBuilder;->resizable:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setResizable(Z)V

    goto :goto_1

    .line 71
    :pswitch_f
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/TableColumnBuilder;->sortable:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setSortable(Z)V

    goto/16 :goto_1

    .line 72
    :pswitch_10
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->sortNode:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setSortNode(Ljavafx/scene/Node;)V

    goto/16 :goto_1

    .line 73
    :pswitch_11
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->sortType:Ljavafx/scene/control/TableColumn$SortType;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setSortType(Ljavafx/scene/control/TableColumn$SortType;)V

    goto/16 :goto_1

    .line 74
    :pswitch_12
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->style:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setStyle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 75
    :pswitch_13
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TableColumn;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->styleClass:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto/16 :goto_1

    .line 76
    :pswitch_14
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 77
    :pswitch_15
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableColumnBuilder;->userData:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 78
    :pswitch_16
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/TableColumnBuilder;->visible:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TableColumn;->setVisible(Z)V

    goto/16 :goto_1

    .line 81
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumnBuilder;->build()Ljavafx/scene/control/TableColumn;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TableColumn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/TableColumn;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TableColumn;-><init>()V

    move-object v1, v2

    .line 362
    .local v1, "x":Ljavafx/scene/control/TableColumn;, "Ljavafx/scene/control/TableColumn<TS;TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->applyTo(Ljavafx/scene/control/TableColumn;)V

    .line 363
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public cellFactory(Ljavafx/util/Callback;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableColumn<TS;TT;>;Ljavafx/scene/control/TableCell<TS;TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->cellFactory:Ljavafx/util/Callback;

    .line 90
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 91
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public cellValueFactory(Ljavafx/util/Callback;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn$CellDataFeatures",
            "<TS;TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableColumn$CellDataFeatures<TS;TT;>;Ljavafx/beans/value/ObservableValue<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->cellValueFactory:Ljavafx/util/Callback;

    .line 101
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 102
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public columns(Ljava/util/Collection;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->columns:Ljava/util/Collection;

    .line 112
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 113
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public varargs columns([Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/TableColumn;, "[Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->columns(Ljava/util/Collection;)Ljavafx/scene/control/TableColumnBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public comparator(Ljava/util/Comparator;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->comparator:Ljava/util/Comparator;

    .line 130
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 131
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public contextMenu(Ljavafx/scene/control/ContextMenu;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ContextMenu;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 141
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 142
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public editable(Z)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TableColumnBuilder;->editable:Z

    .line 152
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 153
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public graphic(Ljavafx/scene/Node;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->graphic:Ljavafx/scene/Node;

    .line 164
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 165
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public id(Ljava/lang/String;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->id:Ljava/lang/String;

    .line 176
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 177
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public maxWidth(D)Ljavafx/scene/control/TableColumnBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TableColumnBuilder;->maxWidth:D

    .line 187
    move-object v3, v0

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 188
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public minWidth(D)Ljavafx/scene/control/TableColumnBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TableColumnBuilder;->minWidth:D

    .line 198
    move-object v3, v0

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 199
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public onEditCancel(Ljavafx/event/EventHandler;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->onEditCancel:Ljavafx/event/EventHandler;

    .line 209
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 210
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public onEditCommit(Ljavafx/event/EventHandler;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->onEditCommit:Ljavafx/event/EventHandler;

    .line 220
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 221
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public onEditStart(Ljavafx/event/EventHandler;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/TableColumn$CellEditEvent",
            "<TS;TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/TableColumn$CellEditEvent<TS;TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->onEditStart:Ljavafx/event/EventHandler;

    .line 231
    move-object v2, v0

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 232
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public prefWidth(D)Ljavafx/scene/control/TableColumnBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/TableColumnBuilder;->prefWidth:D

    .line 242
    move-object v3, v0

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 243
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public resizable(Z)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TableColumnBuilder;->resizable:Z

    .line 253
    move-object v2, v0

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 254
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public sortNode(Ljavafx/scene/Node;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->sortNode:Ljavafx/scene/Node;

    .line 276
    move-object v2, v0

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 277
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public sortType(Ljavafx/scene/control/TableColumn$SortType;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableColumn$SortType;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TableColumn$SortType;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->sortType:Ljavafx/scene/control/TableColumn$SortType;

    .line 287
    move-object v2, v0

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 288
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public sortable(Z)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TableColumnBuilder;->sortable:Z

    .line 264
    move-object v2, v0

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 265
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public style(Ljava/lang/String;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->style:Ljava/lang/String;

    .line 299
    move-object v2, v0

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 300
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public styleClass(Ljava/util/Collection;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->styleClass:Ljava/util/Collection;

    .line 311
    move-object v2, v0

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 312
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public varargs styleClass([Ljava/lang/String;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->styleClass(Ljava/util/Collection;)Ljavafx/scene/control/TableColumnBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->text:Ljava/lang/String;

    .line 330
    move-object v2, v0

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 331
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public userData(Ljava/lang/Object;)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableColumnBuilder;->userData:Ljava/lang/Object;

    .line 342
    move-object v2, v0

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 343
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public visible(Z)Ljavafx/scene/control/TableColumnBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TableColumnBuilder;->visible:Z

    .line 353
    move-object v2, v0

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableColumnBuilder;->__set(I)V

    .line 354
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableColumnBuilder;, "Ljavafx/scene/control/TableColumnBuilder<TS;TT;TB;>;"
    return-object v0
.end method
