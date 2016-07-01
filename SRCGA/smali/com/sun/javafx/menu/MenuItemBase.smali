.class public interface abstract Lcom/sun/javafx/menu/MenuItemBase;
.super Ljava/lang/Object;
.source "MenuItemBase.java"


# virtual methods
.method public abstract acceleratorProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disableProperty()Ljavafx/beans/property/BooleanProperty;
.end method

.method public abstract fire()V
.end method

.method public abstract fireValidation()V
.end method

.method public abstract getAccelerator()Ljavafx/scene/input/KeyCombination;
.end method

.method public abstract getGraphic()Ljavafx/scene/Node;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOnAction()Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract graphicProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract idProperty()Ljavafx/beans/property/StringProperty;
.end method

.method public abstract isDisable()Z
.end method

.method public abstract isMnemonicParsing()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;
.end method

.method public abstract onActionProperty()Ljavafx/beans/property/ObjectProperty;
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
.end method

.method public abstract setAccelerator(Ljavafx/scene/input/KeyCombination;)V
.end method

.method public abstract setDisable(Z)V
.end method

.method public abstract setGraphic(Ljavafx/scene/Node;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setMnemonicParsing(Z)V
.end method

.method public abstract setOnAction(Ljavafx/event/EventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract textProperty()Ljavafx/beans/property/StringProperty;
.end method

.method public abstract visibleProperty()Ljavafx/beans/property/BooleanProperty;
.end method
