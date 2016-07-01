.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
.super Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputKey"
.end annotation


# instance fields
.field chars:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)V
    .locals 4

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)V

    .line 727
    move-object v2, v0

    const-string v3, ""

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->chars:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V
    .locals 5

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)V

    return-void
.end method


# virtual methods
.method protected press()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method protected release()V
    .locals 3

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1500()Lcom/sun/javafx/scene/control/skin/FXVK;

    move-result-object v2

    if-eq v1, v2, :cond_0

    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1600()Ljavafx/stage/Popup;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1600()Ljavafx/stage/Popup;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/stage/Popup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    .line 740
    :goto_0
    return-void

    .line 735
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->sendKeyEvents()V

    .line 736
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    # getter for: Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1500()Lcom/sun/javafx/scene/control/skin/FXVK;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 737
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)V

    .line 739
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->release()V

    .line 740
    goto :goto_0
.end method

.method protected sendKeyEvents()V
    .locals 14

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVK;->getAttachedNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 744
    .local v1, "target":Ljavafx/scene/Node;
    move-object v2, v1

    instance-of v2, v2, Ljavafx/event/EventTarget;

    if-eqz v2, :cond_0

    .line 745
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->chars:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 746
    move-object v2, v1

    new-instance v3, Ljavafx/scene/input/KeyEvent;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->chars:Ljava/lang/String;

    const-string v7, ""

    sget-object v8, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Ljavafx/scene/input/KeyEvent;-><init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->fireEvent(Ljavafx/event/Event;)V

    .line 749
    :cond_0
    return-void
.end method
