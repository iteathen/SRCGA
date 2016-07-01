.class public interface abstract Ljavafx/scene/control/Toggle;
.super Ljava/lang/Object;
.source "Toggle.java"


# virtual methods
.method public abstract getProperties()Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToggleGroup()Ljavafx/scene/control/ToggleGroup;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract isSelected()Z
.end method

.method public abstract selectedProperty()Ljavafx/beans/property/BooleanProperty;
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method

.method public abstract toggleGroupProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ToggleGroup;",
            ">;"
        }
    .end annotation
.end method
