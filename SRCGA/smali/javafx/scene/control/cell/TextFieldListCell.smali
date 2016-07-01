.class public Ljavafx/scene/control/cell/TextFieldListCell;
.super Ljavafx/scene/control/ListCell;
.source "TextFieldListCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/ListCell",
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

.field private textField:Ljavafx/scene/control/TextField;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/cell/TextFieldListCell;-><init>(Ljavafx/util/StringConverter;)V

    .line 116
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
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ListCell;-><init>()V

    .line 145
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const-string v6, "converter"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/cell/TextFieldListCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 132
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldListCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "text-field-list-cell"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 133
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/cell/TextFieldListCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 134
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/util/StringConverter;Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/TextFieldListCell;->lambda$forListView$634(Ljavafx/util/StringConverter;Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static forListView()Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/scene/control/ListCell",
            "<",
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

    invoke-static {v0}, Ljavafx/scene/control/cell/TextFieldListCell;->forListView(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v0

    return-object v0
.end method

.method public static forListView(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
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
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/cell/TextFieldListCell$$Lambda$1;->lambdaFactory$(Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    return-object v0
.end method

.method private static synthetic lambda$forListView$634(Ljavafx/util/StringConverter;Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;
    move-object v1, p1

    .local v1, "list":Ljavafx/scene/control/ListView;
    new-instance v2, Ljavafx/scene/control/cell/TextFieldListCell;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/cell/TextFieldListCell;-><init>(Ljavafx/util/StringConverter;)V

    move-object v0, v2

    .end local v0    # "converter":Ljavafx/util/StringConverter;
    return-object v0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ListCell;->cancelEdit()V

    .line 195
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldListCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/cell/CellUtils;->cancelEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/Node;)V

    .line 196
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
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/TextFieldListCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
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
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldListCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
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
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldListCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public startEdit()V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldListCell;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->isEditable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ListCell;->startEdit()V

    .line 183
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/TextFieldListCell;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/TextFieldListCell;->textField:Ljavafx/scene/control/TextField;

    if-nez v1, :cond_2

    .line 185
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/TextFieldListCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/CellUtils;->createTextField(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljavafx/scene/control/TextField;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/cell/TextFieldListCell;->textField:Ljavafx/scene/control/TextField;

    .line 188
    :cond_2
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/TextFieldListCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/TextFieldListCell;->textField:Ljavafx/scene/control/TextField;

    invoke-static {v1, v2, v3, v4, v5}, Ljavafx/scene/control/cell/CellUtils;->startEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V

    .line 190
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
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/TextFieldListCell;, "Ljavafx/scene/control/cell/TextFieldListCell<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ListCell;->updateItem(Ljava/lang/Object;Z)V

    .line 201
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/TextFieldListCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/TextFieldListCell;->textField:Ljavafx/scene/control/TextField;

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V

    .line 202
    return-void
.end method
