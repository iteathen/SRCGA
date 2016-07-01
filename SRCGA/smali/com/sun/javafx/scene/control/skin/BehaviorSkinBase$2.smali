.class Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;
.super Ljava/lang/Object;
.source "BehaviorSkinBase.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
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
        "Ljavafx/scene/input/ContextMenuEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/ContextMenuEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;->handle(Ljavafx/scene/input/ContextMenuEvent;)V

    return-void
.end method

.method public handle(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;"
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/ContextMenuEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;->this$0:Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->access$000(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->contextMenuRequested(Ljavafx/scene/input/ContextMenuEvent;)V

    .line 108
    return-void
.end method
