.class public Ljavafx/scene/control/ListViewBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "ListViewBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/ListViewBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/ListView",
        "<TT;>;>;"
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
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private editable:Z

.field private focusModel:Ljavafx/scene/control/FocusModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field private items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private onEditCancel:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private onEditCommit:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private onEditStart:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private orientation:Ljavafx/geometry/Orientation;

.field private selectionModel:Ljavafx/scene/control/MultipleSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
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

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/ListViewBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/ListViewBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/ListViewBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/ListViewBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/ListViewBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/ListViewBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ListView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListView",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 52
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/control/ListViewBuilder;->__set:I

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

    .line 67
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->cellFactory:Ljavafx/util/Callback;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setCellFactory(Ljavafx/util/Callback;)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/ListViewBuilder;->editable:Z

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setEditable(Z)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->focusModel:Ljavafx/scene/control/FocusModel;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setFocusModel(Ljavafx/scene/control/FocusModel;)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->items:Ljavafx/collections/ObservableList;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setItems(Ljavafx/collections/ObservableList;)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->onEditCancel:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setOnEditCancel(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->onEditCommit:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setOnEditCommit(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->onEditStart:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setOnEditStart(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->orientation:Ljavafx/geometry/Orientation;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setOrientation(Ljavafx/geometry/Orientation;)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListViewBuilder;->selectionModel:Ljavafx/scene/control/MultipleSelectionModel;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ListView;->setSelectionModel(Ljavafx/scene/control/MultipleSelectionModel;)V

    goto :goto_1

    .line 68
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
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ListViewBuilder;->build()Ljavafx/scene/control/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/ListView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/ListView;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/ListView;-><init>()V

    move-object v1, v2

    .line 174
    .local v1, "x":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->applyTo(Ljavafx/scene/control/ListView;)V

    .line 175
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public cellFactory(Ljavafx/util/Callback;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ListView<TT;>;Ljavafx/scene/control/ListCell<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->cellFactory:Ljavafx/util/Callback;

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 78
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public editable(Z)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/ListViewBuilder;->editable:Z

    .line 88
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 89
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public focusModel(Ljavafx/scene/control/FocusModel;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->focusModel:Ljavafx/scene/control/FocusModel;

    .line 99
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 100
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public items(Ljavafx/collections/ObservableList;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->items:Ljavafx/collections/ObservableList;

    .line 110
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 111
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onEditCancel(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ListView$EditEvent<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->onEditCancel:Ljavafx/event/EventHandler;

    .line 121
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 122
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onEditCommit(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ListView$EditEvent<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->onEditCommit:Ljavafx/event/EventHandler;

    .line 132
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 133
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public onEditStart(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/control/ListView$EditEvent",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/ListView$EditEvent<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->onEditStart:Ljavafx/event/EventHandler;

    .line 143
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 144
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public orientation(Ljavafx/geometry/Orientation;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Orientation;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Orientation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->orientation:Ljavafx/geometry/Orientation;

    .line 154
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 155
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method

.method public selectionModel(Ljavafx/scene/control/MultipleSelectionModel;)Ljavafx/scene/control/ListViewBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListViewBuilder;->selectionModel:Ljavafx/scene/control/MultipleSelectionModel;

    .line 165
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/ListViewBuilder;->__set(I)V

    .line 166
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ListViewBuilder;, "Ljavafx/scene/control/ListViewBuilder<TT;TB;>;"
    return-object v0
.end method
