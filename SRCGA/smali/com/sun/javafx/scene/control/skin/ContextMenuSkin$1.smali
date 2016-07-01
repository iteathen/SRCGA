.class Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;
.super Ljava/lang/Object;
.source "ContextMenuSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
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
        "Ljavafx/scene/input/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;->handle(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-eq v3, v4, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/scene/layout/Region;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/layout/Region;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    move-object v2, v3

    .line 68
    .local v2, "code":Ljavafx/scene/input/KeyCode;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$5;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 71
    goto :goto_0

    .line 70
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;)Ljavafx/scene/control/ContextMenu;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->hide()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
