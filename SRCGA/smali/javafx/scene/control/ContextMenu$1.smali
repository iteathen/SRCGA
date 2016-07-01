.class Ljavafx/scene/control/ContextMenu$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ContextMenu;
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
        "Ljavafx/event/ActionEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ContextMenu;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ContextMenu;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ContextMenu$1;->this$0:Ljavafx/scene/control/ContextMenu;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ContextMenu$1;->this$0:Ljavafx/scene/control/ContextMenu;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu$1;
    const-string v1, "onAction"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ContextMenu$1;->this$0:Ljavafx/scene/control/ContextMenu;

    sget-object v2, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu$1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/ContextMenu;->access$000(Ljavafx/scene/control/ContextMenu;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 162
    return-void
.end method
