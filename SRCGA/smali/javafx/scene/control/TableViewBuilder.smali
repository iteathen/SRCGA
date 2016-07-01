.class public Ljavafx/scene/control/TableViewBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "TableViewBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/TableViewBuilder",
        "<TS;TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/TableView",
        "<TS;>;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private columnResizePolicy:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;"
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

.field private editable:Z

.field private focusModel:Ljavafx/scene/control/TableView$TableViewFocusModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TS;>;"
        }
    .end annotation
.end field

.field private items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TS;>;"
        }
    .end annotation
.end field

.field private placeholder:Ljavafx/scene/Node;

.field private rowFactory:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableRow",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private selectionModel:Ljavafx/scene/control/TableView$TableViewSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;"
        }
    .end annotation
.end field

.field private sortOrder:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;>;"
        }
    .end annotation
.end field

.field private tableMenuButtonVisible:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/TableViewBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/TableViewBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/TableViewBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/TableViewBuilder",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/TableViewBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TableViewBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/TableView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 52
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/TableViewBuilder;->__set:I

    move v2, v4

    .line 53
    .local v2, "set":I
    :goto_0
    move v4, v2

    if-eqz v4, :cond_0

    .line 54
    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    move v3, v4

    .line 55
    .local v3, "i":I
    move v4, v2

    const/4 v5, 0x1

    move v6, v3

    shl-int/2addr v5, v6

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v2, v4

    .line 56
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 68
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->columnResizePolicy:Ljavafx/util/Callback;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setColumnResizePolicy(Ljavafx/util/Callback;)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->columns:Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/TableViewBuilder;->editable:Z

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setEditable(Z)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->focusModel:Ljavafx/scene/control/TableView$TableViewFocusModel;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setFocusModel(Ljavafx/scene/control/TableView$TableViewFocusModel;)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->items:Ljavafx/collections/ObservableList;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setItems(Ljavafx/collections/ObservableList;)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->placeholder:Ljavafx/scene/Node;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setPlaceholder(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->rowFactory:Ljavafx/util/Callback;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setRowFactory(Ljavafx/util/Callback;)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->selectionModel:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setSelectionModel(Ljavafx/scene/control/TableView$TableViewSelectionModel;)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableViewBuilder;->sortOrder:Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_1

    .line 66
    :pswitch_9
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/TableViewBuilder;->tableMenuButtonVisible:Z

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TableView;->setTableMenuButtonVisible(Z)V

    goto :goto_1

    .line 69
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 56
    nop

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
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TableViewBuilder;->build()Ljavafx/scene/control/TableView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/TableView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/TableView",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    new-instance v2, Ljavafx/scene/control/TableView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/TableView;-><init>()V

    move-object v1, v2

    .line 200
    .local v1, "x":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TS;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->applyTo(Ljavafx/scene/control/TableView;)V

    .line 201
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public columnResizePolicy(Ljavafx/util/Callback;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView$ResizeFeatures;Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->columnResizePolicy:Ljavafx/util/Callback;

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public columns(Ljava/util/Collection;)Ljavafx/scene/control/TableViewBuilder;
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
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->columns:Ljava/util/Collection;

    .line 89
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 90
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public varargs columns([Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)TB;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/TableColumn;, "[Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->columns(Ljava/util/Collection;)Ljavafx/scene/control/TableViewBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public editable(Z)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TableViewBuilder;->editable:Z

    .line 107
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 108
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public focusModel(Ljavafx/scene/control/TableView$TableViewFocusModel;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView$TableViewFocusModel",
            "<TS;>;)TB;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->focusModel:Ljavafx/scene/control/TableView$TableViewFocusModel;

    .line 118
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 119
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public items(Ljavafx/collections/ObservableList;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TS;>;)TB;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->items:Ljavafx/collections/ObservableList;

    .line 129
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 130
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public placeholder(Ljavafx/scene/Node;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->placeholder:Ljavafx/scene/Node;

    .line 140
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 141
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public rowFactory(Ljavafx/util/Callback;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;",
            "Ljavafx/scene/control/TableRow",
            "<TS;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView<TS;>;Ljavafx/scene/control/TableRow<TS;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->rowFactory:Ljavafx/util/Callback;

    .line 151
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 152
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public selectionModel(Ljavafx/scene/control/TableView$TableViewSelectionModel;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;)TB;"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->selectionModel:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    .line 162
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 163
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public sortOrder(Ljava/util/Collection;)Ljavafx/scene/control/TableViewBuilder;
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
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/TableColumn<TS;*>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableViewBuilder;->sortOrder:Ljava/util/Collection;

    .line 173
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 174
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public varargs sortOrder([Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/TableColumn",
            "<TS;*>;)TB;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/TableColumn;, "[Ljavafx/scene/control/TableColumn<TS;*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->sortOrder(Ljava/util/Collection;)Ljavafx/scene/control/TableViewBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method

.method public tableMenuButtonVisible(Z)Ljavafx/scene/control/TableViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/TableViewBuilder;->tableMenuButtonVisible:Z

    .line 191
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableViewBuilder;->__set(I)V

    .line 192
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableViewBuilder;, "Ljavafx/scene/control/TableViewBuilder<TS;TB;>;"
    return-object v0
.end method
