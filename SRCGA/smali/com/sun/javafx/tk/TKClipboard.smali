.class public interface abstract Lcom/sun/javafx/tk/TKClipboard;
.super Ljava/lang/Object;
.source "TKClipboard.java"


# virtual methods
.method public abstract getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;
.end method

.method public abstract getContentTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDragView()Ljavafx/scene/image/Image;
.end method

.method public abstract getDragViewOffsetX()D
.end method

.method public abstract getDragViewOffsetY()D
.end method

.method public abstract getTransferModes()Ljava/util/Set;
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

.method public abstract hasContent(Ljavafx/scene/input/DataFormat;)Z
.end method

.method public varargs abstract putContent([Ljavafx/util/Pair;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/util/Pair",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setDragView(Ljavafx/scene/image/Image;)V
.end method

.method public abstract setDragViewOffsetX(D)V
.end method

.method public abstract setDragViewOffsetY(D)V
.end method

.method public abstract setSecurityContext(Ljava/security/AccessControlContext;)V
.end method
