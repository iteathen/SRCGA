.class Ljavafx/scene/Scene$14;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->onContextMenuRequestedProperty()Ljavafx/beans/property/ObjectProperty;
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
        "Ljavafx/scene/input/ContextMenuEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 4292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$14;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$14;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$14;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$14;->this$0:Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$14;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$14;
    const-string v1, "onContextMenuRequested"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$14;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 4296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$14;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$14;->this$0:Ljavafx/scene/Scene;

    sget-object v2, Ljavafx/scene/input/ContextMenuEvent;->CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene$14;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Scene;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 4297
    return-void
.end method
