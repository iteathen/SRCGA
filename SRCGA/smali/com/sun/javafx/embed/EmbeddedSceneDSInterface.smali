.class public interface abstract Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;
.super Ljava/lang/Object;
.source "EmbeddedSceneDSInterface.java"


# virtual methods
.method public abstract dragDropEnd(Ljavafx/scene/input/TransferMode;)V
.end method

.method public abstract getData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getMimeTypes()[Ljava/lang/String;
.end method

.method public abstract getSupportedActions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isMimeTypeAvailable(Ljava/lang/String;)Z
.end method
