.class abstract Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
.super Ljava/lang/Object;
.source "InputFieldSkin.java"

# interfaces
.implements Ljavafx/scene/control/Skin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/scene/control/Skin",
        "<",
        "Lcom/sun/javafx/scene/control/skin/InputField;",
        ">;"
    }
.end annotation


# instance fields
.field private InputFieldFocusListener:Ljavafx/beans/InvalidationListener;

.field private InputFieldStyleClassListener:Ljavafx/beans/InvalidationListener;

.field protected control:Lcom/sun/javafx/scene/control/skin/InputField;

.field private textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/InputField;)V
    .locals 8

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, p1

    .local v1, "control":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    .line 64
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    .line 91
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    const-string v3, "input-text-field"

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->setId(Ljava/lang/String;)V

    .line 92
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->setFocusTraversable(Z)V

    .line 93
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 94
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/InputField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v2

    .line 95
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;Lcom/sun/javafx/scene/control/skin/InputField;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->InputFieldStyleClassListener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/InputField;->promptTextProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 103
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->prefColumnCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/InputField;->prefColumnCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 107
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 116
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputField;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;Lcom/sun/javafx/scene/control/skin/InputField;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->InputFieldFocusListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 137
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->updateText()V

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;)Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->lambda$new$345(Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->lambda$new$346(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/InputFieldSkin;Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->lambda$new$347(Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$345(Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, p1

    .local v1, "control":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/InputField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 97
    return-void
.end method

.method private synthetic lambda$new$346(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->updateValue()V

    .line 109
    return-void
.end method

.method private synthetic lambda$new$347(Lcom/sun/javafx/scene/control/skin/InputField;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, p1

    .local v1, "control":Lcom/sun/javafx/scene/control/skin/InputField;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/InputField;->isFocused()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;->handleFocus(Z)V

    .line 118
    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/lang/String;)Z
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/InputField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->InputFieldStyleClassListener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/InputField;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->InputFieldFocusListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 160
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    .line 161
    return-void
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    return-object v0
.end method

.method public getSkinnable()Lcom/sun/javafx/scene/control/skin/InputField;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->control:Lcom/sun/javafx/scene/control/skin/InputField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->getSkinnable()Lcom/sun/javafx/scene/control/skin/InputField;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    return-object v0
.end method

.method protected getTextField()Ljavafx/scene/control/TextField;
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/InputFieldSkin;->textField:Lcom/sun/javafx/scene/control/skin/InputFieldSkin$InnerTextField;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/InputFieldSkin;
    return-object v0
.end method

.method protected abstract updateText()V
.end method

.method protected abstract updateValue()V
.end method
