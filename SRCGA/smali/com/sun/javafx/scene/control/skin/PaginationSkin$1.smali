.class Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;
.super Ljava/lang/Object;
.source "PaginationSkin.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/PaginationSkin;
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
        "Ljavafx/event/ActionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V
    .locals 4

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;
    move-object v1, p1

    .local v1, "t":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$200(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V

    .line 453
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$302(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Ljavafx/animation/Timeline;)Ljavafx/animation/Timeline;

    move-result-object v2

    .line 455
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$400(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$500(Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V

    .line 457
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$402(Lcom/sun/javafx/scene/control/skin/PaginationSkin;Z)Z

    move-result v2

    .line 459
    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/event/ActionEvent;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$1;->handle(Ljavafx/event/ActionEvent;)V

    return-void
.end method
