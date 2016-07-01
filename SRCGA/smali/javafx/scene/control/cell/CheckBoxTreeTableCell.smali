.class public Ljavafx/scene/control/cell/CheckBoxTreeTableCell;
.super Ljavafx/scene/control/TreeTableCell;
.source "CheckBoxTreeTableCell.java"


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
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private showLabel:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TreeTableCell;-><init>()V

    .line 275
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/cell/CheckBoxTreeTableCell$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v0

    const-string v8, "converter"

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell$1;-><init>(Ljavafx/scene/control/cell/CheckBoxTreeTableCell;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 306
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string v7, "selectedStateCallback"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->selectedStateCallback:Ljavafx/beans/property/ObjectProperty;

    .line 249
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "check-box-tree-table-cell"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 251
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/CheckBox;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/control/CheckBox;-><init>()V

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->checkBox:Ljavafx/scene/control/CheckBox;

    .line 254
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 256
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->setSelectedStateCallback(Ljavafx/util/Callback;)V

    .line 257
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->setConverter(Ljavafx/util/StringConverter;)V

    .line 265
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/cell/CheckBoxTreeTableCell;)V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->updateShowLabel()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->lambda$forTreeTableColumn$623(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static forTreeTableColumn(Ljavafx/scene/control/TreeTableColumn;)Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->forTreeTableColumn(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "column":Ljavafx/scene/control/TreeTableColumn;, "Ljavafx/scene/control/TreeTableColumn<TS;Ljava/lang/Boolean;>;"
    return-object v0
.end method

.method public static forTreeTableColumn(Ljavafx/util/Callback;)Ljavafx/util/Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->forTreeTableColumn(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0
.end method

.method public static forTreeTableColumn(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;",
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
    .line 193
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell$$Lambda$1;->lambdaFactory$(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0
.end method

.method public static forTreeTableColumn(Ljavafx/util/Callback;Z)Ljavafx/util/Callback;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;Z)",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TreeTableColumn",
            "<TS;TT;>;",
            "Ljavafx/scene/control/TreeTableCell",
            "<TS;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move v1, p1

    .local v1, "showLabel":Z
    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 159
    :goto_0
    move-object v2, v3

    .line 160
    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->forTreeTableColumn(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    return-object v0

    .line 159
    .end local v2    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .restart local v0    # "getSelectedProperty":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    :cond_0
    invoke-static {}, Ljavafx/scene/control/cell/CellUtils;->defaultStringConverter()Ljavafx/util/StringConverter;

    move-result-object v3

    goto :goto_0
.end method

.method private getSelectedProperty()Ljavafx/beans/value/ObservableValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getSelectedStateCallback()Ljavafx/util/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 389
    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getSelectedStateCallback()Ljavafx/util/Callback;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/beans/value/ObservableValue;

    .line 390
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    return-object v0

    .line 389
    .restart local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    :cond_0
    move-object v1, v0

    .line 390
    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableColumn;->getCellObservableValue(I)Ljavafx/beans/value/ObservableValue;

    move-result-object v1

    goto :goto_0
.end method

.method private static synthetic lambda$forTreeTableColumn$623(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/TreeTableColumn;)Ljavafx/scene/control/TreeTableCell;
    .locals 8

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "getSelectedProperty":Ljavafx/util/Callback;
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;
    move-object v2, p2

    .local v2, "list":Ljavafx/scene/control/TreeTableColumn;
    new-instance v3, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    move-object v0, v3

    .end local v0    # "getSelectedProperty":Ljavafx/util/Callback;
    return-object v0
.end method

.method private updateShowLabel()V
    .locals 3

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->converter:Ljavafx/beans/property/ObjectProperty;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->showLabel:Z

    .line 384
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->checkBox:Ljavafx/scene/control/CheckBox;

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->showLabel:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    :goto_1
    invoke-virtual {v1, v2}, Ljavafx/scene/control/CheckBox;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 385
    return-void

    .line 383
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 384
    :cond_1
    sget-object v2, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    goto :goto_1
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
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
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
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    return-object v0
.end method

.method public final getSelectedStateCallback()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->selectedStateCallbackProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
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
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->selectedStateCallback:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
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
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public final setSelectedStateCallback(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/Integer;Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->selectedStateCallbackProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public updateItem(Ljava/lang/Object;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CheckBoxTreeTableCell;, "Ljavafx/scene/control/cell/CheckBoxTreeTableCell<TS;TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move v2, p2

    .local v2, "empty":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/TreeTableCell;->updateItem(Ljava/lang/Object;Z)V

    .line 346
    move v5, v2

    if-eqz v5, :cond_0

    .line 347
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->setText(Ljava/lang/String;)V

    .line 348
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 372
    :goto_0
    return-void

    .line 350
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v5

    move-object v3, v5

    .line 352
    .local v3, "c":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->showLabel:Z

    if-eqz v5, :cond_1

    .line 353
    move-object v5, v0

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->setText(Ljava/lang/String;)V

    .line 355
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->setGraphic(Ljavafx/scene/Node;)V

    .line 357
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    instance-of v5, v5, Ljavafx/beans/property/BooleanProperty;

    if-eqz v5, :cond_2

    .line 358
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    check-cast v6, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->unbindBidirectional(Ljavafx/beans/property/Property;)V

    .line 360
    :cond_2
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getSelectedProperty()Ljavafx/beans/value/ObservableValue;

    move-result-object v5

    move-object v4, v5

    .line 361
    .local v4, "obsValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v5, v4

    instance-of v5, v5, Ljavafx/beans/property/BooleanProperty;

    if-eqz v5, :cond_3

    .line 362
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    .line 363
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBox;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->booleanProperty:Ljavafx/beans/value/ObservableValue;

    check-cast v6, Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 366
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->checkBox:Ljavafx/scene/control/CheckBox;

    invoke-virtual {v5}, Ljavafx/scene/control/CheckBox;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v0

    .line 367
    invoke-virtual {v6}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getTreeTableView()Ljavafx/scene/control/TreeTableView;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    move-object v7, v0

    .line 368
    invoke-virtual {v7}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableColumn;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    .line 367
    invoke-virtual {v6, v7}, Ljavafx/beans/property/BooleanProperty;->and(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v7, v0

    .line 369
    invoke-virtual {v7}, Ljavafx/scene/control/cell/CheckBoxTreeTableCell;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    .line 368
    invoke-virtual {v6, v7}, Ljavafx/beans/binding/BooleanBinding;->and(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    .line 366
    invoke-static {v6}, Ljavafx/beans/binding/Bindings;->not(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    goto :goto_0
.end method
