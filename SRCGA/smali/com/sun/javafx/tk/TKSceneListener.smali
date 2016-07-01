.class public interface abstract Lcom/sun/javafx/tk/TKSceneListener;
.super Ljava/lang/Object;
.source "TKSceneListener.java"


# virtual methods
.method public abstract changedLocation(FF)V
.end method

.method public abstract changedSize(FF)V
.end method

.method public abstract getSceneAccessible()Lcom/sun/glass/ui/Accessible;
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

.method public abstract keyEvent(Ljavafx/scene/input/KeyEvent;)V
.end method

.method public abstract menuEvent(DDDDZ)V
.end method

.method public abstract mouseEvent(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;ZZZZZZZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;DDDD",
            "Ljavafx/scene/input/MouseButton;",
            "ZZZZZZZZZ)V"
        }
    .end annotation
.end method

.method public abstract rotateEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;DDDDDDZZZZZZ)V"
        }
    .end annotation
.end method

.method public abstract scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;DDDDDDIIIIIDDDDZZZZZZ)V"
        }
    .end annotation
.end method

.method public abstract swipeEvent(Ljavafx/event/EventType;IDDDDZZZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;IDDDDZZZZZ)V"
        }
    .end annotation
.end method

.method public abstract touchEventBegin(JIZZZZZ)V
.end method

.method public abstract touchEventEnd()V
.end method

.method public abstract touchEventNext(Ljavafx/scene/input/TouchPoint$State;JDDDD)V
.end method

.method public abstract zoomEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;DDDDDDZZZZZZ)V"
        }
    .end annotation
.end method
