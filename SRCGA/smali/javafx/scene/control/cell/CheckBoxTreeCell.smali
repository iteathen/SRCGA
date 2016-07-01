.class public Ljavafx/scene/control/cell/CheckBoxTreeCell;
.super Ljavafx/scene/control/cell/DefaultTreeCell;
.source "CheckBoxTreeCell.java"


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
.field private booleanProperty:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final checkBox:Ljavafx/scene/control/CheckBox;

.field private converter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private indeterminateProperty:Ljavafx/beans/property/BooleanProperty;

.field private selectedStateCallback:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/scene/control/cell/CheckBoxTreeCell$$Lambda$3;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/cell/CheckBoxTreeCell;-><init>(Ljavafx/util/Callback;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/cell/CellUtils;->defaultTreeItemStringConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/cell/CheckBoxTreeCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/util/Callback;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/cell/CheckBoxTreeCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/util/Callback;)V

    .line 331
    return-void
.end method

.method private constructor <init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v3, p3

    .local v3, "getIndeterminateProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/cell/DefaultTreeCell;-><init>()V

    .line 357
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string v8, "converter"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/control/cell/CheckBoxTreeCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 384
    move-object v4, v0

    new-instance v5, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const-string v8, "selectedStateCallback"

    invoke-direct {v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Ljavafx/scene/control/cell/CheckBoxTreeCell;->selectedStateCallback:Ljavafx/beans/property/ObjectProperty;

    .line 337
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "check-box-tree-cell"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 338
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->setSelectedStateCallback(Ljavafx/util/Callback;)V

    .line 339
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 341
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/CheckBox;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/scene/control/CheckBox;-><init>()V

    iput-object v5, v4, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    .line 342
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/CheckBox;->setAllowIndeterminate(Z)V

    .line 345
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 346
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->lambda$forTreeView$620(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->lambda$forTreeView$621(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->lambda$new$622(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static forTreeView()Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Ljavafx/scene/control/cell/CheckBoxTreeCell$$Lambda$1;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .line 145
    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v1, v0

    .line 146
    invoke-static {}, Ljavafx/scene/control/cell/CellUtils;->defaultTreeItemStringConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    .line 145
    invoke-static {v1, v2}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->forTreeView(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0
.end method

.method public static forTreeView(Ljavafx/util/Callback;)Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/scene/control/cell/CellUtils;->defaultTreeItemStringConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->forTreeView(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0
.end method

.method public static forTreeView(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;",
            "Ljavafx/scene/control/TreeCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/CheckBoxTreeCell$$Lambda$2;->lambdaFactory$(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0
.end method

.method private static synthetic lambda$forTreeView$620(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "item":Ljavafx/scene/control/TreeItem;
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;

    if-eqz v1, :cond_0

    .line 141
    move-object v1, v0

    check-cast v1, Ljavafx/scene/control/CheckBoxTreeItem;

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBoxTreeItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .line 143
    .end local v0    # "item":Ljavafx/scene/control/TreeItem;
    :goto_0
    return-object v0

    .restart local v0    # "item":Ljavafx/scene/control/TreeItem;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method private static synthetic lambda$forTreeView$621(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeView;)Ljavafx/scene/control/TreeCell;
    .locals 8

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;
    move-object v2, p2

    .local v2, "tree":Ljavafx/scene/control/TreeView;
    new-instance v3, Ljavafx/scene/control/cell/CheckBoxTreeCell;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/cell/CheckBoxTreeCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    move-object v0, v3

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;
    return-object v0
.end method

.method private static synthetic lambda$new$622(Ljavafx/scene/control/TreeItem;)Ljavafx/beans/value/ObservableValue;
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "item":Ljavafx/scene/control/TreeItem;
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/control/CheckBoxTreeItem;

    if-eqz v1, :cond_0

    .line 260
    move-object v1, v0

    check-cast v1, Ljavafx/scene/control/CheckBoxTreeItem;

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBoxTreeItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .line 262
    .end local v0    # "item":Ljavafx/scene/control/TreeItem;
    :goto_0
    return-object v0

    .restart local v0    # "item":Ljavafx/scene/control/TreeItem;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final converterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/CheckBoxTreeCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    return-object v0
.end method

.method public final getConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    return-object v0
.end method

.method public final getSelectedStateCallback()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->selectedStateCallbackProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    return-object v0
.end method

.method public final selectedStateCallbackProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/CheckBoxTreeCell;->selectedStateCallback:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    return-object v0
.end method

.method public final setConverter(Ljavafx/util/StringConverter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public final setSelectedStateCallback(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->selectedStateCallbackProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method updateDisplay(Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public updateItem(Ljava/lang/Object;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeCell;, "Ljavafx/scene/control/cell/CheckBoxTreeCell<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/control/cell/DefaultTreeCell;->updateItem(Ljava/lang/Object;Z)V

    .line 423
    move v6, v2

    if-eqz v6, :cond_1

    .line 424
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->setText(Ljava/lang/String;)V

    .line 425
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v6

    move-object v3, v6

    .line 429
    .local v3, "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v6

    move-object v4, v6

    .line 432
    .local v4, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v6, v0

    move-object v7, v3

    if-eqz v7, :cond_4

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->setText(Ljava/lang/String;)V

    .line 433
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    move-object v7, v4

    if-nez v7, :cond_6

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Ljavafx/scene/control/CheckBox;->setGraphic(Ljavafx/scene/Node;)V

    .line 434
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v6, v7}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 437
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    if-eqz v6, :cond_2

    .line 438
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v6}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/CheckBoxTreeCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    check-cast v7, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->unbindBidirectional(Ljavafx/beans/property/Property;)V

    .line 440
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->indeterminateProperty:Ljavafx/beans/property/BooleanProperty;

    if-eqz v6, :cond_3

    .line 441
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v6}, Ljavafx/scene/control/CheckBox;->indeterminateProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/CheckBoxTreeCell;->indeterminateProperty:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->unbindBidirectional(Ljavafx/beans/property/Property;)V

    .line 446
    :cond_3
    move-object v6, v4

    instance-of v6, v6, Ljavafx/scene/control/CheckBoxTreeItem;

    if-eqz v6, :cond_7

    .line 447
    move-object v6, v4

    check-cast v6, Ljavafx/scene/control/CheckBoxTreeItem;

    move-object v5, v6

    .line 448
    .local v5, "cbti":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/CheckBoxTreeItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    .line 449
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v6}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/CheckBoxTreeCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    check-cast v7, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 451
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/CheckBoxTreeItem;->indeterminateProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->indeterminateProperty:Ljavafx/beans/property/BooleanProperty;

    .line 452
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v6}, Ljavafx/scene/control/CheckBox;->indeterminateProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/CheckBoxTreeCell;->indeterminateProperty:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 453
    goto/16 :goto_0

    .line 432
    .end local v5    # "cbti":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    :cond_4
    move-object v7, v4

    if-nez v7, :cond_5

    const-string v7, ""

    goto :goto_1

    :cond_5
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 433
    :cond_6
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v7

    goto :goto_2

    .line 454
    :cond_7
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/cell/CheckBoxTreeCell;->getSelectedStateCallback()Ljavafx/util/Callback;

    move-result-object v6

    move-object v5, v6

    .line 455
    .local v5, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TreeItem<TT;>;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v6, v5

    if-nez v6, :cond_8

    .line 456
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "The CheckBoxTreeCell selectedStateCallbackProperty can not be null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 460
    :cond_8
    move-object v6, v0

    move-object v7, v5

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/beans/value/ObservableValue;

    iput-object v7, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    .line 461
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    if-eqz v6, :cond_0

    .line 462
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v6}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/cell/CheckBoxTreeCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    check-cast v7, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    goto/16 :goto_0
.end method
