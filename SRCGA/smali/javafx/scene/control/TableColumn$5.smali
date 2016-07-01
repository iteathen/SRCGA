.class Ljavafx/scene/control/TableColumn$5;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TableColumn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableColumn;->onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;
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
        "Ljavafx/scene/control/TableColumn$CellEditEvent",
        "<TS;TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableColumn;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableColumn;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$5;, "Ljavafx/scene/control/TableColumn$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableColumn;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TableColumn$5;->this$0:Ljavafx/scene/control/TableColumn;

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
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableColumn$5;, "Ljavafx/scene/control/TableColumn$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableColumn$5;->this$0:Ljavafx/scene/control/TableColumn;

    iget-object v1, v1, Ljavafx/scene/control/TableColumn;->eventHandlerManager:Lcom/sun/javafx/event/EventHandlerManager;

    invoke-static {}, Ljavafx/scene/control/TableColumn;->editCancelEvent()Ljavafx/event/EventType;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TableColumn$5;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 531
    return-void
.end method
