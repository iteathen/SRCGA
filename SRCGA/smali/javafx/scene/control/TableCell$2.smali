.class Ljavafx/scene/control/TableCell$2;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TableCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableCell;->tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TableView",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableCell;

.field private weakTableViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableCell;)V
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$2;, "Ljavafx/scene/control/TableCell$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$2;, "Ljavafx/scene/control/TableCell$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell$2;, "Ljavafx/scene/control/TableCell$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$2;, "Ljavafx/scene/control/TableCell$2;"
    const-string v1, "tableView"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableCell$2;, "Ljavafx/scene/control/TableCell$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableCell$2;, "Ljavafx/scene/control/TableCell$2;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableCell$2;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 244
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell$2;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableView;

    invoke-static {v3, v4}, Ljavafx/scene/control/TableCell;->access$100(Ljavafx/scene/control/TableCell;Ljavafx/scene/control/TableView;)V

    .line 247
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell$2;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 248
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v3

    move-object v1, v3

    .line 249
    .local v1, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 250
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    invoke-static {v4}, Ljavafx/scene/control/TableCell;->access$200(Ljavafx/scene/control/TableCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 253
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v3

    move-object v2, v3

    .line 254
    .local v2, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 255
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    invoke-static {v4}, Ljavafx/scene/control/TableCell;->access$300(Ljavafx/scene/control/TableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 258
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    invoke-static {v4}, Ljavafx/scene/control/TableCell;->access$400(Ljavafx/scene/control/TableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 259
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableCell$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    invoke-static {v4}, Ljavafx/scene/control/TableCell;->access$500(Ljavafx/scene/control/TableCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 261
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TableCell$2;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/TableCell$2;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    .line 264
    .end local v1    # "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TS;>;"
    .end local v2    # "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TS;>;"
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableCell$2;->this$0:Ljavafx/scene/control/TableCell;

    invoke-static {v3}, Ljavafx/scene/control/TableCell;->access$000(Ljavafx/scene/control/TableCell;)V

    .line 265
    return-void
.end method
