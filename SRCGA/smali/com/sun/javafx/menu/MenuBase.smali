.class public interface abstract Lcom/sun/javafx/menu/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"

# interfaces
.implements Lcom/sun/javafx/menu/MenuItemBase;


# virtual methods
.method public abstract getItemsBase()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/menu/MenuItemBase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnHidden()Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnHiding()Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnShowing()Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnShown()Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onHiddenProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract onHidingProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract onShowingProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract onShownProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract setOnHidden(Ljavafx/event/EventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnHiding(Ljavafx/event/EventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnShowing(Ljavafx/event/EventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnShown(Ljavafx/event/EventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract show()V
.end method

.method public abstract showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end method
