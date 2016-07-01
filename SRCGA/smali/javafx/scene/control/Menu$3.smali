.class Ljavafx/scene/control/Menu$3;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Menu;
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
        "<",
        "Ljavafx/event/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Menu;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Menu;)V
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Menu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Menu$3;->this$0:Ljavafx/scene/control/Menu;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu$3;->this$0:Ljavafx/scene/control/Menu;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$3;
    const-string v1, "onShown"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Menu$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Menu$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Menu$3;->this$0:Ljavafx/scene/control/Menu;

    iget-object v1, v1, Ljavafx/scene/control/Menu;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    sget-object v2, Ljavafx/scene/control/Menu;->ON_SHOWN:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Menu$3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 289
    return-void
.end method
