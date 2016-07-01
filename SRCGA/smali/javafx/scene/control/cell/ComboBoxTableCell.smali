.class public Ljavafx/scene/control/cell/ComboBoxTableCell;
.super Ljavafx/scene/control/TableCell;
.source "ComboBoxTableCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/TableCell",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field private comboBox:Ljavafx/scene/control/ComboBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;"
        }
    .end annotation
.end field

.field private comboBoxEditable:Ljavafx/beans/property/BooleanProperty;

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

.field private final items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;-><init>(Ljavafx/collections/ObservableList;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/cell/ComboBoxTableCell;-><init>(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TableCell;-><init>()V

    .line 260
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "converter"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTableCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 286
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "comboBoxEditable"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBoxEditable:Ljavafx/beans/property/BooleanProperty;

    .line 246
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "combo-box-table-cell"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 247
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTableCell;->items:Ljavafx/collections/ObservableList;

    .line 248
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/ComboBoxTableCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 249
    return-void

    .line 248
    :cond_0
    invoke-static {}, Ljavafx/scene/control/cell/CellUtils;->defaultStringConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    goto :goto_0
.end method

.method public varargs constructor <init>(Ljavafx/util/StringConverter;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/cell/ComboBoxTableCell;-><init>(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)V

    .line 220
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/cell/ComboBoxTableCell;-><init>(Ljavafx/collections/ObservableList;)V

    .line 203
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/cell/ComboBoxTableCell;->lambda$forTableColumn$629(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static forTableColumn(Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->forTableColumn(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    return-object v0
.end method

.method public static forTableColumn(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/ComboBoxTableCell$$Lambda$1;->lambdaFactory$(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    return-object v0
.end method

.method public static varargs forTableColumn(Ljavafx/util/StringConverter;[Ljava/lang/Object;)Ljavafx/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/StringConverter",
            "<TT;>;[TT;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/ComboBoxTableCell;->forTableColumn(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    return-object v0
.end method

.method public static varargs forTableColumn([Ljava/lang/Object;)Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->forTableColumn(Ljavafx/util/StringConverter;[Ljava/lang/Object;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "items":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method private static synthetic lambda$forTableColumn$629(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "list":Ljavafx/scene/control/TableColumn;
    new-instance v3, Ljavafx/scene/control/cell/ComboBoxTableCell;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/cell/ComboBoxTableCell;-><init>(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)V

    move-object v0, v3

    .end local v0    # "converter":Ljavafx/util/StringConverter;
    return-object v0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 4

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/TableCell;->cancelEdit()V

    .line 349
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTableCell;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->setText(Ljava/lang/String;)V

    .line 350
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 351
    return-void
.end method

.method public final comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBoxEditable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    return-object v0
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
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTableCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
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
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ComboBoxTableCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    return-object v0
.end method

.method public getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTableCell;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    return-object v0
.end method

.method public final isComboBoxEditable()Z
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    return v0
.end method

.method public final setComboBoxEditable(Z)V
    .locals 4

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 303
    return-void
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
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public startEdit()V
    .locals 5

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ComboBoxTableCell;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ComboBoxTableCell;->getTableView()Ljavafx/scene/control/TableView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ComboBoxTableCell;->getTableColumn()Ljavafx/scene/control/TableColumn;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TableColumn;->isEditable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    .line 343
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBox:Ljavafx/scene/control/ComboBox;

    if-nez v1, :cond_2

    .line 334
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/ComboBoxTableCell;->items:Ljavafx/collections/ObservableList;

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/ComboBoxTableCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljavafx/scene/control/cell/CellUtils;->createComboBox(Ljavafx/scene/control/Cell;Ljavafx/collections/ObservableList;Ljavafx/beans/property/ObjectProperty;)Ljavafx/scene/control/ComboBox;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBox:Ljavafx/scene/control/ComboBox;

    .line 335
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 338
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 340
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/TableCell;->startEdit()V

    .line 341
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->setText(Ljava/lang/String;)V

    .line 342
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 343
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
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTableCell;, "Ljavafx/scene/control/cell/ComboBoxTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/TableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 356
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/ComboBoxTableCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/ComboBoxTableCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/ComboBox;)V

    .line 357
    return-void
.end method
