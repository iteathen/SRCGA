.class public Ljavafx/scene/control/ChoiceDialog;
.super Ljavafx/scene/control/Dialog;
.source "ChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Dialog",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final comboBox:Ljavafx/scene/control/ComboBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/ComboBox",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final defaultChoice:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final grid:Ljavafx/scene/layout/GridPane;

.field private final label:Ljavafx/scene/control/Label;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ChoiceDialog;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v2, p1

    .local v2, "defaultChoice":Ljava/lang/Object;, "TT;"
    move-object v3, p2

    .local v3, "choices":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/control/Dialog;-><init>()V

    .line 112
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/control/ChoiceDialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v7

    move-object v4, v7

    .line 115
    .local v4, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v7, v1

    new-instance v8, Ljavafx/scene/layout/GridPane;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljavafx/scene/layout/GridPane;-><init>()V

    iput-object v8, v7, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    .line 116
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/GridPane;->setHgap(D)V

    .line 117
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/GridPane;->setMaxWidth(D)V

    .line 118
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    sget-object v8, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/GridPane;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 121
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/DialogPane;->getContentText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavafx/scene/control/DialogPane;->createContentLabel(Ljava/lang/String;)Ljavafx/scene/control/Label;

    move-result-object v8

    iput-object v8, v7, Ljavafx/scene/control/ChoiceDialog;->label:Ljavafx/scene/control/Label;

    .line 122
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->label:Ljavafx/scene/control/Label;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Label;->setPrefWidth(D)V

    .line 123
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v7}, Ljavafx/scene/control/Label;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/DialogPane;->contentTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 125
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->contentTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Ljavafx/scene/control/ChoiceDialog$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ChoiceDialog;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 127
    move-object v7, v1

    const-string v8, "Dialog.confirm.title"

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/ChoiceDialog;->setTitle(Ljava/lang/String;)V

    .line 128
    move-object v7, v4

    const-string v8, "Dialog.confirm.header"

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/DialogPane;->setHeaderText(Ljava/lang/String;)V

    .line 129
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "choice-dialog"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 130
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/scene/control/ButtonType;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    sget-object v11, Ljavafx/scene/control/ButtonType;->OK:Ljavafx/scene/control/ButtonType;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    sget-object v11, Ljavafx/scene/control/ButtonType;->CANCEL:Ljavafx/scene/control/ButtonType;

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v7

    .line 132
    const-wide v7, 0x4062c00000000000L    # 150.0

    move-wide v5, v7

    .line 134
    .local v5, "MIN_WIDTH":D
    move-object v7, v1

    new-instance v8, Ljavafx/scene/control/ComboBox;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljavafx/scene/control/ComboBox;-><init>()V

    iput-object v8, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    .line 135
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    const-wide v8, 0x4062c00000000000L    # 150.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/ComboBox;->setMinWidth(D)V

    .line 136
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 137
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v7}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 139
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/ComboBox;->setMaxWidth(D)V

    .line 140
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    sget-object v8, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 141
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/scene/layout/GridPane;->setFillWidth(Ljavafx/scene/Node;Ljava/lang/Boolean;)V

    .line 143
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v8}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v2

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v2

    :goto_0
    iput-object v8, v7, Ljavafx/scene/control/ChoiceDialog;->defaultChoice:Ljava/lang/Object;

    .line 145
    move-object v7, v2

    if-nez v7, :cond_2

    .line 146
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v7}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/control/SingleSelectionModel;->selectFirst()V

    .line 151
    :goto_1
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/control/ChoiceDialog;->updateGrid()V

    .line 153
    move-object v7, v1

    move-object v8, v1

    invoke-static {v8}, Ljavafx/scene/control/ChoiceDialog$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/ChoiceDialog;)Ljavafx/util/Callback;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/control/ChoiceDialog;->setResultConverter(Ljavafx/util/Callback;)V

    .line 157
    return-void

    .line 143
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 148
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v7}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, p1

    .local v1, "defaultChoice":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "choices":[Ljava/lang/Object;, "[TT;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    if-nez v5, :cond_0

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 94
    :goto_0
    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ChoiceDialog;-><init>(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 96
    return-void

    .line 95
    :cond_0
    move-object v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ChoiceDialog;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ChoiceDialog;->lambda$new$603(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/ChoiceDialog;Ljavafx/scene/control/ButtonType;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ChoiceDialog;->lambda$new$604(Ljavafx/scene/control/ButtonType;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/ChoiceDialog;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ChoiceDialog;->lambda$updateGrid$605()V

    return-void
.end method

.method private synthetic lambda$new$603(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ChoiceDialog;->updateGrid()V

    return-void
.end method

.method private synthetic lambda$new$604(Ljavafx/scene/control/ButtonType;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, p1

    .local v1, "dialogButton":Ljavafx/scene/control/ButtonType;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 155
    .local v2, "data":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/ButtonBar$ButtonData;->OK_DONE:Ljavafx/scene/control/ButtonBar$ButtonData;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ChoiceDialog;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    :goto_1
    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    return-object v0

    .line 154
    .end local v2    # "data":Ljavafx/scene/control/ButtonBar$ButtonData;
    .restart local v0    # "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonType;->getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v3

    goto :goto_0

    .line 155
    .restart local v2    # "data":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private synthetic lambda$updateGrid$605()V
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->requestFocus()V

    return-void
.end method

.method private updateGrid()V
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 216
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceDialog;->label:Ljavafx/scene/control/Label;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 217
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 218
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ChoiceDialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceDialog;->grid:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/DialogPane;->setContent(Ljavafx/scene/Node;)V

    .line 220
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/ChoiceDialog$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/ChoiceDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method


# virtual methods
.method public final getDefaultChoice()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->defaultChoice:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
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
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    return-object v0
.end method

.method public final getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    return-object v0
.end method

.method public final selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    return-object v0
.end method

.method public final setSelectedItem(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceDialog;, "Ljavafx/scene/control/ChoiceDialog<TT;>;"
    move-object v1, p1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceDialog;->comboBox:Ljavafx/scene/control/ComboBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 187
    return-void
.end method
