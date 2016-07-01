.class public Ljavafx/scene/control/TextInputDialog;
.super Ljavafx/scene/control/Dialog;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/Dialog",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private final grid:Ljavafx/scene/layout/GridPane;

.field private final label:Ljavafx/scene/control/Label;

.field private final textField:Ljavafx/scene/control/TextField;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, v0

    const-string v2, ""

    invoke-direct {v1, v2}, Ljavafx/scene/control/TextInputDialog;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "defaultValue"
        .end annotation
    .end param

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, p1

    .local v1, "defaultValue":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Dialog;-><init>()V

    .line 76
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputDialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v3

    move-object v2, v3

    .line 79
    .local v2, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TextField;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/scene/control/TextField;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    .line 80
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextField;->setMaxWidth(D)V

    .line 81
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    sget-object v4, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-static {v3, v4}, Ljavafx/scene/layout/GridPane;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 82
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/scene/layout/GridPane;->setFillWidth(Ljavafx/scene/Node;Ljava/lang/Boolean;)V

    .line 85
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->getContentText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavafx/scene/control/DialogPane;->createContentLabel(Ljava/lang/String;)Ljavafx/scene/control/Label;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/TextInputDialog;->label:Ljavafx/scene/control/Label;

    .line 86
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->label:Ljavafx/scene/control/Label;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Label;->setPrefWidth(D)V

    .line 87
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->contentTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 89
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TextInputDialog;->defaultValue:Ljava/lang/String;

    .line 91
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/GridPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/GridPane;-><init>()V

    iput-object v4, v3, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    .line 92
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/GridPane;->setHgap(D)V

    .line 93
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/GridPane;->setMaxWidth(D)V

    .line 94
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/GridPane;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 96
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->contentTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/TextInputDialog$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TextInputDialog;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 98
    move-object v3, v0

    const-string v4, "Dialog.confirm.title"

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextInputDialog;->setTitle(Ljava/lang/String;)V

    .line 99
    move-object v3, v2

    const-string v4, "Dialog.confirm.header"

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/DialogPane;->setHeaderText(Ljava/lang/String;)V

    .line 100
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "text-input-dialog"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 101
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/control/ButtonType;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Ljavafx/scene/control/ButtonType;->OK:Ljavafx/scene/control/ButtonType;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    sget-object v7, Ljavafx/scene/control/ButtonType;->CANCEL:Ljavafx/scene/control/ButtonType;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 103
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TextInputDialog;->updateGrid()V

    .line 105
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/TextInputDialog$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/TextInputDialog;)Ljavafx/util/Callback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextInputDialog;->setResultConverter(Ljavafx/util/Callback;)V

    .line 109
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TextInputDialog;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputDialog;->lambda$new$610(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/TextInputDialog;Ljavafx/scene/control/ButtonType;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputDialog;->lambda$new$611(Ljavafx/scene/control/ButtonType;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/TextInputDialog;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextInputDialog;->lambda$updateGrid$612()V

    return-void
.end method

.method private synthetic lambda$new$610(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/TextInputDialog;->updateGrid()V

    return-void
.end method

.method private synthetic lambda$new$611(Ljavafx/scene/control/ButtonType;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, p1

    .local v1, "dialogButton":Ljavafx/scene/control/ButtonType;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 107
    .local v2, "data":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/ButtonBar$ButtonData;->OK_DONE:Ljavafx/scene/control/ButtonBar$ButtonData;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/TextInputDialog;
    return-object v0

    .line 106
    .end local v2    # "data":Ljavafx/scene/control/ButtonBar$ButtonData;
    .restart local v0    # "this":Ljavafx/scene/control/TextInputDialog;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonType;->getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v3

    goto :goto_0

    .line 107
    .restart local v2    # "data":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private synthetic lambda$updateGrid$612()V
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->requestFocus()V

    return-void
.end method

.method private updateGrid()V
    .locals 5

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 144
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputDialog;->label:Ljavafx/scene/control/Label;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 145
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 146
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputDialog;->getDialogPane()Ljavafx/scene/control/DialogPane;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputDialog;->grid:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/DialogPane;->setContent(Ljavafx/scene/Node;)V

    .line 148
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/TextInputDialog$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/TextInputDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputDialog;->defaultValue:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputDialog;
    return-object v0
.end method

.method public final getEditor()Ljavafx/scene/control/TextField;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputDialog;->textField:Ljavafx/scene/control/TextField;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputDialog;
    return-object v0
.end method
