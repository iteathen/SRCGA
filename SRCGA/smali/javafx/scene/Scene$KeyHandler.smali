.class Ljavafx/scene/Scene$KeyHandler;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyHandler"
.end annotation


# instance fields
.field private final sceneWindowFocusedListener:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Ljavafx/scene/Scene;

.field private windowFocused:Z


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 3914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3958
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/Scene$KeyHandler$$Lambda$1;->lambdaFactory$(Ljavafx/scene/Scene$KeyHandler;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Scene$KeyHandler;->sceneWindowFocusedListener:Ljavafx/beans/InvalidationListener;

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/Scene$KeyHandler;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 3914
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$KeyHandler;->process(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/Scene$KeyHandler;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 3914
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$KeyHandler;->requestFocus(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$2200(Ljavafx/scene/Scene$KeyHandler;)Z
    .locals 2

    .prologue
    .line 3914
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene$KeyHandler;->windowFocused:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene$KeyHandler;
    return v0
.end method

.method static synthetic access$800(Ljavafx/scene/Scene$KeyHandler;Ljavafx/stage/Window;Ljavafx/stage/Window;)V
    .locals 6

    .prologue
    .line 3914
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "x1":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "x2":Ljavafx/stage/Window;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$KeyHandler;->windowForSceneChanged(Ljavafx/stage/Window;Ljavafx/stage/Window;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/Scene$KeyHandler;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$KeyHandler;->lambda$new$11(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$11(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 3958
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/beans/property/ReadOnlyBooleanProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene$KeyHandler;->setWindowFocused(Z)V

    return-void
.end method

.method private process(Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    .prologue
    .line 3961
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 3962
    .local v2, "sceneFocusOwner":Ljavafx/scene/Node;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :goto_0
    move-object v3, v4

    .line 3968
    .local v3, "eventTarget":Ljavafx/event/EventTarget;
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3969
    return-void

    .line 3962
    .end local v3    # "eventTarget":Ljavafx/event/EventTarget;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    goto :goto_0
.end method

.method private requestFocus(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 3972
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v2

    move-object v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->isCanReceiveFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3973
    .line 3976
    :cond_0
    :goto_0
    return-void

    .line 3975
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$KeyHandler;->setFocusOwner(Ljavafx/scene/Node;)V

    .line 3976
    goto :goto_0
.end method

.method private setFocusOwner(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 3919
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2000(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3920
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2000(Ljavafx/scene/Scene;)Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v2, v4

    .line 3921
    .local v2, "s":Ljavafx/scene/Scene;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 3922
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Scene;->impl_getPeer()Lcom/sun/javafx/tk/TKScene;

    move-result-object v4

    move-object v3, v4

    .line 3923
    .local v3, "peer":Lcom/sun/javafx/tk/TKScene;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 3924
    move-object v4, v3

    invoke-interface {v4}, Lcom/sun/javafx/tk/TKScene;->finishInputMethodComposition()V

    .line 3928
    .end local v2    # "s":Ljavafx/scene/Scene;
    .end local v3    # "peer":Lcom/sun/javafx/tk/TKScene;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$8300(Ljavafx/scene/Scene;)Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 3929
    return-void
.end method

.method private windowForSceneChanged(Ljavafx/stage/Window;Ljavafx/stage/Window;)V
    .locals 5

    .prologue
    .line 3946
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, p1

    .local v1, "oldWindow":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "window":Ljavafx/stage/Window;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 3947
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/stage/Window;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$KeyHandler;->sceneWindowFocusedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 3950
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 3951
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/stage/Window;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$KeyHandler;->sceneWindowFocusedListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 3952
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene$KeyHandler;->setWindowFocused(Z)V

    .line 3956
    :goto_0
    return-void

    .line 3954
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene$KeyHandler;->setWindowFocused(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected isWindowFocused()Z
    .locals 2

    .prologue
    .line 3932
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene$KeyHandler;->windowFocused:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$KeyHandler;
    return v0
.end method

.method protected setWindowFocused(Z)V
    .locals 4

    .prologue
    .line 3934
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$KeyHandler;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/Scene$KeyHandler;->windowFocused:Z

    .line 3935
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3936
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Scene$KeyHandler;->windowFocused:Z

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setFocused(Z)V

    .line 3938
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Scene$KeyHandler;->windowFocused:Z

    if-eqz v2, :cond_1

    .line 3939
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2300(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3940
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$KeyHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2300(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Accessible;->sendNotification(Ljavafx/scene/AccessibleAttribute;)V

    .line 3943
    :cond_1
    return-void
.end method
