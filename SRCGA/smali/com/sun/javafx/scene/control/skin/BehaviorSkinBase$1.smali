.class Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;
.super Ljava/lang/Object;
.source "BehaviorSkinBase.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/input/MouseEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/MouseEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;->handle(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/MouseEvent;)V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    move-object v2, v3

    .line 93
    .local v2, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->access$000(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseEntered(Ljavafx/scene/input/MouseEvent;)V

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_0
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->access$000(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseExited(Ljavafx/scene/input/MouseEvent;)V

    goto :goto_0

    .line 95
    :cond_1
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->access$000(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    goto :goto_0

    .line 96
    :cond_2
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->access$000(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    goto :goto_0

    .line 97
    :cond_3
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->access$000(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mouseDragged(Ljavafx/scene/input/MouseEvent;)V

    goto :goto_0

    .line 99
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Unsupported event type received"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
