.class public Ljavafx/scene/control/cell/TextFieldTreeCell;
.super Ljavafx/scene/control/cell/DefaultTreeCell;
.source "TextFieldTreeCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/cell/DefaultTreeCell",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private converter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private hbox:Ljavafx/scene/layout/HBox;

.field private textField:Ljavafx/scene/control/TextField;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/cell/TextFieldTreeCell;-><init>(Ljavafx/util/StringConverter;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljavafx/util/StringConverter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/cell/DefaultTreeCell;-><init>()V

    .line 154
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const-string v6, "converter"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/cell/TextFieldTreeCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 141
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "text-field-tree-cell"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 142
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/TextFieldTreeCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 143
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/TextFieldTreeCell;->lambda$forTreeView$636(Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static forTreeView()Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/scene/control/TreeCell",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljavafx/util/converter/DefaultStringConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/util/converter/DefaultStringConverter;-><init>()V

    invoke-static {v0}, Ljavafx/scene/control/cell/TextFieldTreeCell;->forTreeView(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v0

    return-object v0
.end method

.method public static forTreeView(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/cell/TextFieldTreeCell$$Lambda$1;->lambdaFactory$(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    return-object v0
.end method

.method private getTreeItemGraphic()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v1, v2

    .line 228
    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0
.end method

.method private static synthetic lambda$forTreeView$636(Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;
    move-object v1, p1

    .local v1, "list":Ljavafx/scene/control/TreeView;
    new-instance v2, Ljavafx/scene/control/cell/TextFieldTreeCell;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/cell/TextFieldTreeCell;-><init>(Ljavafx/util/StringConverter;)V

    move-object v0, v2

    .end local v0    # "converter":Ljavafx/util/StringConverter;
    return-object v0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/cell/DefaultTreeCell;->cancelEdit()V

    .line 209
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getTreeItemGraphic()Ljavafx/scene/Node;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/cell/CellUtils;->cancelEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/Node;)V

    .line 210
    return-void
.end method

.method public final converterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/TextFieldTreeCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    return-object v0
.end method

.method public final getConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTreeCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    return-object v0
.end method

.method public final setConverter(Ljavafx/util/StringConverter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public startEdit()V
    .locals 9

    .prologue
    .line 188
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/cell/TextFieldTreeCell;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->isEditable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 189
    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    move-object v3, v1

    invoke-super {v3}, Ljavafx/scene/control/cell/DefaultTreeCell;->startEdit()V

    .line 193
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/cell/TextFieldTreeCell;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v3

    move-object v2, v3

    .line 195
    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/cell/TextFieldTreeCell;->textField:Ljavafx/scene/control/TextField;

    if-nez v3, :cond_2

    .line 196
    move-object v3, v1

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/scene/control/cell/CellUtils;->createTextField(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljavafx/scene/control/TextField;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/cell/TextFieldTreeCell;->textField:Ljavafx/scene/control/TextField;

    .line 198
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/cell/TextFieldTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    if-nez v3, :cond_3

    .line 199
    move-object v3, v1

    new-instance v4, Ljavafx/scene/layout/HBox;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget v6, Ljavafx/scene/control/cell/CellUtils;->TREE_VIEW_HBOX_GRAPHIC_PADDING:I

    int-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljavafx/scene/layout/HBox;-><init>(D)V

    iput-object v4, v3, Ljavafx/scene/control/cell/TextFieldTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    .line 202
    :cond_3
    move-object v3, v1

    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/cell/TextFieldTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getTreeItemGraphic()Ljavafx/scene/Node;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/cell/TextFieldTreeCell;->textField:Ljavafx/scene/control/TextField;

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->startEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V

    .line 204
    .end local v2    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    :cond_4
    goto :goto_0
.end method

.method public updateItem(Ljava/lang/Object;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeCell;, "Ljavafx/scene/control/cell/TextFieldTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/cell/DefaultTreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 215
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/TextFieldTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/control/cell/TextFieldTreeCell;->getTreeItemGraphic()Ljavafx/scene/Node;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/TextFieldTreeCell;->textField:Ljavafx/scene/control/TextField;

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V

    .line 216
    return-void
.end method
