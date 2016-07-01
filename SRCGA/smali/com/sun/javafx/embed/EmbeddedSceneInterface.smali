.class public interface abstract Lcom/sun/javafx/embed/EmbeddedSceneInterface;
.super Ljava/lang/Object;
.source "EmbeddedSceneInterface.java"


# virtual methods
.method public abstract createDropTarget()Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;
.end method

.method public abstract getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;
.end method

.method public abstract getPixels(Ljava/nio/IntBuffer;II)Z
.end method

.method public abstract inputMethodEvent(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract keyEvent(II[CI)V
.end method

.method public abstract menuEvent(IIIIZ)V
.end method

.method public abstract mouseEvent(IIZZZIIIIZZZZIZ)V
.end method

.method public abstract setDragStartListener(Lcom/sun/javafx/embed/HostDragStartListener;)V
.end method

.method public abstract setPixelScaleFactor(F)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract traverseOut(Lcom/sun/javafx/scene/traversal/Direction;)Z
.end method
