.class Ljavafx/scene/control/TreeCell$1;
.super Ljava/lang/Object;
.source "TreeCell.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljavafx/scene/control/MultipleSelectionModel",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeCell;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$1;, "Ljavafx/scene/control/TreeCell$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeCell$1;->this$0:Ljavafx/scene/control/TreeCell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$1;, "Ljavafx/scene/control/TreeCell$1;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljavafx/scene/control/MultipleSelectionModel;

    move-object v7, v3

    check-cast v7, Ljavafx/scene/control/MultipleSelectionModel;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/control/TreeCell$1;->changed(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/scene/control/MultipleSelectionModel;)V

    return-void
.end method

.method public changed(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/scene/control/MultipleSelectionModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$1;, "Ljavafx/scene/control/TreeCell$1;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 112
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$1;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$000(Ljavafx/scene/control/TreeCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 114
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 115
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$1;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$000(Ljavafx/scene/control/TreeCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 117
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell$1;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v4}, Ljavafx/scene/control/TreeCell;->access$100(Ljavafx/scene/control/TreeCell;)V

    .line 118
    return-void
.end method
