.class Ljavafx/scene/control/TreeTableColumn$2;
.super Ljava/lang/Object;
.source "TreeTableColumn.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableColumn;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableColumn;)V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$2;, "Ljavafx/scene/control/TreeTableColumn$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableColumn;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableColumn$2;->this$0:Ljavafx/scene/control/TreeTableColumn;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;*>;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableColumn$2;, "Ljavafx/scene/control/TreeTableColumn$2;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljavafx/scene/control/TreeTableColumn<TS;*>;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableColumn;

    move-object v3, v4

    .line 293
    .local v3, "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableColumn$2;->this$0:Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn;->getColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableColumn;->setTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 296
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableColumn;->setParentColumn(Ljavafx/scene/control/TableColumnBase;)V

    .line 297
    goto :goto_1

    .line 298
    .end local v3    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableColumn;

    move-object v3, v4

    .line 299
    .restart local v3    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableColumn$2;->this$0:Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v5}, Ljavafx/scene/control/TreeTableColumn;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TreeTableColumn;->setTreeTableView(Ljavafx/scene/control/TreeTableView;)V

    .line 300
    goto :goto_2

    .line 302
    .end local v3    # "tc":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;*>;"
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableColumn$2;->this$0:Ljavafx/scene/control/TreeTableColumn;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableColumn;->updateColumnWidths()V

    goto :goto_0

    .line 304
    :cond_3
    return-void
.end method
