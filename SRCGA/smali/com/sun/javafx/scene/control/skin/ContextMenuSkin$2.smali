.class Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;
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
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;->val$popupMenu:Ljavafx/scene/control/ContextMenu;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;->val$popupMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 85
    .local v2, "cmContent":Ljavafx/scene/Node;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 86
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->requestFocus()V

    .line 87
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    if-eqz v4, :cond_0

    .line 88
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getItemsContainer()Ljavafx/scene/layout/VBox;

    move-result-object v4

    move-object v3, v4

    .line 89
    .local v3, "accMenu":Ljavafx/scene/Node;
    move-object v4, v3

    sget-object v5, Ljavafx/scene/AccessibleAttribute;->VISIBLE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 93
    .end local v3    # "accMenu":Ljavafx/scene/Node;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/scene/layout/Region;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/layout/Region;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 94
    return-void
.end method
