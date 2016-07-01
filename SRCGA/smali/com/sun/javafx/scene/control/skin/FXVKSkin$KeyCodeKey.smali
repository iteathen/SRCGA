.class Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;
.super Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/FXVKSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyCodeKey"
.end annotation


# instance fields
.field private code:Ljavafx/scene/input/KeyCode;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;)V
    .locals 10

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;
    move-object v1, p1

    move-object v2, p2

    .local v2, "letter":Ljava/lang/String;
    move-object v3, p3

    .local v3, "c":Ljava/lang/String;
    move-object v4, p4

    .local v4, "code":Ljavafx/scene/input/KeyCode;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    .line 842
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    .line 843
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->code:Ljavafx/scene/input/KeyCode;

    .line 844
    sget-boolean v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkLookup:Z

    if-eqz v5, :cond_0

    .line 845
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->setId(Ljava/lang/String;)V

    .line 847
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V
    .locals 11

    .prologue
    .line 838
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":Ljavafx/scene/input/KeyCode;
    move-object/from16 v5, p5

    .local v5, "x4":Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;)V

    return-void
.end method


# virtual methods
.method protected sendKeyEvents()V
    .locals 14

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/FXVK;->getAttachedNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 851
    .local v1, "target":Ljavafx/scene/Node;
    move-object v2, v1

    instance-of v2, v2, Ljavafx/event/EventTarget;

    if-eqz v2, :cond_0

    .line 852
    move-object v2, v1

    new-instance v3, Ljavafx/scene/input/KeyEvent;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    sget-object v6, Ljavafx/scene/input/KeyEvent;->CHAR_UNDEFINED:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->chars:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->code:Ljavafx/scene/input/KeyCode;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Ljavafx/scene/input/KeyEvent;-><init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->fireEvent(Ljavafx/event/Event;)V

    .line 853
    move-object v2, v1

    new-instance v3, Ljavafx/scene/input/KeyEvent;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->chars:Ljava/lang/String;

    const-string v7, ""

    sget-object v8, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Ljavafx/scene/input/KeyEvent;-><init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->fireEvent(Ljavafx/event/Event;)V

    .line 854
    move-object v2, v1

    new-instance v3, Ljavafx/scene/input/KeyEvent;

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    sget-object v6, Ljavafx/scene/input/KeyEvent;->CHAR_UNDEFINED:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->chars:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->code:Ljavafx/scene/input/KeyCode;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;->this$0:Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Ljavafx/scene/input/KeyEvent;-><init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->fireEvent(Ljavafx/event/Event;)V

    .line 856
    :cond_0
    return-void
.end method
