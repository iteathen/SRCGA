.class Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;
.super Ljava/lang/Object;
.source "MenuBarSkin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V
    .locals 4

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/scene/layout/HBox;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 420
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/scene/layout/HBox;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljavafx/scene/control/MenuButton;

    if-eqz v1, :cond_0

    .line 422
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$100(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$200(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V

    .line 424
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$300(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;I)V

    .line 425
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$000(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/scene/layout/HBox;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$402(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-result-object v1

    .line 426
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Menu;

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$502(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/Menu;)Ljavafx/scene/control/Menu;

    move-result-object v1

    .line 427
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$400(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$600(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$200(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V

    goto :goto_0
.end method
