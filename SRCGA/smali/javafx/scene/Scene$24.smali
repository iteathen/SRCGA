.class Ljavafx/scene/Scene$24;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->onMouseDragReleasedProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/event/EventHandler",
        "<-",
        "Ljavafx/scene/input/MouseDragEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 4668
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$24;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$24;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$24;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$24;->this$0:Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$24;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4682
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$24;
    const-string v1, "onMouseDragReleased"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$24;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 4672
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$24;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$24;->this$0:Ljavafx/scene/Scene;

    sget-object v2, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_RELEASED:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene$24;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Scene;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 4673
    return-void
.end method
