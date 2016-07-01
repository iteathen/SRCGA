.class public Lcom/sun/javafx/scene/control/skin/ButtonSkin;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "ButtonSkin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<",
        "Ljavafx/scene/control/Button;",
        "Lcom/sun/javafx/scene/control/behavior/ButtonBehavior",
        "<",
        "Ljavafx/scene/control/Button;",
        ">;>;"
    }
.end annotation


# instance fields
.field private cancelAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

.field cancelButtonRunnable:Ljava/lang/Runnable;

.field private defaultAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

.field defaultButtonRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/Button;)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonSkin;
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/control/Button;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/ButtonBehavior;-><init>(Ljavafx/scene/control/ButtonBase;)V

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 100
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ButtonSkin;)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultButtonRunnable:Ljava/lang/Runnable;

    .line 106
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ButtonSkin;)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelButtonRunnable:Ljava/lang/Runnable;

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->defaultButtonProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    const-string v4, "DEFAULT_BUTTON"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->cancelButtonProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    const-string v4, "CANCEL_BUTTON"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    const-string v4, "FOCUSED"

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 51
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Button;

    invoke-virtual {v2}, Ljavafx/scene/control/Button;->isDefaultButton()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->setDefaultButton(Z)V

    .line 59
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Button;

    invoke-virtual {v2}, Ljavafx/scene/control/Button;->isCancelButton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->setCancelButton(Z)V

    .line 67
    :cond_1
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ButtonSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->lambda$new$280()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ButtonSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->lambda$new$281()V

    return-void
.end method

.method private synthetic lambda$new$280()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->impl_isTreeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->fire()V

    .line 104
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$281()V
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->impl_isTreeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Button;

    invoke-virtual {v1}, Ljavafx/scene/control/Button;->fire()V

    .line 110
    :cond_0
    return-void
.end method

.method private setCancelButton(Z)V
    .locals 11

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonSkin;
    move v1, p1

    .local v1, "value":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Button;

    invoke-virtual {v5}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v2, v5

    .line 145
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 146
    sget-object v5, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    move-object v3, v5

    .line 147
    .local v3, "acceleratorCode":Ljavafx/scene/input/KeyCode;
    move-object v5, v0

    new-instance v6, Ljavafx/scene/input/KeyCodeCombination;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljavafx/scene/input/KeyCombination$Modifier;

    invoke-direct {v7, v8, v9}, Ljavafx/scene/input/KeyCodeCombination;-><init>(Ljavafx/scene/input/KeyCode;[Ljavafx/scene/input/KeyCombination$Modifier;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    .line 149
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    move-object v4, v5

    .line 150
    .local v4, "oldCancel":Ljava/lang/Runnable;
    move v5, v1

    if-nez v5, :cond_1

    .line 154
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelButtonRunnable:Ljava/lang/Runnable;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 168
    .end local v3    # "acceleratorCode":Ljavafx/scene/input/KeyCode;
    .end local v4    # "oldCancel":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v3    # "acceleratorCode":Ljavafx/scene/input/KeyCode;
    .restart local v4    # "oldCancel":Ljava/lang/Runnable;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelButtonRunnable:Ljava/lang/Runnable;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelButtonRunnable:Ljava/lang/Runnable;

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method private setDefaultButton(Z)V
    .locals 11

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonSkin;
    move v1, p1

    .local v1, "value":Z
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Button;

    invoke-virtual {v5}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v2, v5

    .line 116
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 117
    sget-object v5, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    move-object v3, v5

    .line 118
    .local v3, "acceleratorCode":Ljavafx/scene/input/KeyCode;
    move-object v5, v0

    new-instance v6, Ljavafx/scene/input/KeyCodeCombination;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljavafx/scene/input/KeyCombination$Modifier;

    invoke-direct {v7, v8, v9}, Ljavafx/scene/input/KeyCodeCombination;-><init>(Ljavafx/scene/input/KeyCode;[Ljavafx/scene/input/KeyCombination$Modifier;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    .line 120
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    move-object v4, v5

    .line 121
    .local v4, "oldDefault":Ljava/lang/Runnable;
    move v5, v1

    if-nez v5, :cond_1

    .line 125
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultButtonRunnable:Ljava/lang/Runnable;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 139
    .end local v3    # "acceleratorCode":Ljavafx/scene/input/KeyCode;
    .end local v4    # "oldDefault":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v3    # "acceleratorCode":Ljavafx/scene/input/KeyCode;
    .restart local v4    # "oldDefault":Ljava/lang/Runnable;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultButtonRunnable:Ljava/lang/Runnable;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 135
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultButtonRunnable:Ljava/lang/Runnable;

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 72
    const-string v3, "DEFAULT_BUTTON"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->isDefaultButton()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->setDefaultButton(Z)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v3, "CANCEL_BUTTON"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->isCancelButton()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->setCancelButton(Z)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v3, "FOCUSED"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    move-object v2, v3

    .line 81
    .local v2, "cm":Ljavafx/scene/control/ContextMenu;
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 82
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 84
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Button;

    invoke-virtual {v4}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/Utils;->removeMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;)V

    .line 87
    :cond_3
    goto :goto_0

    .line 88
    .end local v2    # "cm":Ljavafx/scene/control/ContextMenu;
    :cond_4
    const-string v3, "PARENT"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->isDefaultButton()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->defaultAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->isCancelButton()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ButtonSkin;->cancelAcceleratorKeyCodeCombination:Ljavafx/scene/input/KeyCodeCombination;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0
.end method
