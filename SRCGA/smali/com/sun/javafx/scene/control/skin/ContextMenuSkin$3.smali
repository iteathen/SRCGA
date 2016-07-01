.class Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;
.super Ljava/lang/Object;
.source "ContextMenuSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;-><init>(Ljavafx/scene/control/ContextMenu;)V
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
        "Ljavafx/event/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

.field final synthetic val$popupMenu:Ljavafx/scene/control/ContextMenu;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;Ljavafx/scene/control/ContextMenu;)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;->val$popupMenu:Ljavafx/scene/control/ContextMenu;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;->val$popupMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 99
    .local v2, "cmContent":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->requestFocus()V

    .line 101
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/scene/layout/Region;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 102
    return-void
.end method
