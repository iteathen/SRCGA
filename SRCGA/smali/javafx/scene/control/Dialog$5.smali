.class Ljavafx/scene/control/Dialog$5;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Dialog;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/control/DialogEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Dialog;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Dialog;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$5;, "Ljavafx/scene/control/Dialog$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Dialog;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Dialog$5;->this$0:Ljavafx/scene/control/Dialog;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Dialog$5;, "Ljavafx/scene/control/Dialog$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Dialog$5;->this$0:Ljavafx/scene/control/Dialog;

    invoke-static {v1}, Ljavafx/scene/control/Dialog;->access$100(Ljavafx/scene/control/Dialog;)Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/DialogEvent;->DIALOG_HIDING:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Dialog$5;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 927
    return-void
.end method
