.class Ljavafx/scene/control/MenuItem$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MenuItem;->onMenuValidationProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/control/MenuItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/MenuItem;)V
    .locals 4

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuItem$2;->this$0:Ljavafx/scene/control/MenuItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem$2;->this$0:Ljavafx/scene/control/MenuItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem$2;
    const-string v1, "onMenuValidation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuItem$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuItem$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuItem$2;->this$0:Ljavafx/scene/control/MenuItem;

    iget-object v1, v1, Ljavafx/scene/control/MenuItem;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    sget-object v2, Ljavafx/scene/control/MenuItem;->MENU_VALIDATION_EVENT:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MenuItem$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 362
    return-void
.end method
