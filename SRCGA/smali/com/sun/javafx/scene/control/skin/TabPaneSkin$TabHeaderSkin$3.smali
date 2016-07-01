.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;
.super Ljava/lang/Object;
.source "TabPaneSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V
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
        "Ljavafx/scene/input/MouseEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V
    .locals 5

    .prologue
    .line 1174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;->val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 1174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/MouseEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;->handle(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 1176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v4

    move-object v2, v4

    .line 1177
    .local v2, "tab":Ljavafx/scene/control/Tab;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;

    move-object v3, v4

    .line 1178
    .local v3, "behavior":Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->canCloseTab(Ljavafx/scene/control/Tab;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1179
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TabPaneBehavior;->closeTab(Ljavafx/scene/control/Tab;)V

    .line 1180
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 1182
    :cond_0
    return-void
.end method
