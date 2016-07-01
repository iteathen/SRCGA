.class Ljavafx/scene/control/cell/CellUtils;
.super Ljava/lang/Object;
.source "CellUtils.java"


# static fields
.field static TREE_VIEW_HBOX_GRAPHIC_PADDING:I

.field private static final defaultStringConverter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<*>;"
        }
    .end annotation
.end field

.field private static final defaultTreeItemStringConverter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    sput v0, Ljavafx/scene/control/cell/CellUtils;->TREE_VIEW_HBOX_GRAPHIC_PADDING:I

    .line 51
    new-instance v0, Ljavafx/scene/control/cell/CellUtils$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/cell/CellUtils$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/cell/CellUtils;->defaultStringConverter:Ljavafx/util/StringConverter;

    .line 61
    new-instance v0, Ljavafx/scene/control/cell/CellUtils$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/cell/CellUtils$2;-><init>()V

    sput-object v0, Ljavafx/scene/control/cell/CellUtils;->defaultTreeItemStringConverter:Ljavafx/util/StringConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/CellUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Cell;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->lambda$createChoiceBox$613(Ljavafx/scene/control/Cell;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/util/StringConverter;Ljavafx/scene/control/Cell;Ljavafx/scene/control/TextField;Ljavafx/event/ActionEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->lambda$createTextField$614(Ljavafx/util/StringConverter;Ljavafx/scene/control/Cell;Ljavafx/scene/control/TextField;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/Cell;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/cell/CellUtils;->lambda$createTextField$615(Ljavafx/scene/control/Cell;Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/Cell;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->lambda$createComboBox$616(Ljavafx/scene/control/Cell;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static cancelEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Ljavafx/scene/control/cell/CellUtils;->getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 233
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    .line 234
    return-void
.end method

.method static createChoiceBox(Ljavafx/scene/control/Cell;Ljavafx/collections/ObservableList;Ljavafx/beans/property/ObjectProperty;)Ljavafx/scene/control/ChoiceBox;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;)",
            "Ljavafx/scene/control/ChoiceBox",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v1, p0

    .local v1, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v2, p1

    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, p2

    .local v3, "converter":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/util/StringConverter<TT;>;>;"
    new-instance v5, Ljavafx/scene/control/ChoiceBox;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavafx/scene/control/ChoiceBox;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v4, v5

    .line 155
    .local v4, "choiceBox":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v5, v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ChoiceBox;->setMaxWidth(D)V

    .line 156
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 157
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Ljavafx/scene/control/cell/CellUtils$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Cell;)Ljavafx/beans/value/ChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 162
    move-object v5, v4

    move-object v1, v5

    .end local v1    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v1
.end method

.method static createComboBox(Ljavafx/scene/control/Cell;Ljavafx/collections/ObservableList;Ljavafx/beans/property/ObjectProperty;)Ljavafx/scene/control/ComboBox;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;)",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 303
    move-object v1, p0

    .local v1, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v2, p1

    .local v2, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, p2

    .local v3, "converter":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/util/StringConverter<TT;>;>;"
    new-instance v5, Ljavafx/scene/control/ComboBox;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavafx/scene/control/ComboBox;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v4, v5

    .line 304
    .local v4, "comboBox":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 305
    move-object v5, v4

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/ComboBox;->setMaxWidth(D)V

    .line 306
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v6, v1

    invoke-static {v6}, Ljavafx/scene/control/cell/CellUtils$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/Cell;)Ljavafx/beans/value/ChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 311
    move-object v5, v4

    move-object v1, v5

    .end local v1    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v1
.end method

.method static createTextField(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljavafx/scene/control/TextField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)",
            "Ljavafx/scene/control/TextField;"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    new-instance v3, Ljavafx/scene/control/TextField;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Ljavafx/scene/control/cell/CellUtils;->getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/scene/control/TextField;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 241
    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-static {v4, v5, v6}, Ljavafx/scene/control/cell/CellUtils$$Lambda$2;->lambdaFactory$(Ljavafx/util/StringConverter;Ljavafx/scene/control/Cell;Ljavafx/scene/control/TextField;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextField;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 251
    move-object v3, v2

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/cell/CellUtils$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/Cell;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextField;->setOnKeyReleased(Ljavafx/event/EventHandler;)V

    .line 257
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0
.end method

.method static defaultStringConverter()Ljavafx/util/StringConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Ljavafx/scene/control/cell/CellUtils;->defaultStringConverter:Ljavafx/util/StringConverter;

    return-object v0
.end method

.method static defaultTreeItemStringConverter()Ljavafx/util/StringConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Ljavafx/scene/control/cell/CellUtils;->defaultTreeItemStringConverter:Ljavafx/util/StringConverter;

    return-object v0
.end method

.method static getGraphic(Ljavafx/scene/control/TreeItem;)Ljavafx/scene/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeItem",
            "<*>;)",
            "Ljavafx/scene/Node;"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    return-object v0

    .restart local v0    # "treeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<*>;"
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeItem;->getGraphic()Ljavafx/scene/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private static getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    .line 99
    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->getItem()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 100
    :goto_0
    move-object v0, v2

    .end local v0    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    return-object v0

    .line 99
    .restart local v0    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-object v3, v0

    .line 100
    invoke-virtual {v3}, Ljavafx/scene/control/Cell;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static synthetic lambda$createChoiceBox$613(Ljavafx/scene/control/Cell;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Cell;->commitEdit(Ljava/lang/Object;)V

    .line 161
    :cond_0
    return-void
.end method

.method private static synthetic lambda$createComboBox$616(Ljavafx/scene/control/Cell;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Cell;->commitEdit(Ljava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method

.method private static synthetic lambda$createTextField$614(Ljavafx/util/StringConverter;Ljavafx/scene/control/Cell;Ljavafx/scene/control/TextField;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "converter":Ljavafx/util/StringConverter;
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/Cell;
    move-object v2, p2

    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, p3

    .local v3, "event":Ljavafx/event/ActionEvent;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 243
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Attempting to convert text input into Object, but provided StringConverter is null. Be sure to set a StringConverter in your cell factory."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :cond_0
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Cell;->commitEdit(Ljava/lang/Object;)V

    .line 249
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/event/ActionEvent;->consume()V

    .line 250
    return-void
.end method

.method private static synthetic lambda$createTextField$615(Ljavafx/scene/control/Cell;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    if-ne v2, v3, :cond_0

    .line 253
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Cell;->cancelEdit()V

    .line 254
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 256
    :cond_0
    return-void
.end method

.method static startEdit(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/layout/HBox;",
            "Ljavafx/scene/Node;",
            "Ljavafx/scene/control/TextField;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "hbox":Ljavafx/scene/layout/HBox;
    move-object v3, p3

    .local v3, "graphic":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "textField":Ljavafx/scene/control/TextField;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 213
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/control/cell/CellUtils;->getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 215
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 217
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 218
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 219
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    .line 224
    :goto_0
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->selectAll()V

    .line 228
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->requestFocus()V

    .line 229
    return-void

    .line 221
    :cond_1
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0
.end method

.method static updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/control/ChoiceBox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/control/ChoiceBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "choiceBox":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/ChoiceBox;)V

    .line 120
    return-void
.end method

.method static updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/control/ComboBox;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "comboBox":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/ComboBox;)V

    .line 270
    return-void
.end method

.method static updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/control/TextField;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/control/TextField;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/control/cell/CellUtils;->updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V

    .line 177
    return-void
.end method

.method static updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/ChoiceBox;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/layout/HBox;",
            "Ljavafx/scene/Node;",
            "Ljavafx/scene/control/ChoiceBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "hbox":Ljavafx/scene/layout/HBox;
    move-object v3, p3

    .local v3, "graphic":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "choiceBox":Ljavafx/scene/control/ChoiceBox;, "Ljavafx/scene/control/ChoiceBox<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Cell;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 129
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    .line 148
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 133
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Cell;->getItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 135
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 137
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 138
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 139
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 141
    :cond_2
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 144
    :cond_3
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/control/cell/CellUtils;->getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 145
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0
.end method

.method static updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/ComboBox;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/layout/HBox;",
            "Ljavafx/scene/Node;",
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "hbox":Ljavafx/scene/layout/HBox;
    move-object v3, p3

    .local v3, "graphic":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "comboBox":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Cell;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 279
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    .line 298
    :goto_0
    return-void

    .line 281
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 282
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 283
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Cell;->getItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 285
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 287
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 288
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 289
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 291
    :cond_2
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 294
    :cond_3
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/control/cell/CellUtils;->getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 295
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0
.end method

.method static updateItem(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;Ljavafx/scene/layout/HBox;Ljavafx/scene/Node;Ljavafx/scene/control/TextField;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/scene/control/Cell",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;",
            "Ljavafx/scene/layout/HBox;",
            "Ljavafx/scene/Node;",
            "Ljavafx/scene/control/TextField;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<TT;>;"
    move-object v1, p1

    .local v1, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, p2

    .local v2, "hbox":Ljavafx/scene/layout/HBox;
    move-object v3, p3

    .local v3, "graphic":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "textField":Ljavafx/scene/control/TextField;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Cell;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 186
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    .line 205
    :goto_0
    return-void

    .line 188
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Cell;->isEditing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 190
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/control/cell/CellUtils;->getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 192
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 194
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 195
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v4

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 196
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 198
    :cond_2
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 201
    :cond_3
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/control/cell/CellUtils;->getItemText(Ljavafx/scene/control/Cell;Ljavafx/util/StringConverter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setText(Ljava/lang/String;)V

    .line 202
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Cell;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0
.end method
