.class Ljavafx/scene/control/TableRow$1;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableRow;->tableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableRow;

.field private weakTableViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TableView",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableRow;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow$1;, "Ljavafx/scene/control/TableRow$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableRow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow$1;, "Ljavafx/scene/control/TableRow$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRow$1;, "Ljavafx/scene/control/TableRow$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow$1;, "Ljavafx/scene/control/TableRow$1;"
    const-string v1, "tableView"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableRow$1;, "Ljavafx/scene/control/TableRow$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 9

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableRow$1;, "Ljavafx/scene/control/TableRow$1;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableRow$1;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    .line 152
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableRow$1;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TableView;

    move-object v3, v4

    .line 153
    .local v3, "oldTableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 154
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 155
    .local v1, "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 156
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    invoke-static {v5}, Ljavafx/scene/control/TableRow;->access$000(Ljavafx/scene/control/TableRow;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 159
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 160
    .local v2, "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 161
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    invoke-static {v5}, Ljavafx/scene/control/TableRow;->access$100(Ljavafx/scene/control/TableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 164
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    invoke-static {v5}, Ljavafx/scene/control/TableRow;->access$200(Ljavafx/scene/control/TableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 167
    .end local v1    # "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    .end local v2    # "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TT;>;"
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TableRow$1;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    .line 170
    .end local v3    # "oldTableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    invoke-virtual {v4}, Ljavafx/scene/control/TableRow;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v4

    move-object v3, v4

    .line 171
    .local v3, "tableView":Ljavafx/scene/control/TableView;, "Ljavafx/scene/control/TableView<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_6

    .line 172
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getSelectionModel()Ljavafx/scene/control/TableView$TableViewSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 173
    .restart local v1    # "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 174
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    invoke-static {v5}, Ljavafx/scene/control/TableRow;->access$000(Ljavafx/scene/control/TableRow;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 177
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->getFocusModel()Ljavafx/scene/control/TableView$TableViewFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 178
    .restart local v2    # "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_5

    .line 179
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$TableViewFocusModel;->focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    invoke-static {v5}, Ljavafx/scene/control/TableRow;->access$100(Ljavafx/scene/control/TableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 182
    :cond_5
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TableRow$1;->this$0:Ljavafx/scene/control/TableRow;

    invoke-static {v5}, Ljavafx/scene/control/TableRow;->access$200(Ljavafx/scene/control/TableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 184
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TableRow$1;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Ljavafx/scene/control/TableRow$1;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    .line 186
    .end local v1    # "sm":Ljavafx/scene/control/TableView$TableViewSelectionModel;, "Ljavafx/scene/control/TableView$TableViewSelectionModel<TT;>;"
    .end local v2    # "fm":Ljavafx/scene/control/TableView$TableViewFocusModel;, "Ljavafx/scene/control/TableView$TableViewFocusModel<TT;>;"
    :cond_6
    return-void
.end method
