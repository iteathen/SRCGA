.class public interface abstract Ljavafx/scene/control/Skinnable;
.super Ljava/lang/Object;
.source "Skinnable.java"


# virtual methods
.method public abstract getSkin()Ljavafx/scene/control/Skin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract setSkin(Ljavafx/scene/control/Skin;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Skin",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract skinProperty()Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Skin",
            "<*>;>;"
        }
    .end annotation
.end method
