.class public Ljavafx/scene/control/cell/CheckBoxListCell;
.super Ljavafx/scene/control/ListCell;
.source "CheckBoxListCell.java"


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
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private selectedStateCallback:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<TT;",
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
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/cell/CheckBoxListCell;-><init>(Ljavafx/util/Callback;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<TT;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, p1

    .local v1, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/cell/CellUtils;->defaultStringConverter()Ljavafx/util/StringConverter;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/cell/CheckBoxListCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<TT;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, p1

    .local v1, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ListCell;-><init>()V

    .line 199
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "converter"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxListCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 225
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "selectedStateCallback"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxListCell;->selectedStateCallback:Ljavafx/beans/property/ObjectProperty;

    .line 178
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/CheckBoxListCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "check-box-list-cell"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 179
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxListCell;->setSelectedStateCallback(Ljavafx/util/Callback;)V

    .line 180
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxListCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 182
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/CheckBox;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/control/CheckBox;-><init>()V

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxListCell;->checkBox:Ljavafx/scene/control/CheckBox;

    .line 184
    move-object v3, v0

    sget-object v4, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxListCell;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 185
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/ContentDisplay;->LEFT:Ljavafx/scene/control/ContentDisplay;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxListCell;->setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V

    .line 188
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxListCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 189
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/cell/CheckBoxListCell;->lambda$forListView$617(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static forListView(Ljavafx/util/Callback;)Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<TT;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/scene/control/cell/CellUtils;->defaultStringConverter()Ljavafx/util/StringConverter;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/control/cell/CheckBoxListCell;->forListView(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0
.end method

.method public static forListView(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<TT;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
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
    .line 128
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/CheckBoxListCell$$Lambda$1;->lambdaFactory$(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0
.end method

.method private static synthetic lambda$forListView$617(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/ListView;)Ljavafx/scene/control/ListCell;
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;
    move-object v2, p2

    .local v2, "list":Ljavafx/scene/control/ListView;
    new-instance v3, Ljavafx/scene/control/cell/CheckBoxListCell;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/cell/CheckBoxListCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    move-object v0, v3

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;
    return-object v0
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
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/CheckBoxListCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
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
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxListCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    return-object v0
.end method

.method public final getSelectedStateCallback()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<TT;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxListCell;->selectedStateCallbackProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
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
            "<TT;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/CheckBoxListCell;->selectedStateCallback:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
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
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxListCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public final setSelectedStateCallback(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<TT;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxListCell;->selectedStateCallbackProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public updateItem(Ljava/lang/Object;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxListCell;, "Ljavafx/scene/control/cell/CheckBoxListCell<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/ListCell;->updateItem(Ljava/lang/Object;Z)V

    .line 264
    move v5, v2

    if-nez v5, :cond_5

    .line 265
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/cell/CheckBoxListCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v5

    move-object v3, v5

    .line 266
    .local v3, "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/cell/CheckBoxListCell;->getSelectedStateCallback()Ljavafx/util/Callback;

    move-result-object v5

    move-object v4, v5

    .line 267
    .local v4, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v5, v4

    if-nez v5, :cond_0

    .line 268
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "The CheckBoxListCell selectedStateCallbackProperty can not be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 272
    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxListCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxListCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 273
    move-object v5, v0

    move-object v6, v3

    if-eqz v6, :cond_3

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxListCell;->setText(Ljava/lang/String;)V

    .line 275
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxListCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    if-eqz v5, :cond_1

    .line 276
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxListCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxListCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    check-cast v6, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->unbindBidirectional(Ljavafx/beans/property/Property;)V

    .line 278
    :cond_1
    move-object v5, v0

    move-object v6, v4

    move-object v7, v1

    invoke-interface {v6, v7}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/beans/value/ObservableValue;

    iput-object v6, v5, Ljavafx/scene/control/cell/CheckBoxListCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    .line 279
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxListCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    if-eqz v5, :cond_2

    .line 280
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxListCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxListCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    check-cast v6, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 282
    .line 286
    .end local v3    # "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .end local v4    # "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    :cond_2
    :goto_1
    return-void

    .line 273
    .restart local v3    # "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .restart local v4    # "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    :cond_3
    move-object v6, v1

    if-nez v6, :cond_4

    const-string v6, ""

    goto :goto_0

    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 283
    .end local v3    # "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .end local v4    # "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TT;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxListCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 284
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxListCell;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method
