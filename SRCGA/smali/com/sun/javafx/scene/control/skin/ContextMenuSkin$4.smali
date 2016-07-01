.class Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;
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
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;->val$popupMenu:Ljavafx/scene/control/ContextMenu;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$4;->val$popupMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v4}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 111
    .local v2, "cmContent":Ljavafx/scene/Node;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    if-eqz v4, :cond_0

    .line 112
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getItemsContainer()Ljavafx/scene/layout/VBox;

    move-result-object v4

    move-object v3, v4

    .line 113
    .local v3, "accMenu":Ljavafx/scene/Node;
    move-object v4, v3

    sget-object v5, Ljavafx/scene/AccessibleAttribute;->VISIBLE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 115
    .end local v3    # "accMenu":Ljavafx/scene/Node;
    :cond_0
    return-void
.end method
