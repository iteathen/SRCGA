.class public Ljavafx/scene/control/cell/ComboBoxTreeCell;
.super Ljavafx/scene/control/cell/DefaultTreeCell;
.source "ComboBoxTreeCell.java"


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

.field private hbox:Ljavafx/scene/layout/HBox;

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
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTreeCell;-><init>(Ljavafx/collections/ObservableList;)V

    .line 182
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
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/cell/ComboBoxTreeCell;-><init>(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)V

    .line 222
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
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/cell/DefaultTreeCell;-><init>()V

    .line 251
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "converter"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 277
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "comboBoxEditable"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBoxEditable:Ljavafx/beans/property/BooleanProperty;

    .line 237
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "combo-box-tree-cell"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 238
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->items:Ljavafx/collections/ObservableList;

    .line 239
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 240
    return-void

    .line 239
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
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/cell/ComboBoxTreeCell;-><init>(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)V

    .line 211
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
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;-><init>(Ljavafx/collections/ObservableList;)V

    .line 194
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->lambda$forTreeView$630(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static forTreeView(Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
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
    .line 106
    move-object v0, p0

    .local v0, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    const/4 v1, 0x0

    move-object v2, v0

    invoke-static {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->forTreeView(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    return-object v0
.end method

.method public static forTreeView(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
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
    .line 154
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell$$Lambda$1;->lambdaFactory$(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    return-object v0
.end method

.method public static varargs forTreeView(Ljavafx/util/StringConverter;[Ljava/lang/Object;)Ljavafx/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/StringConverter",
            "<TT;>;[TT;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v1, p1

    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->forTreeView(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    return-object v0
.end method

.method public static varargs forTreeView([Ljava/lang/Object;)Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/collections/FXCollections;->observableArrayList([Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->forTreeView(Ljavafx/collections/ObservableList;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "items":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method private static synthetic lambda$forTreeView$630(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;
    .locals 8

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;
    move-object v2, p2

    .local v2, "list":Ljavafx/scene/control/TreeView;
    new-instance v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/cell/ComboBoxTreeCell;-><init>(Ljavafx/util/StringConverter;Ljavafx/collections/ObservableList;)V

    move-object v0, v3

    .end local v0    # "converter":Ljavafx/util/StringConverter;
    return-object v0
.end method


# virtual methods
.method public cancelEdit()V
    .locals 4

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/cell/DefaultTreeCell;->cancelEdit()V

    .line 358
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->setText(Ljava/lang/String;)V

    .line 359
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 360
    return-void
.end method

.method public final comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBoxEditable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
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
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTreeCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
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
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
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
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/ComboBoxTreeCell;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    return-object v0
.end method

.method public final isComboBoxEditable()Z
    .locals 2

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    return v0
.end method

.method public final setComboBoxEditable(Z)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 294
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
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public startEdit()V
    .locals 9

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->getTreeView()Ljavafx/scene/control/TreeView;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->isEditable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 321
    .line 352
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v1, v3

    .line 325
    .local v1, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_2

    .line 326
    goto :goto_0

    .line 329
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBox:Ljavafx/scene/control/ComboBox;

    if-nez v3, :cond_3

    .line 330
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/ComboBoxTreeCell;->items:Ljavafx/collections/ObservableList;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljavafx/scene/control/cell/CellUtils;->createComboBox(Ljavafx/scene/control/Cell;Ljavafx/collections/ObservableList;Ljavafx/beans/property/ObjectProperty;)Ljavafx/scene/control/ComboBox;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBox:Ljavafx/scene/control/ComboBox;

    .line 331
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBoxEditableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 333
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    if-nez v3, :cond_4

    .line 334
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/HBox;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget v6, Ljavafx/scene/control/cell/CellUtils;->TREE_VIEW_HBOX_GRAPHIC_PADDING:I

    int-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljavafx/scene/layout/HBox;-><init>(D)V

    iput-object v4, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    .line 337
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 339
    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/control/cell/DefaultTreeCell;->startEdit()V

    .line 341
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->isEditing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->setText(Ljava/lang/String;)V

    .line 344
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/control/cell/CellUtils;->getGraphic(Ljavafx/scene/control/TreeItem;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 345
    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_6

    .line 346
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/ComboBoxTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBox:Ljavafx/scene/control/ComboBox;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 347
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/ComboBoxTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 352
    .end local v2    # "graphic":Ljavafx/scene/Node;
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 349
    .restart local v2    # "graphic":Ljavafx/scene/Node;
    :cond_6
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_1
.end method

.method public updateItem(Ljava/lang/Object;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/ComboBoxTreeCell;, "Ljavafx/scene/control/cell/ComboBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/cell/DefaultTreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 366
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    invoke-static {v4}, Ljavafx/scene/control/cell/CellUtils;->getGraphic(Ljavafx/scene/control/TreeItem;)Ljavafx/scene/Node;

    move-result-object v4

    move-object v3, v4

    .line 367
    .local v3, "graphic":Ljavafx/scene/Node;
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/cell/ComboBoxTreeCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/ComboBoxTreeCell;->hbox:Ljavafx/scene/layout/HBox;

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/cell/ComboBoxTreeCell;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/ComboBox;)V

    .line 368
    return-void
.end method
