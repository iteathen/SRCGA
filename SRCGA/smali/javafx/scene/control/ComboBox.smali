.class public Ljavafx/scene/control/ComboBox;
.super Ljavafx/scene/control/ComboBoxBase;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/ComboBoxBase",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "combo-box"


# instance fields
.field private buttonCell:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private cellFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

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

.field private editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TextField;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private placeholder:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private previousItemCount:I

.field private selectedItemListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private selectionModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private textField:Ljavafx/scene/control/TextField;

.field private visibleRowCount:Ljavafx/beans/property/IntegerProperty;

.field private wasSetAllCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/ComboBox;-><init>(Ljavafx/collections/ObservableList;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ComboBoxBase;-><init>()V

    .line 284
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "items"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox;->items:Ljavafx/beans/property/ObjectProperty;

    .line 297
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "converter"

    .line 298
    invoke-static {}, Ljavafx/scene/control/ComboBox;->defaultStringConverter()Ljavafx/util/StringConverter;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox;->converter:Ljavafx/beans/property/ObjectProperty;

    .line 309
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "cellFactory"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    .line 325
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "buttonCell"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox;->buttonCell:Ljavafx/beans/property/ObjectProperty;

    .line 336
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ComboBox$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    const-string v7, "selectionModel"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ComboBox$2;-><init>(Ljavafx/scene/control/ComboBox;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    .line 360
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleIntegerProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "visibleRowCount"

    const/16 v7, 0xa

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox;->visibleRowCount:Ljavafx/beans/property/IntegerProperty;

    .line 432
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ComboBox$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ComboBox$3;-><init>(Ljavafx/scene/control/ComboBox;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox;->selectedItemListener:Ljavafx/beans/value/ChangeListener;

    .line 477
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/control/ComboBox;->wasSetAllCalled:Z

    .line 478
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljavafx/scene/control/ComboBox;->previousItemCount:I

    .line 233
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "combo-box"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 234
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->COMBO_BOX:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBox;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 235
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBox;->setItems(Ljavafx/collections/ObservableList;)V

    .line 236
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;-><init>(Ljavafx/scene/control/ComboBox;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBox;->setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V

    .line 241
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ComboBox;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 266
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/ComboBox;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 270
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/ComboBox;)Ljavafx/beans/value/ChangeListener;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->selectedItemListener:Ljavafx/beans/value/ChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ComboBox;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/ComboBox;)Z
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/ComboBox;->wasSetAllCalled:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ComboBox;
    return v0
.end method

.method static synthetic access$102(Ljavafx/scene/control/ComboBox;Z)Z
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/ComboBox;->wasSetAllCalled:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/ComboBox;
    return v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/ComboBox;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBox;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/control/ComboBox;)I
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/ComboBox;->previousItemCount:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ComboBox;
    return v0
.end method

.method static synthetic access$502(Ljavafx/scene/control/ComboBox;I)I
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBox;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/control/ComboBox;->previousItemCount:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/ComboBox;
    return v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ComboBox;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/ComboBox;->lambda$new$152(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/ComboBox;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBox;->lambda$new$153(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private static defaultStringConverter()Ljavafx/util/StringConverter;
    .locals 3
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
    .line 200
    new-instance v0, Ljavafx/scene/control/ComboBox$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/ComboBox$1;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$new$152(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Object;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v7

    if-nez v7, :cond_0

    .line 264
    :goto_0
    return-void

    .line 244
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v7

    move-object v4, v7

    .line 245
    .local v4, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v5, v7

    .line 247
    .local v5, "index":I
    move v7, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 248
    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 264
    :cond_1
    :goto_1
    goto :goto_0

    .line 259
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/SelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 260
    .local v6, "selectedItem":Ljava/lang/Object;, "TT;"
    move-object v7, v6

    if-eqz v7, :cond_3

    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 261
    :cond_3
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SelectionModel;->clearAndSelect(I)V

    goto :goto_1
.end method

.method private synthetic lambda$new$153(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    .line 269
    return-void
.end method

.method private updateValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBox;->setValue(Ljava/lang/Object;)V

    .line 464
    :cond_0
    return-void
.end method


# virtual methods
.method public buttonCellProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->buttonCell:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->cellFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public converterProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;-><init>(Ljavafx/scene/control/ComboBox;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final editorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TextField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 380
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "editor"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBox;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 381
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/ComboBox;->textField:Ljavafx/scene/control/TextField;

    .line 382
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 384
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final getButtonCell()Ljavafx/scene/control/ListCell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->buttonCellProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListCell;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final getCellFactory()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
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

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final getEditor()Ljavafx/scene/control/TextField;
    .locals 2

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->editorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextField;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->items:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final getPlaceholder()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->placeholder:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/SingleSelectionModel;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final getVisibleRowCount()I
    .locals 2

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->visibleRowCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return v0
.end method

.method public itemsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->items:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final placeholderProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->placeholder:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 398
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "placeholder"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBox;->placeholder:Ljavafx/beans/property/ObjectProperty;

    .line 400
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->placeholder:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v6, Ljavafx/scene/control/ComboBox$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 615
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/control/ComboBoxBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    :goto_0
    return-object v0

    .line 604
    .restart local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getAccessibleText()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 605
    .local v3, "accText":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 608
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/control/ComboBoxBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 609
    .local v4, "title":Ljava/lang/Object;
    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    .line 610
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v6

    move-object v5, v6

    .line 611
    .local v5, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v6, v5

    if-nez v6, :cond_3

    .line 612
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    const-string v6, ""

    goto :goto_1

    .line 614
    :cond_3
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/ComboBox;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final selectionModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method

.method public final setButtonCell(Ljavafx/scene/control/ListCell;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->buttonCellProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCellFactory(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/ListView<TT;>;Ljavafx/scene/control/ListCell<TT;>;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->cellFactoryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

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
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->converterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setItems(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlaceholder(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->placeholderProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public final setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setVisibleRowCount(I)V
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox;->visibleRowCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final visibleRowCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBox;->visibleRowCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBox;, "Ljavafx/scene/control/ComboBox<TT;>;"
    return-object v0
.end method
