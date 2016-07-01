.class public Ljavafx/scene/control/cell/TextFieldTreeTableCell;
.super Ljavafx/scene/control/TreeTableCell;
.source "TextFieldTreeTableCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TreeTableCell",
        "<TS;TT;>;"
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

.field private textField:Ljavafx/scene/control/TextField;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;-><init>(Ljavafx/util/StringConverter;)V

    .line 118
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
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TreeTableCell;-><init>()V

    .line 147
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const-string v6, "converter"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 134
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "text-field-tree-table-cell"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 135
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 136
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->lambda$forTreeTableColumn$637(Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static forTreeTableColumn()Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljavafx/util/converter/DefaultStringConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/util/converter/DefaultStringConverter;-><init>()V

    invoke-static {v0}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->forTreeTableColumn(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v0

    return-object v0
.end method

.method public static forTreeTableColumn(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/cell/TextFieldTreeTableCell$$Lambda$1;->lambdaFactory$(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    return-object v0
.end method

.method private static synthetic lambda$forTreeTableColumn$637(Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;
    move-object v1, p1

    .local v1, "list":Ljavafx/scene/control/TreeTableColumn;
    new-instance v2, Ljavafx/scene/control/cell/TextFieldTreeTableCell;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;-><init>(Ljavafx/util/StringConverter;)V

    move-object v0, v2

    .end local v0    # "converter":Ljavafx/util/StringConverter;
    return-object v0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/TreeTableCell;->cancelEdit()V

    .line 200
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/cell/CellUtils;->cancelEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/Node;)V

    .line 201
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
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
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
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
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
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public startEdit()V
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 182
    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 183
    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableColumn;->isEditable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    .line 195
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/TreeTableCell;->startEdit()V

    .line 188
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->textField:Ljavafx/scene/control/TextField;

    if-nez v1, :cond_2

    .line 190
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/CellUtils;->createTextField(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljavafx/scene/control/TextField;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->textField:Ljavafx/scene/control/TextField;

    .line 193
    :cond_2
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->textField:Ljavafx/scene/control/TextField;

    invoke-static {v1, v2, v3, v4, v5}, Ljavafx/scene/control/cell/CellUtils;->startEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V

    .line 195
    :cond_3
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
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldTreeTableCell;, "Ljavafx/scene/control/cell/TextFieldTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TreeTableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 206
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/TextFieldTreeTableCell;->textField:Ljavafx/scene/control/TextField;

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V

    .line 207
    return-void
.end method
