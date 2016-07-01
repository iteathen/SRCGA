.class abstract Lcom/sun/javafx/scene/control/skin/InputField;
.super Ljavafx/scene/control/Control;
.source "InputField.java"


# static fields
.field public static final DEFAULT_PREF_COLUMN_COUNT:I = 0xc


# instance fields
.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private onAction:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private prefColumnCount:Ljavafx/beans/property/IntegerProperty;

.field private promptText:Ljavafx/beans/property/StringProperty;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/InputField;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 56
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/InputField$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/InputField$1;-><init>(Lcom/sun/javafx/scene/control/skin/InputField;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/InputField;->promptText:Ljavafx/beans/property/StringProperty;

    .line 78
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/InputField$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/InputField$2;-><init>(Lcom/sun/javafx/scene/control/skin/InputField;I)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/InputField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    .line 109
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/InputField$3;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/InputField$3;-><init>(Lcom/sun/javafx/scene/control/skin/InputField;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/InputField;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 125
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/InputField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    const-string v5, "input-field"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/InputField;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method


# virtual methods
.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return-object v0
.end method

.method public final getOnAction()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/InputField;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return-object v0
.end method

.method public final getPrefColumnCount()I
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return v0
.end method

.method public final getPromptText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField;->promptText:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return-object v0
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return v0
.end method

.method public final onActionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return-object v0
.end method

.method public final prefColumnCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return-object v0
.end method

.method public final promptTextProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputField;->promptText:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputField;
    return-object v0
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputField;->editable:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setOnAction(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrefColumnCount(I)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputField;->prefColumnCount:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public final setPromptText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputField;->promptText:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method
