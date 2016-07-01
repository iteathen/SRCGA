.class Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$1;
.super Ljava/lang/Object;
.source "MenuButtonSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;-><init>(Ljavafx/scene/control/MenuButton;)V
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
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$1;
    move-object v1, p1

    .local v1, "t":Ljavafx/event/Event;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuButton;

    move-object v2, v3

    .line 61
    .local v2, "menuButton":Ljavafx/scene/control/MenuButton;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "autoHide"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "autoHide"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    :cond_0
    return-void
.end method
